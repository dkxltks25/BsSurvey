package Admin;
import Connection.ConnectionDAO;
import Student.StudentDAO;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import java.sql.ResultSet;
import java.util.Base64;

import static java.lang.System.out;

public class AdminDAO {
    private Connection conn;
    private PreparedStatement pstmt1;
    private ResultSet rs;
    private static String getSha512(String pwd) {
        String encPwd = "";

        try {
            // SHA-512 내장 메소드 사용 어떤식으로 암호화 처리 되는지는 알 수 없음
            MessageDigest md = MessageDigest.getInstance("SHA-512");
            byte[] bytes = pwd.getBytes(Charset.forName("UTF-8"));
            md.update(bytes); // 암호화 처리된 게 bytes 안에 있음(아직)

            // 암호화 처리 된게 문자열로 바뀐다.
            encPwd = Base64.getEncoder().encodeToString(md.digest());


        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return encPwd;
    }
    //사용자 로그인
    public int UserLogin(String UserId,String UserPassword){
        String sql = "Select ADM_pw from SASU_ADM where adm_ID = ?";
        int result = 0;
        conn = new ConnectionDAO().GetConnection();
        try{
            pstmt1 = conn.prepareStatement(sql);
            pstmt1.setString(1,UserId);
            rs = pstmt1.executeQuery();
            if(rs.next()){
                out.println(new StudentDAO().getSHA512(UserPassword));
                out.println(UserId);
                if(rs.getString(1).equals(new StudentDAO().getSHA512(UserPassword))){
                    result = 1;
                }else{
                    return 0;
                }
            }
        }catch (Exception e){
            out.println(e.toString());
            result = -1;
        }finally {
            conn = null;
        }
        return result;
    }
    //관리자 설문지
    public ResultSet AdminSurveyList(String AdminId){
        String Sql = "Select * from sasu_suv where adm_id = ?";
        ResultSet rs = null;
        try{
            conn = new ConnectionDAO().GetConnection();
            pstmt1 = conn.prepareStatement(Sql);
            pstmt1.setString(1,AdminId);
            rs = pstmt1.executeQuery();
        }catch (Exception e){
            out.println(e.toString());
            e.printStackTrace();
            rs = null;
        }finally {
            pstmt1 = null;
            conn = null;
        }
        return rs ;
    }
    //관리자 등급
    public int InsertSurvey(String adm_id,String suv_name,String suv_descript,String Collection){
        String Sql = "insert into sasu_suv (adm_id,dept_name,suv_name,suv_descrip,suv_stime,suv_ftime,datasys1,datasys2,datasys3)\n" +
                "\tvalues(?,null,?,?,now(),now(),now(),'A','dkxltks25:박재홍');";
        int result = 0;
        try{
            conn = new ConnectionDAO().GetConnection();
            pstmt1 = conn.prepareStatement(Sql);
            pstmt1.setString(1,adm_id);
            pstmt1.setString(2,suv_name);
            pstmt1.setString(3,suv_descript);
            pstmt1.executeUpdate();
            result = InsertSurveyItem(Collection);
        }catch (Exception e){
            System.out.println(e.toString());
            e.printStackTrace();
            result = -1;
        }finally {
            conn = null;
        }
        return result;
    }
    private String RecentSurveyId(){
        String Sql = "select SUV_SUVID from sasu_suv order by suv_suvid desc limit 1;";
        String id = "";
        try{
            conn = new ConnectionDAO().GetConnection();
            PreparedStatement pstmt2 = conn.prepareStatement(Sql);
            rs = pstmt2.executeQuery();
            if(rs.next()){
                id =  rs.getString(1);
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            conn = null;
        }
        return id;
    }
    public int InsertSurveyItem(String Collection){

        String id = RecentSurveyId();
        String Sql = "insert into sasu_suvItem (suv_id,suv_item) values ( ? ,'"+Collection.replace("\'", "\''").replace("\"", "\\\"")+"')";
        int result = 0;
        try{
            conn = new ConnectionDAO().GetConnection();
            pstmt1 =  conn.prepareStatement(Sql);
            pstmt1.setString(1,id);
            System.out.println(RecentSurveyId());
            pstmt1.executeUpdate();
            result = 1;
        }catch (Exception e){
            e.printStackTrace();
            result = -1;
        }finally {
            pstmt1 = null;
            conn= null;
        }
        System.out.println(result);
        return result;
    }

    public ResultSet StaticListData(String SurveyId){
        String Sql = "Select SU.*,SI.*,CONVERT(SI.SUV_ITEM USING UTF8),CONVERT(USERRES_RES USING utf8) from sasu_suv AS SU \n" +
                "\tinner join sasu_suvitem as SI\n" +
                "\t\ton SU.SUV_SUVID = SI.SUV_ID \n" +
                "\t\t\tinner join sasu_usrres as SR \n" +
                "\t\t\t\ton SI.SUV_ID = SR.SUV_ID where SUV_SUVID = ?";
        ResultSet rs = null ;
        try{
            conn = new ConnectionDAO().GetConnection();
            pstmt1 = conn.prepareStatement(Sql);
            pstmt1.setString(1,SurveyId);
            rs = pstmt1.executeQuery();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            conn = null;
        }
        return rs;
    }

    public ResultSet StaticUserList(String admin){
        String Sql = "SELECT SS.SUV_SUVID,SS.SUV_NAME,SS.SUV_DESCRIP,COUNT(if(SUR.USERRES_STUNO is not null,1,null)) as RES,COUNT(if(SUR.USERRES_STUNO is null,1,null)) as A ,\n" +
                "\tSS.SUV_STIME,SS.SUV_FTIME FROM SASU_SUV AS SS\t\n" +
                "\tinner join SASU_SUVDEPT AS SSD\n" +
                "\t\tON SS.SUV_SUVID = SSD.SUV_ID\n" +
                "\tinner join SASU_STd AS ST\n" +
                "\t\tON ST.STU_DEPT = SSD.DEPT_NAME\n" +
                "\tleft join SASU_USRRES AS SUR\n" +
                "\t\tON SUR.USERRES_STUNO = ST.STU_STUNO AND SUR.SUV_ID = SS.SUV_SUVID\n" +
                "        where ss.Adm_id = ?" +
                "        group by SS.SUV_SUVID;\n" +
                "\t;";
        ResultSet rs = null;
        try{
            conn = new ConnectionDAO().GetConnection();
            pstmt1 = conn.prepareStatement(Sql);
            pstmt1.setString(1,admin);
            rs = pstmt1.executeQuery();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            pstmt1 = null;
            conn = null;
        }
        return rs;
    }
}
