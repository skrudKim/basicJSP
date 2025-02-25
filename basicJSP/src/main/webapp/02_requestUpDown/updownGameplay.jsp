<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>

<%
    // 랜덤 숫자 생성 (최초 실행 시)
    Integer com = (Integer) session.getAttribute("com");
    if (com == null) {
        Random rd = new Random();
        com = rd.nextInt(100) + 1; // 1~100 사이 랜덤 숫자
        session.setAttribute("com", com);
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업다운 게임 - 플레이</title>
</head>
<body>
    <h1>업다운 게임</h1>
    <p>치트키: <%= com %></p> 
    
    <form action="updownGameplayPro.jsp" method="get">
        <input type="number" name="me" required>
        <%
      
        %>
        <button type="submit">전송</button>
    </form>
    
    <a href="index.jsp">뒤로가기</a>
</body>
</html>
