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
    	try{
    		int num1 = Integer.parseInt(request.getParameter("num1"));
        	int num2 = Integer.parseInt(request.getParameter("num2"));
        
        	out.println(num1 + " + " + num2 +" = " + (num1+num2));
    	}catch(NumberFormatException e){
    %>
		<script type = "text/javascript">
			alert("정수만 입력해 주세욤");
			history.go(-1);
		</script>    
    <%
    	}
    %>
</body>
</html>