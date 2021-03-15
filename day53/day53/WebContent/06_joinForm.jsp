<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP</title>
  <style>
    body{font-family:D2Coding;}
  </style>  
  <script type="text/javascript">
    function init(){
      frm.id.value="";
      frm.password.value="";
      frm.name.value="";
      window.resizeTo(300, 400);
    }
    /*
    function chk(){
      if(!frm.id.value{
    	alert("이이디를 입력하세요");
    	frm.id.focus();
    	return false;
      }	
    }
    */
  </script>
</head>
<body onload="init()">
  <center>
    <h2>회원가입</h2>
    <form name="frm" action="06_join.jsp" >
      아 이 디 : <input type="text" name="id" required><br>
      비밀번호 : <input type="password" name="password" required><br>
      이 &nbsp;&nbsp; 름 : <input type="text" name="name" required><br><br>
      <input type="submit" value="입력완료">
    </form>
     <button type="button" onClick="location.href='06_loginForm.jsp'">로 그 인</button>
  </center>
</body>
</html>



