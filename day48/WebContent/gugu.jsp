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
    <h2>화면에 구구단 출력하기</h2>
    
    <%	/* scriptlet : 스크립틀릿 */
    
    	for(int i=2;i<10;i++){
    		for(int j=1;j<10;j++){
    			System.out.printf("%d X %d = %d\n", i, j, i*j);
    		}
    		System.out.println();
    	}
    
    	for(int i=2;i<10;i++){
    		for(int j=1;j<10;j++){
    %>
    			<%=i %> X <%=j %> = <%=i*j %> <br>
    <%
    		}
    %>
    	<br>
    <%
    	}
    %>
</body>
</html>