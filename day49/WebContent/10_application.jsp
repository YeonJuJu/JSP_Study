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
	<h2>application 내장 객체 </h2>
	
	<%
		String appPath = application.getContextPath();
		String filePath = application.getRealPath("10_application.jsp");	
	%>    
	
	웹 애플리케이션 URL 경로 : <%= appPath %> <br>
	10_application.jsp 파일 경로 : <%= filePath %>
</body>
</html>