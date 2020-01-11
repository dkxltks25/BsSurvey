<%--
  Created by IntelliJ IDEA.
  User: bagjaehong
  Date: 2020/01/11
  Time: 4:26 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<jsp:include page="CssLoader.jsp"/>
<%@include file="UserAgenta.jsp"%>

<!-- 데스크톱 헤더 -->
<%
    if(!ua.equals("mobile"))
    {
%>
 <nav>
     <div class="nav-wrapper #311b92 deep-purple darken-4">
         <a href="" class="brand-logo right">부산경상대학교</a>
         <ul  class="left hide-on-med-and-down">
             <li><a href="#">login</a></li>
             <li><a href="badges.html">학교사이트이동</a></li>
             <li><a href="collapsible.html">학사행정서비스 이동</a></li>
         </ul>
         <div class="nav-content #311b92 deep-purple darken-4">

         </div>
     </div>

 </nav>
<div id = "login">
    <jsp:include page="login.jsp"></jsp:include>
</div>
<!--모바일 헤더 -->
<%
    }
    else{
        %>
<nav class="nav-extended">
    <div class="nav-wrapper #311b92 deep-purple darken-4">
        <a href="#" class="brand-logo">Logo</a>
        <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="sass.html">Sass</a></li>
            <li><a href="badges.html">Components</a></li>
            <li><a href="collapsible.html">JavaScript</a></li>
        </ul>
    </div>

</nav>
<jsp:include page="login.jsp"/>
<ul class="sidenav" id="mobile-demo">
    <li><a href="sass.html">Sass</a></li>
    <li><a href="badges.html">Components</a></li>
    <li><a href="collapsible.html">JavaScript</a></li>
</ul>
        <%
    }
%>
</body>
</html>
