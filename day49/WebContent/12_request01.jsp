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
	<h2>Request 내장 객체</h2>
	
	<form action="12_request02.jsp" method="post">
		이름 : <input type="text" name="name"><br>
		나이 : <input type="text" name="age"><br>
		성별 : 남자 <input type="radio" name="gender" value="m" checked>
			   여자 <input type="radio" name="gender" value="f"><br>
		취미 : <select name="hobby">
				<option value="독서" selected>독서</option>
				<option value="등산" >등산</option>
				<option value="영화감상" >영화감상</option>
				<option value="요리" >요리</option>
			 </select> <br>
		<input type="submit" value="확인">
	</form>
</body>
</html>