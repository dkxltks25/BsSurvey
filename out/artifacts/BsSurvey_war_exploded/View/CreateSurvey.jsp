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
<nav>
    <div class="nav-wrapper  darken-4">
        <a href="" class="brand-logo left">설문지 이름</a>
        <ul  class="right hide-on-med-and-down">
            <li><button class ="btn waves-effect waves-light RightBtn savebtn">미리보기</button>&nbsp</li>&nbsp
            <li><button class ="btn waves-effect waves-light RightBtn savebtn">저장
            </button></li>
        </ul>
        <div class="nav-content #311b92 deep-purple darken-4">

        </div>
    </div>
</nav>
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

    const [savebtn,prviewbtn] = document.querySelectorAll(".savebtn");
    savebtn.addEventListener('click',()=>{
        const Collection = survey.SaveSurvey();
        console.log(Collection);

        //location.href = `/Action/SaveSurveyAction.jsp?Collection=${Collection}`;

        //adm_id,dept_name,suv_name,suv_descript,suv_stime,suv_ftime
        const Form = document.createElement('form');
        Form.setAttribute("charset", "UTF-8");
        Form.setAttribute("method", "Post");
        Form.setAttribute("action", "/Action/SaveSurveyAction.jsp");

        const hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "suv_name");
        hiddenField.setAttribute("value", Collection.Title.Title);

        const hiddenField1 = document.createElement("input");
        hiddenField1.setAttribute("type", "hidden");
        hiddenField1.setAttribute("name", "suv_descrip");
        hiddenField1.setAttribute("value", Collection.Title.Descrip);

        const hiddenField2 = document.createElement("input");
        hiddenField2.setAttribute("type", "hidden");
        hiddenField2.setAttribute("name", "Collection");
        hiddenField2.setAttribute("value", JSON.stringify(Collection));


        Form.appendChild(hiddenField);
        Form.appendChild(hiddenField1);
        Form.appendChild(hiddenField2);

        document.body.appendChild(Form);
        Form.submit();

    });
    prviewbtn.addEventListener('click',()=>{
        console.log(1);
    })
</script>
</html>
