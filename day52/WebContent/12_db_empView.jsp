<%@page import="com.tjoeun.jsp.model.EmpDto"%>
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
  <h2>사원 정보</h2>
  
  <table border="1" bgcolor="#ffffdd" cellpadding="5">
  	<tr><th>사원번호</th><th>사원이름</th><th>사원업무</th><th>사원어쩌구</th></tr>
  	
  	<%
  		ArrayList<EmpDto> list = (ArrayList<EmpDto>)request.getAttribute("list");
  	
  		String check = (String)request.getAttribute("check");
  	
  		if(check.equals("ok")){
	  	
	  		for(EmpDto dto : list){
	  			
	  	%>
	  		<tr>
	  			<td><%=dto.getEmpno() %></td>
	  			<td><%=dto.getEname() %></td>
	  			<td><%=dto.getJob() %></td>
	  			<td><%=dto.getSal() %></td>
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