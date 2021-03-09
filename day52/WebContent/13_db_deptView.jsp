<%@page import="com.tjoeun.jsp.model.DeptDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP</title>
</head>
<body>
  <h2>부서 정보</h2>
  
  <table border="1" bgcolor="#ffffdd" cellpadding="5">
  	<tr><th>부서번호</th><th>부서이름</th><th>부서위치</th></tr>
  	
  	<%
  		ArrayList<DeptDto> list = (ArrayList<DeptDto>)request.getAttribute("list");
  	
  		String check = (String)request.getAttribute("check");
  	
  		if(check.equals("ok")){
	  	
	  		for(DeptDto dto : list){
	  			
	  	%>
	  		<tr>
	  			<td><%=dto.getDeptno() %></td>
	  			<td><%=dto.getDname() %></td>
	  			<td><%=dto.getLoc() %></td>
	  		</tr>
	  	<%
	  		}
  		}
  		else{
  			out.println("조회하려는 데이터가 존재하지 않습니다.");
  		}
  	%>
  </table>
</body>
</html>