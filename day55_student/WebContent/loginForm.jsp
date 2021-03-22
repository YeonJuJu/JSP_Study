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
  <form action="loginPro.jsp" name="frm">
  	<table border=1 bgcolor="#ffffdd">
  		<caption><h2>로 그 인</h2></caption>
  		<tr>
  			<th>아 이 디</th>
  			<td><input type="text" name="id" required autofocus></td>
  		</tr>
  		<tr>
  			<th width=80>비밀번호</th>
  			<td><input type="password" name="pw" required></td>
  		</tr>
  		<tr>
  			<td colspan="2">
  				<input type="submit" value="로그인">
  				<input type="reset" value="다시입력">
  				<input type="button" value="이전페이지" onClick="history.go(-1)">
  			</td>
  		</tr>
  	</table>
  </form><br><br>
  
  <button onClick="location.href='inputForm.jsp'">회원가입</button>
</body>
</html>