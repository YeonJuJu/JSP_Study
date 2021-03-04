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
    <h2>request 내장 객체</h2>
    <%
    	//한글 처리
    	request.setCharacterEncoding("utf-8");
    
    	String name = request.getParameter("name");
	    String age = request.getParameter("age");
	    String gender = request.getParameter("gender");
	    //데이터가 여러개일 경우 getParameterValues 사용
	    String[] hobbys = request.getParameterValues("hobby");
	    
	    if(gender.equals("m"))
	    	gender="남자";
	    else
	    	gender="여자";
    
    
	    StringBuffer hobby = new StringBuffer();
	    for(int i=0;i<hobbys.length;i++){
	    	hobby.append(hobbys[i] + " ");
	    }
    %>
    
  == <%=name %> 님의 정보 == <br>
    나이 : <%=age %> <br>
    성별 : <%=gender %> <br>
    취미 : <%=hobby %> <br>
</body>
</html>