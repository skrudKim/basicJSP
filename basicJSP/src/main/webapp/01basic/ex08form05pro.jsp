<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>학생등록 처리 페이지</title>
</head>
<body>
    <h2>학생 정보 확인</h2>
    
    <%
        String hakbun = request.getParameter("hakbun");
        String myName = request.getParameter("myName");
        String grade = request.getParameter("radio");
        String subject = request.getParameter("subject"); 
        String[] hobbies = request.getParameterValues("check"); 
        String memo = request.getParameter("content");
	
        
        String hobbyList = (hobbies != null) ? String.join(", ", hobbies) : "없음";
        if (hakbun == null || hakbun.trim().isEmpty() || 
            myName == null || myName.trim().isEmpty() || 
            grade == null || grade.trim().isEmpty() || 
            subject == null || subject.trim().isEmpty() || 
            memo == null || memo.trim().isEmpty() || 
            (hobbies == null || hobbies.length == 0)) {
        %>
                <script>
                    alert("비어있는 값이 있습니다.");
                    history.back();  
                    //history.go(-1); back이랑 동일하다
                   	// location.href = "ex08form05.jsp";
                    //response.sendRedirect("ex08form05.jsp");
                    // 이건 자바 코드 그리고 큰 단점이 있다 
                    //alert창이 뜨지 않는다 왜냐면 자바의 코드만 돌리고 다른 js처리
                </script>
        <%
                return;  
            }
        %>
      

    <table border="1">
        <tr>
            <th>학번</th>
            <th>이름</th>
            <th>학년</th>
            <th>과목</th>
            <th>취미</th>
            <th>메모</th>
        </tr>
        <tr>
            <td><%= hakbun %></td>
            <td><%= myName %></td>
            <td><%= grade %></td>
            <td><%= subject %></td>
            <td><%= hobbyList %></td>
            <td><%= memo %></td>
        </tr>
    </table>
</body>
</html>
