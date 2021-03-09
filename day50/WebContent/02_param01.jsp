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
	<h2>좋아하는 동물</h2>
	
	<form action="02_param02.jsp" method="post">
		아이디 : <input type="text" name="id"><br>
		
		좋아하는 동물을 선택하세요<br>
		강아지 <input type="checkbox" name="animal" value="강아지"><br>
		고양이 <input type="checkbox" name="animal" value="고양이"><br>
		금붕어 <input type="checkbox" name="animal" value="금붕어"><br>
		<br>
		<input type="submit" value="제출">
		<input type="reset" value="다시입력">
	</form>    
</body>
</html>