<%@page import="com.tjoeun.jsp.model.StudentDTO"%>
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
	<%
		StudentDAO dao = StudentDAO.getInstance();
		StudentDTO dto = dao.select(id);
	%>
	
	<form action="modifyPro.jsp" name="frm">
		<input type="hidden" name="id" value="<%=dto.getId()%>">
		
		<table border="1" bgcolor="#ffffdd">
			<caption><h2>회원 정보 수정하기</h2></caption>
			
			<tr><th>아 이 디</th><td><%=dto.getId()%></td></tr>
			
			<tr>
				<th width=80>비밀번호</th>
				<td><input type="password" name="pw" value="<%=dto.getPw()%>" required></td>
			</tr>
			
			<tr>
				<th width=80>비밀번호 확인</th>
				<td><input type="password" name="pw2" required autofocus></td>
			</tr>
			
			<tr>
				<th width=80>이 름</th>
				<td><input type="text" name="name" value="<%=dto.getName()%>" required></td>
			</tr>
			
			<tr>
				<th width=80>학 년</th>
				<td><input type="text" name="grade" value="<%=dto.getGrade()%>" required></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<input type="submit" value="정보수정"> 
					<input type="reset" value="다시작성"> 
					<input type="button" value="이전페이지" onClick="location.href='main.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>