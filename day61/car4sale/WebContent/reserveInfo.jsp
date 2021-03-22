<%@page import="com.tjoeun.jsp.model.RentCarDTO"%>
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
    int no = Integer.parseInt(request.getParameter("no"));
    RentCarDAO dao = RentCarDAO.getInstance(); 
    RentCarDTO dto = dao.getOneCar(no);
    
    // Category 값 가져오기
    int category = dto.getCategory();
    
    String model = "";
    if(category == 1){
       model = "소형"; 
    }else if(category == 2){
       model = "중형" ;
    }else if(category == 3){
       model = "대형";
    }
  %>
  <div align="center">
    <form action="rentCar.jsp?center=carOption.jsp" method="post">
      <table width="1000">
        <tr>
          <td colspan="3" align="center">
            <h2><%=dto.getName() %> 차량 선택</h2>
          </td>
        </tr>
        <tr>
          <td rowspan="6" width="500" align="center">
            <img src="img/<%=dto.getImg() %>" width="450">
          </td>
          <td width="250" align="center"> 차량 이름 </td>
          <td width="250" align="center"> <%=dto.getName() %> </td>
          <td></td>
        </tr>
        <tr>
          <td width="250" align="center"> 차량 수량 </td>
          <td width="250" align="center">
            <select name="quantity">
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
            </select>
          </td>
        </tr>
        <tr>
          <td width="250" align="center"> 차량 분류 </td>
          <td width="250" align="center"> <%=model %> </td>
        </tr>
        <tr>
          <td width="250" align="center"> 대여 가격 </td>
          <td width="250" align="center"> <%=dto.getPrice() %> </td>
        </tr>
        <tr>
          <td width="250" align="center"> 제조 회사 </td>
          <td width="250" align="center"> <%=dto.getCompany() %> </td>
        </tr>
        <tr>
          <td colspan="2" align="center">
            <input type="hidden" name="no" value="<%=dto.getNo() %>" >
            <input type="hidden" name="img" value="<%=dto.getImg() %>" >
            <input type="submit" value="옵션 선택하기">
          </td>
        </tr>
      </table>
      <br><br><br>
      <h2> 차량 정보 </h2>
      <p><%=dto.getInfo() %></p>
    </form>  
  </div>
  
</body>
</html>





