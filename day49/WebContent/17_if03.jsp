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
    <h3>이름, 전화번호 입력하기</h3>
    <form action = "17_if04.jsp" method="get">
    
    	이름 : <input type="text" name="name"><br>
    	전화번호 : <select name="local">
		    		<option value="서울">서울</option>
		    		<option value="경기">경기</option>
		    		<option value="강원">강원</option>
		    	</select>
    	
    	<input type="text" name="tel"><br>
    	<input type="submit" value="입력완료">
    </form>
</body>
</html>