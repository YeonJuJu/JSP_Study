<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP</title>
</head>
<body>
  <c:forTokens var="animal" items="사자 토끼,호랑이.너구리" delims=' ,.'>
  	${animal} <br>
  </c:forTokens>
  
  <table border="1">
  	<tr>
  		<c:forTokens var="i" items="2 3 4 5 6 7 8 9" delims= " ">
  			<td>
  				<c:forTokens var="j" items="1 2 3 4 5 6 7 8 9" delims=" ">
  					${i} * ${j} = ${i*j}<br>
  				</c:forTokens>
  			</td>
  		</c:forTokens>
  	</tr>
  </table>
</body>
</html>