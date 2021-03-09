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
	<fieldset>
		<legend>부서 정보 입력</legend>
		
		<form action="09_db_inputProc.jsp">
			부서번호:	<input type="number" name="deptno" required><br>
			부서이름: <input type="text" name="dname" required><br>
			부서위치: <input type="text" name="loc" required><br>
			
			<input type="submit" value="입력">
		</form>
	</fieldset>  
</body>
</html>