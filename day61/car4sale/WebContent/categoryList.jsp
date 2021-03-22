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
  <%
    // category 값 받아오기 (소형(1), 중형(2), 대형(3))
    String ctg = request.getParameter("category");
    int category = Integer.parseInt(ctg);
    
    String model = "";
    if(category == 1){
      model = "소형";
    }else if(category == 2){
      model = "중형"; 
    }else if(category == 3){
      model = "대형";
    }
  %>
  <div align="center">
    <table width="1000" border="1" bordercolor="gray">
      <tr height="100">
        <td colspan="3" align="center">
          <h2><%=model %> 자동차</h2>
        </td>
      </tr>
      
      <%
          RentCarDAO dao = RentCarDAO.getInstance();
          ArrayList<RentCarDTO> list = dao.selectCategoryCarList(category);
          
          int count = 0;
          for(int i = 0; i < list.size(); i++){
          	RentCarDTO dto = list.get(i);
            if(count % 3 == 0){
      %>
        <tr height="220">
      <%    }  %>
          
          <td width="333" align="center">
            <a href="rentCar.jsp?center=reserveInfo.jsp&no=<%=dto.getNo() %>" >
              <img src="img/<%=dto.getImg() %>" alt="" height="200" width="300" >
            </a>
            <p><font size="3" color="gray"><b>차 량 명 : <%=dto.getName() %></b></font></p>
          </td>
      <%      
            // 한 행<tr>에 차량 3 개의 정보를 보여줌
            count++;
            
          }
      %>
    </table>
  </div>
</body>
</html>


