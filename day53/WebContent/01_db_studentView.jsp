<%@page import="com.tjoeun.jsp.model.StudentDTO"%>
<%@page import="java.util.ArrayList"%>
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
</head>
<body>
  <%
    ArrayList<StudentDTO> list 
      = (ArrayList<StudentDTO>)(request.getAttribute("list"));
    String check = (String)(request.getAttribute("check"));
  %>
  <h2>학생 정보</h2>
  <table border="1" bgcolor="#ffffdd" cellpadding="5">
    <tr><th>학생번호</th><th>학생이름</th><th>학년</th><th>전화번호</th></tr>
    <%
      if(check.equals("ok")){
      	for(StudentDTO dto : list){
     %>  		
     <tr>
       <td><%=dto.getStudno() %></td>
       <td><%=dto.getName()%></td>
       <td><%=dto.getGrade()%></td>
       <td><%=dto.getTel()%></td>
     </tr>
     <% 		
      	} // for
      } else {
      	out.println("조회하려는 데이터가 하나도 없습니다.");
      }
     %>
    <tr></tr>
  </table>  
</body>
</html>






