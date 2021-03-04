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
    <%	/* 서블릿에서  _jspService method 안에 들어감 */
    	int total = 0;
    	for(int i=1;i<=100;i++){
    		total += i;
    	}
    %>
    
    <!-- 브라우저에 출력되는 내용 -->
    1부터 100까지 더한 결과 : <%= total %><br>
    
    <%	
    	for(int i=101;i<=200;i++){
    		total += i;
    	}
    %>
    
    1부터 200까지 더한 결과 : <%= total %><br>
</body>
</html>