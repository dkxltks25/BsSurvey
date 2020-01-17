<%@ page import="java.sql.ResultSet" %>
<%@ page import="Admin.AdminDAO" %><%--
  Created by IntelliJ IDEA.
  User: bagjaehong
  Date: 2020/01/17
  Time: 9:38 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/View/CssLoader.jsp"/>
<script src="http://l.bsks.ac.kr/~p201887082/DiliManage/js/jq.js"/>
<script>
    const UserRes = [];
<%
    //10번설문지
    ResultSet rs = new AdminDAO().StaticListData("10");
    int i = 0;
    while(rs.next()){
        if(i == 0){
            %>
            const SurveyItem = <%=rs.getString(14)%>;
            <%
        }
        %>
            UserRes.push(<%=rs.getString(15)%>);
        <%
        i++;
    }
%>
</script>
<html>
<head>
    <title>Title</title>

</head>
<body>
<jsp:include page="/View/CssLoader.jsp"/>
<%
    String UserId = (String)session.getAttribute("adm_id");
    if(UserId == null)
    response.sendRedirect("/admin");

%>
<nav>
    <div class="nav-wrapper waves-green  ">
        <a href="#" class="brand-logo center">BsKsAdmin</a>
        <%
            if(UserId != null){
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
        rs = null;
        rs = new AdminDAO().StaticUserList(UserId);

    %>
    <table class = "card centered" style="width:90%;margin:40px auto">
        <thead>
        <tr>
            <th>설문지번호</th>
            <th>설문지이름</th>
            <th>설문지설명</th>
            <th>참여인원(현재 참여인원/전체인원)</th>
            <th>설문참가 시작일</th>
            <th>설문참가 종료일</th>
            <th>통계보기</th>
        </tr>
        </thead>

        <tbody>
        <%
            String idName = "trid";
             i = 0;
            while(rs.next()){
                i++;
                %>
        <tr class = <%=idName%><%=i%>>
            <td ><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%>/<%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(7)%></td>
            <td data-id="<%=rs.getString(1)%>" data-class ="<%=idName%><%=i%>" class ="dropdownicon"><i class="material-icons" data-id="<%=rs.getString(1)%>" >arrow_drop_down</i> </td>
        </tr>
                <%
            }
        %>
        <tr>
            <td colspan="9">
                <table id ="graphtable" style="width:50%">

                </table>
            </td>
        </tr>
        </tbody>
    </table>
</section>
<%
    if(UserId != null){
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

    const init = ()=>{
        const dropdownIcon = document.querySelectorAll('.dropdownIcon');
        for(let i = 0; i<dropdownIcon.length;i++){
            dropdownIcon[i].addEventListener('click',(e)=>{
                const {target:{dataset:{id}}} = e;
                console.log(id);
                const {target:{dataset:{class:TagId}}} = e;
                const {target}=e;
                if(target.tagName != "TD"){
                    return ;
                }
                $.ajax({
                    url:"/Action/ReturnSurveyFormAndAnswer.jsp",
                    type:"POST",
                    data:{
                        Type:"SurveyId",
                        id:id
                    },
                    dataType:"text",
                    cache:false,
                    success:(data)=>{

                        //replaceAllBackSlash(data.trim())
                        const Temp = data.trim();

                        const SuccesData = JSON.parse(Temp);
                        console.log(SuccesData  );

                        const FormData = JSON.parse(SuccesData.SurveyForm.replace(/\\/g,''));
                        const UserRes = [];
                        SuccesData.UserRes.map((index)=>{
                            UserRes.push(JSON.parse(index));
                        })
                        //const UserRes = JSON.parse(SuccesData.UserRes[0].replace(/\\/g,''));
                       // const b = SuccesData.UserRes.map((index)=>console.log(index));
                        //console.log(b);
                            console.log(UserRes);
                        const {item} = FormData;
                        console.log(item);
                        let tag = "";
                        const tt = document.querySelectorAll(".tbodytbody")[0];
                        if(tt !== undefined){
                            tt.remove();
                        }
                        const tbody = document.createElement('tbody');

                        item.map((index,number)=>{
                            const Option = index.Option;
                            if(Option !==undefined){
                                if(Option == 4){
                                    index.item.Column.map((idx,num)=>{
                                        const Tr = document.createElement('tr');
                                        const Td = document.createElement('td');
                                        const Td1 = document.createElement('td');
                                        Td1.appendChild(document.createTextNode(index.OptionName));

                                        Td.appendChild(document.createTextNode(idx));
                                        Tr.appendChild(Td);
                                        Tr.appendChild(Td1);

                                        tbody.appendChild(Tr);
                                        Tr.addEventListener('click',()=>{
                                            let a = GetData(FormData,UserRes,number+num);
                                            console.log(a);
                                        })
                                    });
                                }else

                                    const Tr = document.createElement('tr');
                                    const Td = document.createElement('td');
                                    Td.appendChild(document.createTextNode(index.Title));

                                    const Td1 = document.createElement('td');
                                    Td1.appendChild(document.createTextNode(index.OptionName));
                                    Tr.appendChild(Td);
                                    Tr.appendChild(Td1);
                                    tbody.appendChild(Tr);
                                    Tr.addEventListener('click',()=>{
                                        let a = GetData(FormData,UserRes,number);
                                        console.log(a);
                                    })
                                }

                            }

                        })
                        const Thead = document.createElement('thead');
                        const aaaa =document.createElement('th');
                        aaaa.appendChild(document.createTextNode('질문명'));
                        Thead.appendChild(aaaa)
                        const  bbbb = document.createElement('th');
                        bbbb.appendChild(document.createTextNode('문항옵션'))
                        Thead.appendChild(bbbb);
                        const TrTag = document.createElement('tr');
                        TrTag.classList.add("tbodytbody");

                        const Table = document.createElement('table');
                        Table.classList.add("centered");
                        Table.style.width="50%";
                        Table.appendChild(Thead);
                        Table.appendChild(tbody);
                        const TdTag = document.createElement('td');
                        TdTag.setAttribute('colspan',9);
                        TdTag.appendChild(Table)
                        TrTag.appendChild(TdTag);
                        const T = document.querySelectorAll("."+TagId)
                        console.dir(T[0].after(TrTag));
                        },
                    error:(e1,e2,e3)=>{
                        console.error(e1);
                        console.error(e2);
                        console.error(e3);
                    }
                })
            })
        }
    }
    const GetData = (FormData, UserRes,returnNumber) => {
        const ExcelData = {};
        const ExcelHeadData = [];
        const ExcelBodyData = [];
        const MultipleChoice = [];
        const { item: SurveyItem } = FormData;

        SurveyItem.map((index, number) => {
            //옵션 구분 0,1 주관식
            const { Option } = index;
            if (Option === "1" || Option === "0") {
                UserRes.map((resIndex, resNumber) => {
                    //주관식에 대한 응답 리스트
                })
                MultipleChoice.push([]);
            } else if(Option !== undefined){
                const {item} = index;
                if(Option === "4"){
                    for(let i = 0;i<item.Column.length;i++){
                        const CreateTempArray = [];
                        for(let j = 0;j<item.Row.length;j++){
                            CreateTempArray.push(0);
                        }
                        MultipleChoice.push(CreateTempArray);
                    }
                }else if(Option !== undefined){
                    const CreateTempArray = [];
                    item.map((_)=>{
                        CreateTempArray.push(0);
                    })
                    MultipleChoice.push(CreateTempArray);
                }
            }
        })
        UserRes.map((index,number)=>{
            index.map((resindex,resnumber)=>{
                //주관식
                if(typeof resindex[0] === 'string'){
                    MultipleChoice[resnumber].push(resindex[0]);
                }else if(resindex.length > 1){
                    resindex.map((idx)=>{
                        MultipleChoice[resnumber][idx]++;
                    })
                }else{
                    MultipleChoice[resnumber][resindex]++;
                }
            })
        })
        console.log(MultipleChoice);
        return MultipleChoice[returnNumber]
    }

    function replaceAllBackSlash(targetStr){
        var index=targetStr.indexOf("\\");
        while(index >= 0){
            targetStr=targetStr.replace("\\","");
            index=targetStr.indexOf("\\");
        }
        return targetStr;
    }
    init();
</script>
</body>
</html>