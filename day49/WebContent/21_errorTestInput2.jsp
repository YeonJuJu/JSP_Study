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
	숫자를 입력하세요<br>
	
	<form action="21_errorTest02.jsp" method="post">
		첫 번째 숫자 : <input type = "text" name = "num1"><br>
		두 번째 숫자 : <input type = "text" name = "num2"><br>
		
		<input type="submit" value="전송">
	</form>
	    
</body>
</html>