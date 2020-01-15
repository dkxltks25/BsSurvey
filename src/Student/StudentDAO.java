package Student;

import Connection.ConnectionDAO;

import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Base64;

import static java.lang.System.out;

public class StudentDAO {
    private Connection conn;
    private PreparedStatement pstmt1;
    private ResultSet rs;
    public StudentDAO(){

    }
    //SHA512 암호화

    public static String getSHA512(String input){

        String toReturn = null;
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-512");
            digest.reset();
            digest.update(input.getBytes("utf8"));
            toReturn = String.format("%0128x", new BigInteger(1, digest.digest()));
        } catch (Exception e) {
            e.printStackTrace();
        }

        return toReturn.toUpperCase();
    }

    //사용자 로그인
    public int UserLogin(String UserId,String UserPassword){
        String sql = "Select stu_password  from sasu_std where stu_stuNo = ?";
        int result = 0;
        conn = new ConnectionDAO().GetConnection();
        try{
            pstmt1 = conn.prepareStatement(sql);
            pstmt1.setString(1,UserId);
            rs = pstmt1.executeQuery();
            if(rs.next()){
                System.out.println(rs.getString(1));
                System.out.println(getSHA512(UserPassword));
                if(rs.getString(1).equals(getSHA512(UserPassword))){
                    result = 1;
                }else{
                    result = 0;
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


}
