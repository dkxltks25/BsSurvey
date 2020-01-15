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
                if(!UserId.equals("")){
            %>
            <form>
                <div class="input-field">
                    <input id="search" type="search" required>
                    <label class="label-icon" for="search"><i class="material-icons">search</i></label>
                    <i class="material-icons">close</i>
                </div>
            </form>

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
        <%
            if(!UserId.equals("")){
        %>
            <%@include file="AdminMain.jsp"%>

        <%
            }else{
        %>
        <%@include file="AdminLogin.jsp"%>
        <%
            }
        %>
    </section>

<%
    if(!UserId.equals("")){
        %>
            <div class="fixed-action-btn">
                <a class="btn-floating btn-large red">
                    <i class="large material-icons">mode_edit</i>
                </a>
                <ul>
                    <li><a class="btn-floating red"><i class="material-icons">insert_chart</i></a></li>
                    <li><a class="btn-floating yellow darken-1"><i class="material-icons">format_quote</i></a></li>
                    <li><a class="btn-floating green"><i class="material-icons">publish</i></a></li>
                    <li><a class="btn-floating blue" href="/Admin/Survey"><i class="material-icons">add</i></a></li>
                </ul>
            </div>
        <%
    }else{
        %>

        <%
    }
%>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var elems = document.querySelectorAll('.fixed-action-btn');
        var instances = M.FloatingActionButton.init(elems, {
            direction: 'center'
        });
    });
</script>
</body>
</html>
