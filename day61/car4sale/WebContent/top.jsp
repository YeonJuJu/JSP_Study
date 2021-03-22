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
  <!-- Session 로그인 처리 -->
  <%
    String id = (String)session.getAttribute("id");
    
    // 로그인이 안 된 상태
    if(id == null){
      id = "Guest"; 
    }
  %>
  <table width="1000" bordercolor="white">
    <tr height="70">
      <td colspan = "4">
        <a href="rentCar.jsp">
          <img src="img/rent.png" alt="rent car" height="65">
        </a>
      </td>
      <td width="200" align="center">
        <%=id %> 님, 환영합니다 !!!
      <%
         if(id.equals("Guest")){ %>
           <button onClick="location.href='rentCar.jsp?center=login.jsp'">로그인</button>
      <%     	 
         }else{
      %>
      		<button onClick="location.href='rentCar.jsp?center=logout.jsp'">로그아웃</button>
      <%
         }
      %>  
      </td>
    </tr>
    <tr height="50">
      <td width="200" align="center" bgcolor="#f7dcf5">
        <font color="white" size="5"><a href="rentCar.jsp?center=reserve.jsp" style="text-decoration:none;">예약하기</a></font>
      </td>
      <td width="200" align="center" bgcolor="#f7dcf5">
        <font color="white" size="5"><a href="rentCar.jsp?center=reserveList.jsp" style="text-decoration:none;">예약확인</a></font>
      </td>
      <td width="200" align="center" bgcolor="#f7dcf5">
        <font color="white" size="5"><a href="#" style="text-decoration:none;">자유게시판</a></font>
      </td>
      <td width="200" align="center" bgcolor="#f7dcf5">
        <font color="white" size="5"><a href="#" style="text-decoration:none;">이벤트</a></font>
      </td>
      <td width="200" align="center" bgcolor="#f7dcf5">
        <font color="white" size="5"><a href="#" style="text-decoration:none;">고객센터</a></font>
      </td>
    </tr>
  </table>
</body>
</html>











