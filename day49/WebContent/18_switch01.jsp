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
    <h2>권역 선택하기</h2>
    <form action="18_switch02.jsp" method="post">
    	<input type="radio" name="localNum" value="0" checked>0 권역<br>
    	<input type="radio" name="localNum" value="1">1 권역<br>
    	<input type="radio" name="localNum" value="2">2 권역<br>
    	<input type="radio" name="localNum" value="3">3 권역<br>
    	<input type="radio" name="localNum" value="4">4 권역<br>
    	<input type="radio" name="localNum" value="5">5 권역<br>
    	<input type="radio" name="localNum" value="6">6 권역<br>
    	<input type="radio" name="localNum" value="7">7 권역<br>
    	<input type="submit" value="입력완료">
    </form>
</body>
</html>