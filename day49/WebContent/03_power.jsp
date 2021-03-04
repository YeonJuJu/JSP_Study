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
    <h1>거듭제곱</h1>
    
    2^2 = <%= power(2,2) %><hr>
    2^3 = <%= power(2,3) %><hr>
    2^4 = <%= power(2,4) %><hr>
    2^5 = <%= power(2,5) %><hr>
    2^6 = <%= power(2,6) %><hr>
    
</body>
</html>

<%! 
	private int power(int base, int exponent){
		int result = 1;
		for(int i=0;i<exponent;i++){
			result *=base;
		}
		
		return result;
	}
%>