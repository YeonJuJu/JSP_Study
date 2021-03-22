<%@page import="com.tjoeun.jsp.model.RentCarDTO"%>
<%@page import="com.tjoeun.jsp.model.RentCarDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
    request.setCharacterEncoding("UTF-8");
  %>
  <jsp:useBean id="otDto" class="com.tjoeun.jsp.model.OptionDTO" />
  <jsp:setProperty name="otDto" property="*"/>
  
  <!-- Session 객체를 사용해서 로그인 처리하기 -->
  <%
    String id = (String)session.getAttribute("id");
  
    if(id == null){  // 로그인이 안 된 경우
  %>
  
    <script type="text/javascript">
      alert("로그인하신 후 예약해 주세요");
      location.href="rentCar.jsp?center=login.jsp";
    </script>
  
  <%
    }
     // 예약하는 날짜가 정확한지 확인하기
     Date date1 = new Date();
     Date date2 = new Date();
     
     // "2021-03-19"
     SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
     
     // date1 : 예약하려고 하는 날짜
     // date2 : 현재 날짜
     date1 = sdf.parse(otDto.getRentdate());
     date2 = sdf.parse(sdf.format(date2));
     
     int compare = date1.compareTo(date2);
     // int compare = date2.compareTo(date1);
     
     // 예약하는 날짜가 현재 날짜보다 작은 경우 (이전 날짜) : -1
     // 예약하는 날짜가 현재 날짜하고 같은 경우 (같은 날짜) :  0
     // 예약하는 날짜가 현재 날짜보다   큰 경우 (이후 날짜) :  1
     
     if(compare < 0){
    %>
      <script type="text/javascript">
        alert("현재 날짜보다 이전 날짜로는 예약하실 수 없습니다");
        history.go(-1);
      </script>
    <%	 
     }
     
     otDto.setId(id);
     
     // OptionDTO 에 저장된 값들을
     // DB에 있는 OPTIONDTO 테이블에 저장함
     //             ㄴ record 하나가 저장됨
     
     RentCarDAO dao = RentCarDAO.getInstance();
     dao.setOptionDTO(otDto);
     
     
     // Option 금액 계산하기
     int insurance  = 0;
     int wifi       = 0;
     int navigation = 0;
     int babyseat   = 0;
     
     if(otDto.getInsurance() == 1){
       insurance = 20000;
     }
     if(otDto.getWifi() == 1){
       wifi = 10000; 
     }
     if(otDto.getNavigation() == 1){
       navigation = 0; 
     }
     if(otDto.getBabyseat() == 1){
       babyseat = 10000; 
     }
     
     // 예약금액 + 차량 예약 정보 출력할 때 사용할 data
     // 차량 정보 가져오기 : FROM RENTCAR table
     // SELECT * FROM RENTCAR WHERE NO=?
     RentCarDTO rcDto = dao.getOneCar(otDto.getNo());
  
  
     // 기본예약금액 : 옵션 제외한 금액
     int rentReserve = rcDto.getPrice() * otDto.getQuantity() * otDto.getDays();
     
     // 옵션금액 : 선택한 옵션들의 금액만 별도로 산정한 금액
     int   optionPrice = insurance + wifi + navigation + babyseat;  
     int optionReserve = optionPrice * otDto.getQuantity() * otDto.getDays();
       
     // 예약 총액 : 기본예약금액 + 옵션금액
     
   %>
   
   <div align="center">
     <table width="1000">
       <tr height="100">
         <td align="center"> <h2>차량 예약 정보</h2> </td>
       </tr>
       <tr>
         <td align="center">
           <img src="img/<%=rcDto.getImg() %>" alt=""  width="470" >
         </td>
       </tr>
       <tr height="50">
         <th align="center">기본 금액</th>
         <td><%=rentReserve %> 원</td>
       </tr>
       <tr height="50">
         <th align="center">옵션 금액</th>
         <td><%=optionReserve %> 원</td>
       </tr>
       <tr height="50">
         <th align="center">총예약 금액</th>
         <td><%=rentReserve + optionReserve %> 원</td>
       </tr>
     </table>   
   </div>
   
</body>
</html>







