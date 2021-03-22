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
		String deptno = (String)request.getAttribute("deptno");
		String dname = (String)request.getAttribute("dname");
		String loc = (String)request.getAttribute("loc");
	%>
	
	<h2>부서 정보 검색 결과</h2>
	<%-- 부서번호 : <%=deptno %>
	부서이름 : <%=dname %>
	부서위치 : <%=loc %> --%>
	
	부서번호 : ${deptno}<br>
	부서이름 : ${dname}<br>
	부서위치 : ${loc}<br>
</body>
</html>