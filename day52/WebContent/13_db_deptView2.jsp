<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP</title>
  <style>
    body{font-family:D2Coding;}
  </style>  
</head>
<body>
  <!-- JSLT core + EL -->
  <h2>부서 정보</h2>
  <table border="1" bgcolor="#ffffdd" cellpadding="5">
    <tr><th>부서번호</th><th>부서이름</th><th>부서위치</th></tr>
    <c:forEach var="dto" items="${list}" >
	    <tr>
	      <td>${dto.deptno }</td>
	      <td>${dto.dname }</td>
	      <td>${dto.loc }</td>
	    </tr>
    </c:forEach>
  </table>
</body>
</html>