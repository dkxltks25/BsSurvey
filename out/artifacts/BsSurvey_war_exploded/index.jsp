<%--
  Created by IntelliJ IDEA.
  User: bagjaehong
  Date: 2020/01/11
  Time: 4:23 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="View/UserAgenta.jsp"%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    if(!ua.equals("mobile")){
      %>
        <jsp:include page="View/Header.jsp"/>
      <%
    }else{
      %>
        <jsp:include page="MobileView/Header.jsp"/>
      <%
    }
  %>


  </body>
</html>
