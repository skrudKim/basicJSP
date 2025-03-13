<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = './common.jsp' %>
<%  
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	boolean pass = dao.isValidLogin(id,pw);
	
	if(pass){
		%>
		<script>
		msgGomain('로그인 성공');
		</script>
<%}else{%>
		<script>
		msgGomain('로그인 실패');
		</script>
		<%
	
}
%>