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
	<h2>회원 가입</h2>
    <form action="registerResult.jsp" method="post">
		ID :  <input type = "text" name="id"><br>
		PW :  <input type = "password" name="password"><br>
		NAME :  <input type = "text" name="name"><br>
		ADDR :  <input type = "text" name="addr"><br>
		JOB :  <input type = "text" name="job"><br>
		HOBBY :  <select multiple="multiple" name="hobby" >
					<option value="독서" >독서</option>
					<option value="등산" >등산</option>
					<option value="영화감상" >영화감상</option>
					<option value="요리" >요리</option>
			  	 </select><br>
		
		
		<input type = "submit" value="전송">
	</form>
</body>
</html>