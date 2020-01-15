<%@ page import="Survey.SurveyDAO" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section class ="mainSurveyList">
    <%
        String UserId = (String)session.getAttribute("userid");
        ResultSet rs = new SurveyDAO().UserSurveyList(UserId);
        while(rs.next()){
                String able = rs.getString("able");
                String ClassName = "";
                if(able.equals("A")){
                    ClassName = "disable";
                }
            %>
            <div class = "Item <%=ClassName%>">
                <div>
                    <div class="card hoverable">
                        <div class="card-image">
                            <img src="https://lh3.google.com/u/0/d/1PLdIYQK5PK1IT358yYzfMA0lRSHJ5o8UN4Nru8w2nMY=w416-h312-p-iv6">
                        </div>
                        <div class="card-content">
                            <p>
                                <h5><%=rs.getString("suv_name")%></h5>
                               <%=rs.getString("ST")%>부터 참가 할 수 있으며 <%=rs.getString("FT")%>일날 마무리 됩니다.
                            <p>
                        </div>
                        <div class="card-action pulse">
                            <a class =<%=ClassName%> href="/survey/user?SurveyIdx=<%=rs.getString("suv_suvid")%>">설문조사 참여</a>
                        </div>
                    </div>
                </div>
            </div>
            <%
        }
    %>
    <div class = "Item">
        <div>
            <div class="card hoverable">
                <div class="card-image">
                    <img src="https://lh3.google.com/u/0/d/1PLdIYQK5PK1IT358yYzfMA0lRSHJ5o8UN4Nru8w2nMY=w416-h312-p-iv6">
                </div>
                <div class="card-content">
                   <p>2020년 1월 1일 부터 참가 할 수 있으며 1월 7일날 마무리 됩니다.</p>
                </div>
                <div class="card-action pulse">
                    <a href="#">This is a link</a>
                </div>
            </div>
        </div>
    </div>
    <div class = "Item">
        <div>
            <div class="card hoverable">
                <div class="card-image">
                    <img src="https://lh3.google.com/u/0/d/1PLdIYQK5PK1IT358yYzfMA0lRSHJ5o8UN4Nru8w2nMY=w416-h312-p-iv6">
                </div>
                <div class="card-content">
                    <p>2020년 1월 1일 부터 참가 할 수 있으며 1월 7일날 마무리 됩니다.</p>
                </div>
                <div class="card-action pulse">
                    <a href="#">This is a link</a>
                </div>
            </div>
        </div>
    </div>
    <div class = "Item">
        <div>
            <div class="card hoverable">
                <div class="card-image">
                    <img src="https://lh3.google.com/u/0/d/1PLdIYQK5PK1IT358yYzfMA0lRSHJ5o8UN4Nru8w2nMY=w416-h312-p-iv6">
                </div>
                <div class="card-content">
                    <p>2020년 1월 1일 부터 참가 할 수 있으며 1월 7일날 마무리 됩니다.</p>
                </div>
                <div class="card-action pulse">
                    <a href="#">This is a link</a>
                </div>
            </div>
        </div>
    </div>
    <div class = "Item">
        <div>
            <div class="card hoverable">
                <div class="card-image">
                    <img src="https://lh3.google.com/u/0/d/1PLdIYQK5PK1IT358yYzfMA0lRSHJ5o8UN4Nru8w2nMY=w416-h312-p-iv6">
                </div>
                <div class="card-content">
                    <p>2020년 1월 1일 부터 참가 할 수 있으며 1월 7일날 마무리 됩니다.</p>
                </div>
                <div class="card-action pulse">
                    <a href="#">This is a link</a>
                </div>
            </div>
        </div>
    </div>
    <div class = "Item">
        <div>
            <div class="card hoverable">
                <div class="card-image">
                    <img src="https://lh3.google.com/u/0/d/1PLdIYQK5PK1IT358yYzfMA0lRSHJ5o8UN4Nru8w2nMY=w416-h312-p-iv6">
                </div>
                <div class="card-content">
                    <p>2020년 1월 1일 부터 참가 할 수 있으며 1월 7일날 마무리 됩니다.</p>
                </div>
                <div class="card-action pulse">
                    <a href="#">This is a link</a>
                </div>
            </div>
        </div>
    </div>
    <div class = "Item">
        <div>
            <div class="card hoverable">
                <div class="card-image">
                    <img src="https://lh3.google.com/u/0/d/1PLdIYQK5PK1IT358yYzfMA0lRSHJ5o8UN4Nru8w2nMY=w416-h312-p-iv6">
                </div>
                <div class="card-content">
                    <p>2020년 1월 1일 부터 참가 할 수 있으며 1월 7일날 마무리 됩니다.</p>
                </div>
                <div class="card-action pulse">
                    <a href="#">This is a link</a>
                </div>
            </div>
        </div>
    </div>




</section>