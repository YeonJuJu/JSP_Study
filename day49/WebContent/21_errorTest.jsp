<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 에러 페이지를 다음과 같이 지정  -->
<%@ page errorPage="21_errorMessage.jsp" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP</title>
</head>
<body>
	name 파라미터 값 : <%-- <%=request.getParameter("name").toUpperCase()%> --%>
	<%= request.getParameter("name").toUpperCase() %>
	
</body>
</html>