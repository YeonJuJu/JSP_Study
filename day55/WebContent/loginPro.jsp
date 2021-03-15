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
  <%
  	String id = request.getParameter("id");
  	String password = request.getParameter("password");
	
  	Member2DAO dao = Member2DAO.getInstance();
  	int result = dao.check(id, password);
  	
  	if(result == 1){
  		session.setAttribute("id", id);
  		response.sendRedirect("main.jsp");
  	}else if(result == -1){
  %>
  		<script type="text/javascript">
			alert("비밀번호를 다시 입력해 주세요");
			history.back();
		</script>
  <%
  	}
  	else{
  %>
  		<script type="text/javascript">
			alert("아이디를 다시 입력해 주세요");
			location.href="loginForm.jsp";
		</script>
  <%
  	}
  %>
</body>
</html>