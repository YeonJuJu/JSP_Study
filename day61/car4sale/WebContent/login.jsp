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
  <div align="center">
    <form action="loginProc.jsp" method="post">
      <table width="300" border="1">
        <tr height="80">
          <td colspan="2" align="center">로 그 인</td>
        </tr>
        <tr height="40">
          <td width="120" align="center">아 이 디</td>
          <td width="180">
            <input type="text" name="id" size="26">
          </td>
        </tr>
        <tr height="40">
          <td width="120" align="center">비밀번호</td>
          <td width="180">
            <input type="password" name="pw" size="26">
          </td>
        </tr>
        <tr height="40">
          <td colspan="2" align="center">
            <input type="submit" value="로그인" >
          </td>
        </tr>
      </table>
    </form>
  </div>
</body>
</html>










