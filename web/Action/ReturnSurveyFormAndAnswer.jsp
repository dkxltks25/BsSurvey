<%--
  Created by IntelliJ IDEA.
  User: bagjaehong
  Date: 2020/01/18
  Time: 2:19 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="Admin.AdminDAO" %>

<%
    String SurveyId = request.getParameter("id");
    System.out.println(SurveyId);
    ResultSet rs = new AdminDAO().StaticListData(SurveyId);
    int i = 0;
    JSONObject jobj = new JSONObject();
    JSONArray jarr = new JSONArray();
    while(rs.next()){
        if(i == 0) {
            jobj.put("SurveyForm", rs.getString(14));
            System.out.println(rs.getString(14));
        }

        jarr.add(rs.getString(15));

        i++;
    }
    jobj.put("UserRes",jarr);
    response.setContentType("application/json");
    String A = jobj.toJSONString();
    out.print(A);

    System.out.println(A);
%>