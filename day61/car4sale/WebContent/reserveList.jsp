<%@page import="com.tjoeun.jsp.model.ReserveListDTO"%>
<%@page import="java.util.ArrayList"%>
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
    	String id = (String)session.getAttribute("id");
    
    	if(id == null){
    %>
    		<script type="text/javascript">
    			alert("로그인 후에 이용해주세요.");
    			location.href="rentCar.jsp?center=login.jsp";
    		</script>
    <%
    	}
    	
  		RentCarDAO dao = RentCarDAO.getInstance();
  		ArrayList<ReserveListDTO> list = dao.selectReserveListbyId(id);
    	
    %>
    
    <div align="center">
    	<table width="1000">
    		<tr height="100">
    			<td colspan="2" align="center"><h2>예약 목록</h2></td>
    		</tr>
    	</table>
    	
    	<table border="1" width="1000">
    		<tr>
    			<td width="150" align="center">차량이미지</td>
    			<td width="150" align="center">차 량 명</td>
    			<td width="150" align="center">대 여 일</td>
    			<td width="60" align="center">대여기간</td>
    			<td width="100" align="center">대여금액</td>
    			<td width="60" align="center">대여수량</td>
    			<td width="60" align="center">보험적용</td>
    			<td width="60" align="center">Wifi</td>
    			<td width="60" align="center">네비게이션</td>
    			<td width="60" align="center">베이비시트</td>
    			<td width="90" align="center">삭 제</td>
    		</tr>
    		
    		<%
    			for(int i=0; i<list.size();i++){
    				ReserveListDTO dto = list.get(i);
    		%>
    				<tr height="40">
    					<td width="150" align="center"><img src="img/<%=dto.getImg()%>" alt="carImg" width="120" height="70"></td>
		    			<td width="150" align="center"><%=dto.getName()%></td>
		    			<td width="150" align="center"><%=dto.getRentdate()%></td>
		    			<td width="60" align="center"><%=dto.getDays()%></td>
		    			<td width="100" align="center"><%=dto.getPrice()%></td>
		    			<td width="60" align="center"><%=dto.getQuantity()%></td>
		    			<td width="60" align="center"><%=dto.getInsurance()%></td>
		    			<td width="60" align="center"><%=dto.getWifi()%></td>
		    			<td width="60" align="center"><%=dto.getNavigation()%></td>
		    			<td width="60" align="center"><%=dto.getBabyseat()%></td>
		    			<td width="90" align="center">
		    				<button onClick="location.href='delReserve.jsp?reserveno=<%=dto.getReserveno()%>'">삭 제</button>
		    			</td>
    				</tr>
    		<%	
    			}
    		
    		%>
    	</table>
    </div>
</body>
</html>