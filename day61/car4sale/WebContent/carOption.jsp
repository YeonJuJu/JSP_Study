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
    String img = request.getParameter("img");
    int no = Integer.parseInt(request.getParameter("no"));
    int quantity = Integer.parseInt(request.getParameter("quantity"));
    
  %>
  <div align="center">
    <form action="rentCar.jsp?center=carReserveResult.jsp" method="post">
      <table width="1000">
        <tr height="100">
          <td colspan="3" align="center">
            <font size="6" color="gray"> 옵 션 선 택 </font>
          </td>
        </tr>
        <tr height="100">
          <td rowspan="7" width="450">
            <img src="img/<%=img %>" width="450">
          </td>   
          <td width="250" align="center">대여기간</td>
          <td width="250" align="center">
            <select name="days">
              <option value="1">1일</option>
              <option value="2">2일</option>
              <option value="3">3일</option>
              <option value="4">4일</option>
              <option value="5">5일</option>
              <option value="6">6일</option>
              <option value="7">7일</option>
            </select>
          </td>
        </tr>
        <tr>
          <td width="250" align="center">대여일</td>
          <td width="250" align="center">
            <input type="date" name="rentdate" size="15">
          </td>
        </tr>
        <tr>
          <td width="250" align="center">보험적용</td>
          <td width="250" align="center">
            <select name="insurance">
              <option value="1">적용(1일 2만원)</option>
              <option value="2">비적용</option>
            </select>
          </td>
        </tr>        
        <tr>
          <td width="250" align="center">WiFi 적용</td>
          <td width="250" align="center">
            <select name="wifi">
              <option value="1">적용(1일 1만원)</option>
              <option value="2">비적용</option>
            </select>
          </td>
        </tr>        
        <tr>
          <td width="250" align="center">네비게이션 적용</td>
          <td width="250" align="center">
            <select name="navigation">
              <option value="1">적용(무료)</option>
              <option value="2">비적용</option>
            </select>
          </td>
        </tr>        
        <tr>
          <td width="250" align="center">베이비시트 적용</td>
          <td width="250" align="center">
            <select name="babyseat">
              <option value="1">적용(1일 1만원)</option>
              <option value="2">비적용</option>
            </select>
          </td>
        </tr> 
        <tr>
          <td align="center"><input type="reset" value="다시선택하기"></td>
          <td align="center">
            <input type="hidden" name="no" value="<%=no %>"> 
            <input type="hidden" name="quantity" value="<%=quantity %>">
               
            <input type="submit" value="차량예약하기"> 
          </td>
        </tr>       
      </table>
    </form>
  
  </div>
  
</body>
</html>














