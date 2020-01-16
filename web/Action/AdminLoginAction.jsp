<%@ page import="Admin.AdminDAO" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2020-01-16
  Time: 오전 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String AdminId = request.getParameter("AdminId");
    String password = request.getParameter("password");
    int Result = new AdminDAO().UserLogin(AdminId,password);
    PrintWriter script = response.getWriter();
    if(Result == 0 || Result == -1){
        script.println("<script>");
        script.println("alert('아이디 혹은 비밀번호가 잘못 되었습니다')");
        script.println("location.href='/admin'");
        script.println("</script>");

    }else{
        session.setAttribute("adm_id",AdminId);
        script.println("<script>");
        script.println("location.href='/admin'");

        script.println("</script>");

    }
%>