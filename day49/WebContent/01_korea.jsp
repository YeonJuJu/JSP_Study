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
   <h1>Declaration</h1>
   
   <%  /*scriptlet -> 스크립틀릿에서 선언하는 변수는 지역변수 */
   		String name = team + "Fighting~";
   %> 
   
   <%! /*선언부*/ 
   		String team = "Korea";	
   %>
   
      팀이름 : <%= name %>
</body>
</html>