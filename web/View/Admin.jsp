<%--
  Created by IntelliJ IDEA.
  User: bagjaehong
  Date: 2020/01/12
  Time: 11:50 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="CssLoader.jsp"%>
<html>
<head>
    <title>Title</title>

</head>
<body>
<%
    String UserId = "12345";
%>
    <nav>
        <div class="nav-wrapper waves-green  ">
            <a href="#" class="brand-logo center">BsKsAdmin</a>
            <%
                if(UserId.equals("")){
            %>
            <%
                }
                else{
            %>

            <%
                }
            %>
        </div>
    </nav>
    <section>
       <%@include file="AdminLogin.jsp"%>
    </section>
</body>
</html>
