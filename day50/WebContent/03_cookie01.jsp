<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP</title>
</head>
<body>
	<%
		Cookie cookie = new Cookie("name", "tjoeun");
		// cookie 데이터를 클라이언트(웹 브라우저)에 저장함
		response.addCookie(cookie);
	%>    
	
	<h2>cookie 값이 설정되었습니다.</h2>
</body>
</html>