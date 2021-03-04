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
	<form action="16_if02.jsp" method="post">
		이름 : <input type="text" name="name"><br>
		좋아하는 색상 : <select name="color">
						<option value="blue">BLUE</option>
						<option value="red">RED</option>
						<option value="orange">ORANGE</option>
						<option value="green">GREEN</option>
						<option value="purple" selected>PURPLE</option>
				   </select><br>
		<input type="submit" value="보내기">
	</form>    
</body>
</html>