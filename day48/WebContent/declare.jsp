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
	<h2>선 언 문</h2>
    <%! /* 선언문 */
    	
    	/*
    		멤버 변수, 멤버 메소드를 선언함
    	*/
    	
    	private int num = 22;
    	private String name = "java";
    	public int getNum(){
    		return this.num;
    	}
    	
    %>
    
    num : <%=getNum() %><br>
    name : <%=name %>
</body>
</html>