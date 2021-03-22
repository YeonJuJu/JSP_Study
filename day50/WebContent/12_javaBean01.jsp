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
    <h2>지역의 온도</h2>
    
    <form action="12_javaBean02.jsp" method="post">
    	지역 : <input type="text" name="loc" required><br>
    	온도 : <input type="number" name="value" required><br>
    	
    	<input type="submit" value="확인">
    </form>
    
</body>
</html>