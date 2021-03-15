<%@page import="com.tjoeun.jsp.model.Member2DAO"%>
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
  	<% request.setCharacterEncoding("UTF-8"); %>
  	
  	<jsp:useBean id="dto" class="com.tjoeun.jsp.model.Member2DTO"/>
  	<jsp:setProperty name="dto" property="*"/>
  	
  	<%
  		Member2DAO dao = Member2DAO.getInstance();
  		int result = dao.update(dto);
  		
  		if(result > 0){
  	%>
  			<script type="text/javascript">
  				alert("회원 정보가 수정되었습니다.");
  				location.href="main.jsp";
  			</script>
  	<%
  		}else{
  	%>
  			<script type="text/javascript">
  				alert("회원 정보 수정 오류");
  				location.href="main.jsp";
  			</script>
  	<%	
  		}
  	%>
</body>
</html>