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
	
	<%
		request.setCharacterEncoding("utf-8");
	
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		String kcolor = "";
		
		switch(color){
		case "blue":
			kcolor = "파란색";
			break;
		case "red":
			kcolor = "빨강색";
			break;
		case "orange":
			kcolor = "주황색";
			break;
		case "green":
			kcolor = "초록색";
			break;
		case "purple":
			kcolor = "보라색";
			break;
		}
		
	%>
<body bgcolor= "<%=color%>">	
	<%=name %> 님이 좋아하는 색상은 <%=kcolor %>입니다.    
</body>
</html>