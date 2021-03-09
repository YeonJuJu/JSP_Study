<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP</title>
</head>
<body>
    <h2>지역</h2>
    
    <%-- ${param.name} : ${location["이순신"]} --%>
    ${param.name} : ${location[param.name]}<br>
    ${location["김유신"]}<br>
    ${location["안중근"]}<br>
    
</body>
</html>