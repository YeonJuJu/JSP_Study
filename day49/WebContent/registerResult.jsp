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
	<h2>회원 정보</h2>
    <%
    	request.setCharacterEncoding("utf-8");
    
   		String id = request.getParameter("id"); 
	    String password = request.getParameter("password");
	    String name = request.getParameter("name");
	    String addr = request.getParameter("addr");
	    String job = request.getParameter("job");
	    String[] hobbys = request.getParameterValues("hobby");
	    
	    String hobby = "";
	    
	    for(int i=0;i<hobbys.length;i++){
	    	hobby = hobby + hobbys[i] + ", ";
	    }
    %>
    
    id : <%=id %><br>
    password : <%=password %><br>
    name : <%=name %><br>
    address : <%=addr %><br>
    job : <%=job %><br>
    hobby : <%=hobby%><br>
</body>
</html>