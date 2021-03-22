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
  	<h2>검색할 부서 번호를 입력하세요</h2>
  	
  	<form action="08_db_deptnoProc.jsp">
  		부서번호 : <input type="number" name="deptno"><br>
  		
  		<input type="submit" value="검색">
  	</form>
</body>
</html>