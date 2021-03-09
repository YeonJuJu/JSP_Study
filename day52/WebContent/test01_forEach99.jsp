<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
  <table border="1" align="center">
    <c:forEach var="i" begin="1" end="9">
      <tr>
        <c:forEach var="j" begin="2" end="9">
          <c:if test="${j % 2 == 1 }" >
	        <td>
	          ${i } X ${j } = ${i * j }
	        </td>
          </c:if>
        </c:forEach>
      </tr>
    </c:forEach>
  </table>
</body>
</html>







