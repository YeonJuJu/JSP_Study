<%@page import="com.tjoeun.jsp.model.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP</title>
   <%
  	String id = request.getParameter("id");
   %>
  <script type="text/javascript">
  	function cls(){
  		opener.frm.id.value="<%=id%>";
  		opener.frm.check.value="1";
  		window.close();
  	}
  </script>
</head>
<body>
  <%
  	StudentDAO dao = StudentDAO.getInstance();
  
  	int result = dao.confirmId(id);
  	
  	if(result == 1){
  %>
  		<%=id%>는 이미 존재하는 아이디입니다.<br>
  		다른 아이디를 사용해 주세요 <br>
  		
  		<form>
  			아 이 디 : <input type="text" name="id"><br>
  			<input type="submit" value="확인">
  		</form>
  <%
  	}
  	else{
  %>		
  		<%=id%>는 사용 가능한 아이디입니다.
  		<button onClick="cls();">닫기</button>	
  <%
  	}
  %>
</body>
</html>