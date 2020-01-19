<%@ page import="Student.StudentDAO" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: bagjaehong
  Date: 2020/01/15
  Time: 10:50 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String UserId = request.getParameter("StudentNumber");
    String UserPassword = request.getParameter("password");
    int Result = new StudentDAO().UserLogin(UserId,UserPassword);
    PrintWriter script = response.getWriter();
    if(Result == 0 || Result == -1) {
        script.println("<script>");
        script.println("alert('아이디 혹은 패스워드가 잘못되었습니다.')");
        script.println("location.href='/'");
        script.println("</script>");
    }else if(Result == 1){
        script.println("<script>");
        script.println("location.href='/'");
        session.setAttribute("userid",UserId);
        script.println("</script>");
    }

%>