<%@page import="com.tjoeun.jsp.model.StudentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tjoeun.jsp.model.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 접속한 아이디 값을 확인 -->
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
  		if(id.equals("admin")){
  			StudentDAO dao = StudentDAO.getInstance();
  			ArrayList<StudentDTO> list = dao.list();
  		
  	%>
  	
  	<table border="1">
  		<tr><th>아이디</th><th>이 름</th><th>학 년</th><th>가입일</th></tr>
  	
  	
  	<%
  			for(StudentDTO dto : list){
  	%>
	  			<tr>
	  				<td><%=dto.getId()%></td>
	  				<td><%=dto.getName()%></td>
	  				<td><%=dto.getGrade()%></td>
	  				<%-- <td><%=dto.getReg_date()%></td> --%>
	  				<td><fmt:formatDate value="<%=dto.getDate() %>"/></td>
	  			</tr>
  	<%	
  			}
  	%>
  	</table>
  	<%
  		}else{
  	%>
  	
	  		<script type="text/javascript">
	  			alert("권한이 없습니다. 관리자로 로그인해주세요");
	  			history.go(-1);
	  		</script>
  	<%
  		}
  	%>
</body>
</html>