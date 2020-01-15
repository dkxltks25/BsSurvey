<%--
  Created by IntelliJ IDEA.
  User: bagjaehong
  Date: 2020/01/11
  Time: 4:26 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="CssLoader.jsp"/>

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
<%
    //유저 아이디 등록
    String UserId = (String)session.getAttribute("userid");
    if(UserId == null){
%>

<div class = "DeskTopLogin">
    <jsp:include page="login.jsp"/>
</div>

<%
    }else{
        %>
            <jsp:include page="Main.jsp"/>
        <%
    }
%>