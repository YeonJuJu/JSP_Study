<%@page import="com.tjoeun.jsp.model.Member2DTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tjoeun.jsp.model.Member2DAO"%>
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
  			Member2DAO dao = Member2DAO.getInstance();
  			ArrayList<Member2DTO> list = dao.list();
  		
  	%>
  	
  	<table border="1">
  		<tr><th>아이디</th><th>이 름</th><th>주 소</th><th>전 화</th><th>가입일</th></tr>
  	
  	
  	<%
  			for(Member2DTO dto : list){
  	%>
	  			<tr>
	  				<td><%=dto.getId()%></td>
	  				<td><%=dto.getName()%></td>
	  				<td><%=dto.getAddress()%></td>
	  				<td><%=dto.getTel()%></td>
	  				<%-- <td><%=dto.getReg_date()%></td> --%>
	  				<td><fmt:formatDate value="<%=dto.getReg_date() %>"/></td>
	  			</tr>
  	<%	
  			}
  		}else{
  	%>
  	</table>
	  		<script type="text/javascript">
	  			alert("권한이 없습니다. 관리자로 로그인해주세요");
	  			history.go(-1);
	  		</script>
  	<%
  		}
  	%>
</body>
</html>