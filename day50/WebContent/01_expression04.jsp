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
	<%
		request.setAttribute("name", "이순신");
		RequestDispatcher rd = request.getRequestDispatcher("01_expression05.jsp");
		rd.forward(request, response);
		
		/* forward를 이용하면 이 페이지에서 벗어나지 않고 expression05에서 가져와서 출력  */
	%>    
</body>
</html>