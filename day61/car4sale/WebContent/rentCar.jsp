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
    String center = request.getParameter("center");
    
    if(center == null){
      center = "center.jsp";  
    }
  %>
  <div align="center">
    <table width="1000">
    
    <!-- top.jsp -->
    <tr height="140" align="center">
      <td align="center" width="1000">
        <jsp:include page="top.jsp" />
      </td>
    </tr>
    
    <!-- center.jsp -->
    <tr align="center">
      <td align="center" width="1000">
        <jsp:include page="<%=center %>" />
      </td>
    </tr>
        
    <!-- bottom.jsp -->
    <tr height="100" align="center">
      <td align="center" width="1000">
        <jsp:include page="bottom.jsp" />
      </td>
    </tr>
    </table>
  </div>
</body>
</html>






