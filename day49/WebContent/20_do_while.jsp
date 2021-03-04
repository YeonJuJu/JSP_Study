<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP</title>
    <script type="text/javascript">
    
    	let num;
    
    	do{
    		num = prompt("짝수를 입력하세요", 1);
    	}while(num%2 != 0);
    	
    	document.write("짝수 " + num + "을(를) 입력했습니다.");
    </script>
</head>
<body>
    
</body>
</html>

<!-- 
	JavaScript의 변수 선언
	
	-> let, const

 -->