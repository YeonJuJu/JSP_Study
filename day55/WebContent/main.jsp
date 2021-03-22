<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "sessionCheck.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP</title>
  <style type="text/css">
  	body{
  		background-color= #eeffee;
  	}
  </style>
</head>
<body>
  <h1><%=id%>님, 환영합니다!</h1>
  <hr>
  <button onClick="location.href='inputForm.jsp'">회원가입</button>
  <button onClick="location.href='list.jsp'">회원리스트</button>
  <button onClick="location.href='modifyForm.jsp'">회원정보수정</button>
  <button onClick="location.href='deleteForm.jsp'">회원탈퇴</button>
  <button onClick="location.href='logout.jsp'">로그아웃</button>
</body>
</html>