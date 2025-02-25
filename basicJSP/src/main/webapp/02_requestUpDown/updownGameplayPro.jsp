<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>

<%
    // 입력한 값 가져오기
    int me = Integer.parseInt(request.getParameter("me"));
    int com = (Integer) session.getAttribute("com");

    String result = "";
    if (me > com) {
        result = "DOWN";
    } else if (me < com) {
        result = "UP";
    } else {
        result = "BINGO";
        Random rd = new Random();
        com = rd.nextInt(100) + 1;
        session.setAttribute("com", com);
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
    <h1><%= result %></h1>

    <a href="updownGameplay.jsp">다시 도전</a>
    <a href="index.jsp">처음으로</a>
</body>
</html>
