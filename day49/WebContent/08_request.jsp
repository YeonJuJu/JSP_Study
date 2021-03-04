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
	이름을 입력하세요
	<form action="08_print_name.jsp" method="get">
		이름 :  <input type = "text" name="username">
		<input type = "submit" value="전송">
	</form>    
</body>
</html>