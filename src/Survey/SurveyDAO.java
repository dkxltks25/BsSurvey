package Survey;
import Connection.ConnectionDAO;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import static java.lang.System.out;

public class SurveyDAO {
    private Connection conn;
    private PreparedStatement pstmt1;
    private ResultSet rs;

    public ResultSet UserSurveyList(String StudentNumber){
        String Sql = "select * from sasu_std as S \n" +
                "\tinner join sasu_suvdept as D\t\n" +
                "        on S.stu_dept = D.Dept_name \n" +
                "\t\t\tinner join sasu_suv as SU\n" +
                "\t\t\t\ton SU.suv_suvId = D.suv_id\n" +
                "\t\t\t\twhere S.stu_stuno = ?";
        try{
            conn = new ConnectionDAO().GetConnection();
            pstmt1 = conn.prepareStatement(Sql);
            pstmt1.setString(1,StudentNumber);
            rs = pstmt1.executeQuery();
        }catch (Exception e){
            out.println(e.toString());
            rs = null;
        }finally {
            conn = null;
        }
        return rs;
    }
    public ResultSet GetSurveyItem(String SurveyId){
        String Sql ="select * from sasu_suv As SU\n" +
                "\tinner join sasu_suvitem AS SI\n" +
                "\t\ton SU.SUV_SUVID = SI.suv_id\n" +
                "\t\t\twhere SI.SUV_Id = ?";
        try{
            conn = new ConnectionDAO().GetConnection();
            pstmt1 = conn.prepareStatement(Sql);
            pstmt1.setString(1,SurveyId);
            rs = pstmt1.executeQuery();
        }catch (Exception e){
            out.println(e.toString());
            rs = null;
        }finally {
            conn = null;
        }
        return rs;
    }

}
