<%@page import="com.tjoeun.jsp.model.RentCarDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		RentCarDAO dao = RentCarDAO.getInstance();
		
		int result = dao.selectIdPw(id, pw);
		
		if(result == 0){
	%>
			<script type="text/javascript">
				alert("아이디와 비밀번호를 확인해주세요.");
				location.href="rentCar?center=login.jsp";
			</script>
	<%
		}else{
			session.setAttribute("id", id);
			response.sendRedirect("rentCar.jsp");
		}
	%>    
</body>
</html>