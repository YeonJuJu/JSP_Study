<%@page import="com.tjoeun.jsp.model.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="sessionCheck.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP</title>
</head>
<body>
  	<h2><%=id%> 회원님, 탈퇴</h2>
  	
  	<%
  		StudentDAO dao = StudentDAO.getInstance();
  		int result = dao.delete(id);
  		
  		if(result > 0){
  			session.invalidate();
  	%>
  			<script type="text/javascript">
  				alert("탈퇴하셨습니다.");
  				location.herf="main.jsp";
  			</script>
  	<%
  		}
  		else{
  	%>
  			<script type="text/javascript">
  				alert("탈퇴 처리 오류");
  				location.href="main.jsp";
  			</script>
    <%	
  		}
  	%>
</body>
</html>