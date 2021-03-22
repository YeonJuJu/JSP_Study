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
	<h2>문자열 비교하기</h2>   
	
	입력한 문자열 : ${param.str1}, ${param.str2}<br><br>
	두 문자열이 같은가 ? => ${param.str1==param.str2}<br>
	어느 문자열이 (알파벳 순서 상) 먼저인가? => ${(param.str1<param.str2) ? param.str1 : param.str2}
</body>
</html>