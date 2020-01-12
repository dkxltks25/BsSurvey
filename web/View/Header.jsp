<%--
  Created by IntelliJ IDEA.
  User: bagjaehong
  Date: 2020/01/11
  Time: 4:26 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="CssLoader.jsp"/>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

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
<div class = "DeskTopLogin">
    <jsp:include page="login.jsp"></jsp:include>
</div>
