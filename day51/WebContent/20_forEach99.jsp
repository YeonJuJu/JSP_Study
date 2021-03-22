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
  <h2>구구단</h2>
  <table border="1" cellpadding="5" cellspcing="5">
  	<tr bgcolor="#ffffaa">
  		<c:forEach var = "k" begin="2" end="10">
  			<th>${k} 단</th>
  		</c:forEach>
  	</tr>
  	
  	<tr bgcolor="#aaffaa">
  		<c:forEach var = "i" begin="2" end="10">
  			<td>
  				<c:forEach var="j" begin="1" end="9">
  					${i} * ${j} = ${i*j}<br>
  				</c:forEach>
  			</td>
  		</c:forEach>
  	</tr>
  	
  	<tr bgcolor="#ffffaa">
  		<c:forEach var = "k" begin="11" end="19">
  			<th>${k} 단</th>
  		</c:forEach>
  	</tr>
  	
  	<br>
  	
  	<tr bgcolor="#aaffaa">
  		<c:forEach var = "i" begin="11" end="19">
  			<td>
  				<c:forEach var="j" begin="1" end="9">
  					${i} * ${j} = ${i*j}<br>
  				</c:forEach>
  			</td>
  		</c:forEach>
  	</tr>
  </table>
</body>
</html>