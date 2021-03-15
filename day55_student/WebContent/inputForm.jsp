<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP</title>
  <style>
  	body{
  		background-color: #eeffee;
  	}
  	th, td{
  		padding: 10px;
  	}
  	table{
  		width: 100%;
  	}
  	tr:hover{
  		background-color: lightgreen;
  		color: white;
  		cursor: pointer;
  	}
  </style>
  <script type="text/javascript">
  	function chk(){
  		window.open("confirmId.jsp?id="+frm.id.value,"","width=300 height=300");	
  	}
  	function dup(){
  		if(frm.check.value == 0){
  			alert("아이디 중복체크를 하세요");
  			return false;
  		}
  		else{
  			frm.check.value=0;
  			return true;
  		}
  	}
  	function login(){
  		location.href="loginForm.jsp";
  	}
  </script>
</head>
<body>
  <form action="inputPro.jsp" name="frm" method="post" onsubmit="return dup();">
  	<table border="1" bgcolor="#ffffdd">
  		<caption><h2>회원가입</h2></caption>
  		<tr>
  			<th>아 이 디</th> 
  			<td>
  				<input type="text" name="id" required autofocus> 
  				<input type="button" value="중복체크" onClick="chk();">
  				<input type="hidden" name="check" value="0">
  			</td>
  		</tr>
  		<tr>
  			<th width="80">비밀번호</th> 
  			<td><input type="password" name="pw" required></td>
  		</tr>
  		<tr>
  			<th>이 름</th> 
  			<td><input type="text" name="name" required></td>
  		</tr>
  		<tr>
  			<th>학 년</th> 
  			<td><input type="text" name="grade" required></td>
  		</tr>
  		<tr>
  			<td colspan="2">
  				<input type="submit" value="입력완료"> 
  				<input type="reset" value="다시입력"> 
  				<input type="button" value="이전페이지" onClick="location.href='main.jsp'"> 
  			</td>
  		</tr>
  	</table>
  </form>
  <input type="button" value="로그인" onClick="login();">
</body>
</html>