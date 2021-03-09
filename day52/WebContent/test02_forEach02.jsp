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
  <!-- text02_forEach.jsp 에서 무지개 색을 Request 데이터 저장 객체에 저장하고 지금 페이지로 이동해 무지개색 출력 -->
	
	<c:forEach var="i" begin="1" end="7">
			<c:forEach var="color" items='${rainbow}'>
				<font color='${color}' size='${i}'>야호 </font>
			</c:forEach><br>
	</c:forEach>

</body>
</html>