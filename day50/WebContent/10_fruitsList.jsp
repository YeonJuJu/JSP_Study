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
    <h2>과일 목록</h2>
    잘 팔린 과일 1위 : ${fruits[0] }<br>
    잘 팔린 과일 2위 : ${fruits[1] }<br>
    잘 팔린 과일 3위 : ${fruits[2] }<br>
    잘 팔린 과일 4위 : ${fruits[3] }<br>
    잘 팔린 과일 5위 : ${fruits[4] }<br>
</body>
</html>