<%--
  Created by IntelliJ IDEA.
  User: bagjaehong
  Date: 2020/01/14
  Time: 6:53 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<script></script>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../lib/styles.css"/>

    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <link href="https://cdn.muicss.com/mui-latest/css/mui.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.muicss.com/mui-latest/js/mui.min.js"></script>
    <!--Materal icon-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<div class = "index__Contanier_wrap">
    <div class = "index__Container">
    </div>

</div>
</body>
<script src ="../lib/Suvey.js"></script>
<script>
    const container = document.querySelectorAll(".index__Container")[0];
    console.dir(container);
    const survey = new Survey(container);
    survey.createSurvey();
</script>
</html>
