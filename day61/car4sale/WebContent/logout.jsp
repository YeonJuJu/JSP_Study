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
		session.invalidate();
		System.out.println("로그아웃성공");
	%>
	
	<script type="text/javascript">
		alert("로그아웃 완료");
		location.href="rentCar.jsp";
	</script>
</body>
</html>