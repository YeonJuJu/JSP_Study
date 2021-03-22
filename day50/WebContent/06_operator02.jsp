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
    <h2> EL 연산자 </h2>
   
    num1 : ${param.num1 }<br>
    num2 : ${param.num2 }<br>
    
    
    num1 + num2 : ${param.num1 } + ${param.num2 }<br>
    num1 - num2 : ${param.num1 } - ${param.num2 }<br>
    num1 * num2 : ${param.num1 } * ${param.num2 }<br>
    num1 / num2 : ${param.num1 } / ${param.num2 }<br>
    
    num1 이 더 크다 : ${param.num1 } - ${param.num2 }>0<br>
    num2 이 더 크다 : ${param.num2 } - ${param.num1 }>0
    
    <br><br>
    
    num1 은  ${param.num1>0 ? "양수" : "음수" }
    num2 은  ${param.num2>0 ? "양수" : "음수" }
    
    
</body>
</html>