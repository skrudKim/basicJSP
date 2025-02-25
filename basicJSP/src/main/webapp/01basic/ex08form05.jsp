<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 등록 폼</title>

</head>
<body>
<form action="ex08form05pro.jsp" method="post">
<h1>학번, 이름, 학년 , 선택과목을 입력하는 폼 </h1>
<table border = "1">
	<tr>
		<td>학번</td>
		<td><input type="number" name="hakbun" /></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="myName"/></td>
	</tr>
	<tr>
		<td>학년</td>
		<td>
			 <input type="radio" name="radio" value="1학년"/>1학년
			 <input type="radio" name="radio" value="2학년"/>2학년
			 <input type="radio" name="radio" value="3학년"/>3학년
			 <input type="radio" name="radio" value="4학년"/>4학년
		</td>
	</tr>
	<tr>
		<td>선택과목</td>
		<td>
			<select name="subject" id="subject">
			    <option value="spring" selected>SPRING</option>
			    <option value="java">JAVA</option>
			    <option value="css">CSS</option>
			    <option value="js">JS</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>취미</td>
		<td>
		<input type="checkbox" name="check" value="운동">운동
		<input type="checkbox" name="check" value="독서">독서
		<input type="checkbox" name="check" value="공부">공부
		<input type="checkbox" name="check" value="쇼핑">쇼핑
		</td>
	</tr>
	<tr>
		<td>메모</td>
		<td>
			<textarea name="content" id="content" rows="15" cols="40" required></textarea>
		</td>
	</tr>
	<tr>
		<td colspan="2" style="text-align: center;"><button> 입력완료 </button></td> 
	</tr>
</table>
</form>
</body>
</html>