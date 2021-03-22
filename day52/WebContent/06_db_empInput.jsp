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
  <h2>검색할 부서번호를 입력하세요</h2>
  
  <form action="06_db_empList.jsp">
  	부서번호 : <input type="number" name="deptno" required><br>
  	
  	<input type="submit" value="검색">
  </form>
</body>
</html>