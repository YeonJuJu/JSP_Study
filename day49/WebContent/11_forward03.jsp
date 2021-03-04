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
	입력된 수 : <%= request.getParameter("num1")%> , <%= request.getParameter("num2")%>

	<br>
	<!-- setAttribute로 넣은 변수는 setAttribute로 빼줘야 한다. -->
	+ ==> <%= request.getAttribute("sum")%><br>
	- ==> <%= request.getAttribute("difference")%><br>
	* ==> <%= request.getAttribute("product")%><br>
	/ ==> <%= request.getAttribute("quotient")%><br>
</body>
</html>