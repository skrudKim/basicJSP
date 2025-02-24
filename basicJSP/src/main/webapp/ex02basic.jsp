<%@page import = "java.time.format.DateTimeFormatter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- html 문서 주석
얘는 페이지 소스보기 하면 보인다 -->
<%-- 
	jsp 인식하는 자바 주석
	페이지 소스보기 하면 안보인다
	<% 붙은 부분들은 다 후처리 삭제 : 순수 html 태그만 남긴다
	: 보안상 유리
	
	JSP : 자바 서버 체이지 약자 => 웹컨테이너가 jsp파일 처리한다 
	 --%>
	<h1>ex02</h1>
	<h1>3+2 = <%=3+2 %></h1>
</body>
</html>