<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP</title>
</head>
<body>
    <h2>덧셈 프로그램 에러 화면</h2>
    
    잘못된 데이터가 입력되었습니다.<br><br>
    상세 에러 메시지 : <%=exception.getMessage()%>
</body>
</html>