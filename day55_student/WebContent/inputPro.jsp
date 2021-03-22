<%@page import="com.tjoeun.jsp.model.StudentDAO"%>
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
  
  <jsp:useBean id="dto" class="com.tjoeun.jsp.model.StudentDTO"></jsp:useBean>
  
  <jsp:setProperty name="dto" property="*"/>
  
  <%
  	StudentDAO dao = StudentDAO.getInstance();
  	int result = dao.insert(dto);
  	
  	if(result == 1){
  %>
	  	<script type="text/javascript">
	  		alert("입력 성공");
	  		location.href="loginForm.jsp";
	  	</script>
  <%
  	}else{
  %>
  		<script type="text/javascript">
	  		alert("다시 작성해 주세요");
	  		history.go(-1);
  		</script>
  <%
  	}
  %>
</body>
</html>