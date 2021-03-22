<%@page import="com.tjoeun.jsp.model.RentCarDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tjoeun.jsp.model.RentCarDAO"%>
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
  <!-- 최신 등록된 자동차 3 대만 화면에 보여주기 -->
  <!--   ㄴ select 에서 order by no desc -->
  <%
    RentCarDAO dao = RentCarDAO.getInstance();
    ArrayList<RentCarDTO> list = dao.selectCarList();
  
  %>
  <div align="center">
    <table width="1000">
      <tr>
        <td colspan="3" align="center"> <h2>NEW MODEL</h2> </td>
      </tr>
      <tr height="240">
        <%
          for(int i = 0; i < list.size(); i++){
          	RentCarDTO dto = list.get(i);
          
        %>
        <td width="330" align="center">
          <a href="rentCar.jsp?center=reserveInfo.jsp?no=<%=dto.getNo() %>" >
            <img src="img/<%=dto.getImg() %>" alt="자동차" width="300" height="200">
          </a>
          <p>자동차 이름 : <%=dto.getName() %></p>
        </td>
        <%
          }
        %>
      </tr>
    </table>
    
    <h2> 차량 검색 </h2><br><br>
    <form action="rentCar.jsp?center=categoryList.jsp" method="post">
      <b>차량검색하기</b> &nbsp;&nbsp;
      <select name="category">
        <option value="1">소형</option>
        <option value="2">중형</option>
        <option value="3">대형</option>
      </select> &nbsp;&nbsp;
      <input type="submit" value="검색"> &nbsp;&nbsp;
    </form>
    <br>
    <button onClick="location.href='rentCar.jsp?center=listAll.jsp'"> 전체 검색 </button>
    
  </div>  
  
</body>
</html>



