<%@ page import="java.sql.ResultSet" %>
<%@ page import="Survey.SurveyDAO" %>
<%@ page import="Admin.AdminDAO" %><%--
  Created by IntelliJ IDEA.
  User: bagjaehong
  Date: 2020/01/14
  Time: 6:36 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if(UserId != null){

%>
<section class ="mainSurveyList">
    <%
        ResultSet rs = new AdminDAO().AdminSurveyList(UserId);
        while(rs.next()){
            %>
                <div class = "Item">
                    <div>
                        <div class="card hoverable">
                            <div class="card-image">
                                <img src="https://lh3.google.com/u/0/d/1PLdIYQK5PK1IT358yYzfMA0lRSHJ5o8UN4Nru8w2nMY=w416-h312-p-iv6">
                            </div>
                            <div class="card-content">
                               <blockquote>
                                   <p>
                                       <h5><%=rs.getString(4)%></h5>
                                   <%=rs.getString(5)%>
                                   </p>
                               </blockquote>
                            </div>
                            <div class="card-action pulse">
                                <a href="#">This is a link</a>
                            </div>
                        </div>
                    </div>`
                </div>
            <%
        }
    %>

</section >

    <%
        }
        %>


<script>

    document.addEventListener('DOMContentLoaded', function() {
        var elems = document.querySelectorAll('.datepicker');
        console.log(elems);
        console.dir(M);
        var instances = M.Datepicker.init(elems);
        console.log(instances);
    });
</script>

