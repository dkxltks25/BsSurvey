<%@ page import="Survey.SurveyDAO" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.io.FileOutputStream" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.sql.Blob" %>
<%@ page import="org.apache.axis.encoding.Base64" %>
<%@ page import="jdk.internal.util.xml.impl.Input" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <link href="https://cdn.muicss.com/mui-latest/css/mui.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.muicss.com/mui-latest/js/mui.min.js"></script>
    <!--Materal icon-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        html,
        body {
            height: 100%;
        }

        body {
            display: table;
            margin: 0px auto;
            background-color: #efefef;
        }

        .containerWrap {
            display: table-cell;
            vertical-align: middle;
            height: 95%;
        }

        .container {
            min-width: 800px;
            padding:40px 40px 80px 40px;
        }
    </style>
</head>

<body>
<%
    String idx = request.getParameter("SurveyIdx");
    ResultSet rs = new SurveyDAO().GetSurveyItem(idx);
    if(rs.next()){
        InputStream blob = rs.getBinaryStream("suv_item");

        byte [] t = blob.readAllBytes();
        String str2 = new String(t,"UTF-8");
         %>
            <script>
                var collection = <%=str2%>;
                collection = JSON.parse(collection);
            </script>
        <%
    }

%>

<div class="containerWrap">
    <div class="container mui-panel">
        <div class = "Item">
            <blockquote>
                설문지명:2020학년도 신입생 대상<br>
                설문지 실시일 :2020-01-15 ~ 2020-01-22<br>
                해당 내용은 자동 저장되어 있으니 전송 전까지 자유롭게 작성이 가능합니다.
            </blockquote>
        </div>
        <div class="SurveyBottom">
            <button class="btn waves-effect waves-light" type="button" id = "saveBtn"name="click">설문지 저장
                <i class="material-icons right">send</i>
            </button>
            <button class="btn waves-effect waves-light leftBtn" type="button" name="click">이전작성보기
                <i class="material-icons right">navigate_before</i>
            </button>
            <button class="btn waves-effect waves-light RightBtn" type="button" name="click">작성완료
                <i class="material-icons right">navigate_next</i>
            </button>
        </div>
    </div>
</div>


<script src="../View/UserForm.js"></script>
<script>
    const container = document.querySelectorAll('.container')[0];
    console.dir(collection)
    const userform = new UserForm(container, collection);
    userform.init();
</script>
</body>

</html>