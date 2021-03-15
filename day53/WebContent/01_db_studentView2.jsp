<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <h2>학생 정보</h2>
  <table border="1" bgcolor="#ffffdd" cellpadding="5">
    <tr><th>학생번호</th><th>학생이름</th><th>학년</th><th>전화번호</th></tr>
    <c:forEach var="dto" items="${list }" >
	    <tr>
	      <td>${dto.studno}</td>
	      <td>${dto.name}</td>
	      <td>${dto.grade}</td>
	      <td>${dto.tel}</td>
	    </tr>    
    </c:forEach>
</body>
</html>


