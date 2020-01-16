<%@ page import="Survey.SurveyDAO" %><%--
  Created by IntelliJ IDEA.
  User: bagjaehong
  Date: 2020/01/17
  Time: 3:30 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String Answer = request.getParameter("Answer");
    String SurveyId = request.getParameter("SurveyId");
    String UserId = (String)session.getAttribute("userid");
    int result = new SurveyDAO().InsertUserResponse(UserId,SurveyId,Answer);
    if(result == 1){
        %>
            <script>
                alert("정상적으로 처리되었습니다.");
                location.href= "/";
            </script>
        <%
    }else{
        %>
            <script>
                alert("데이터베이스 오류, 관리자에게 문의하세요");
                location.history.back();
            </script>
        <%
    }
%>