package Admin;
import Connection.ConnectionDAO;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
        String sql = "Select ADM_pw from SASU_ADM where adm_ADMID = ?";
        int result = 0;
        conn = new ConnectionDAO().GetConnection();
        try{
            pstmt1 = conn.prepareStatement(sql);
            pstmt1.setString(1,UserId);
            rs = pstmt1.executeQuery();
            if(rs.next()){
                if(rs.getString(1).equals(getSha512(UserPassword))){
                    result = 1;
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
        String Sql = "Select * from sasu_suv where adm_id = 'dkxltks25';";
    }
}
