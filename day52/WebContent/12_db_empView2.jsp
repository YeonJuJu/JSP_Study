<%@page import="com.tjoeun.jsp.model.EmpDto"%>
<%@page import="java.util.ArrayList"%>
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
  <h2>사원 정보</h2>
  <table border="1" bgcolor="#ffffdd" cellpadding="5">
    <tr><th>사원번호</th><th>사원이름</th><th>사원업무</th><th>사원급여</th></tr>
    <c:forEach var="dto" items="${list }" >
	    <tr>
	      <td>${dto.empno }</td>
	      <td>${dto.ename }</td>
	      <td>${dto.job }</td>
	      <td>${dto.sal }</td>
	    </tr>
    </c:forEach>
  </table>
</body>
</html>





