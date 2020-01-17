<%@ page import="Admin.AdminDAO" %><%--
  Created by IntelliJ IDEA.
  User: bagjaehong
  Date: 2020/01/16
  Time: 11:48 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8");%>

<%
    String Collection = request.getParameter("Collection");
    out.println(Collection);

    String adm_id = (String)session.getAttribute("adm_id");
    String dept_name ;
    String suv_name = request.getParameter("suv_name");
    String suv_descript = request.getParameter("suv_descrpt");
    String suv_stime;
    String suv_ftime;

    int result =  new AdminDAO().InsertSurvey(adm_id,suv_name,suv_descript,Collection);
    if(result == 1){
        %>
            <script>
                alert("등록완료");
                location.href = "/admin";
            </script>
        <%
    }
%>
