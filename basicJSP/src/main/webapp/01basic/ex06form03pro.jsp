	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>값 받는 실습 process 페이지</title>
	</head>
	<body>
	<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	if(request.getParameter("num1").equals("") || request.getParameter("num2").length() == 0){
		out.println("<p>값을 넣어주세요</p>");
	}else{
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		if(num1 > num2){
			%>
		<p><%= num1 %>이 큽니다</p>
			<%
		}else if(num1 < num2){
			%>
			<p><%=num2 %>이 큽니다</p>
			<%
		}else{
			out.println("<p> 두 값이 같습니다 </p>");
		}
	}
	%>
	</body>
	</html>