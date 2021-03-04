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
    <%
    	String protocol = request.getProtocol();
    	String server = request.getServerName();
    	int port = request.getServerPort();
    	String clientIP = request.getRemoteAddr();
    	String clientHost = request.getRemoteHost();
    	String methodType = request.getMethod();
    	String url = new String(request.getRequestURL());
    	String uri = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String browser = request.getHeader("User-Agent");
    	String mediaType = request.getHeader("Accept");
    %>
    
    <h2>Request 내장 객체</h2>
    프로토콜 이름:<%= protocol%><br>
    접속한 서버명:<%= server%><br>
    접속한 서버의 port 번호:<%= port%><br>
    클라이언트 IP:<%= clientIP%><br>
    클라이언트의 호스트 이름:<%= clientHost%><br>
    현재 페이지의 method 방식:<%= methodType%><br>
    요청한 현재 페이지의 경로(URL):<%= url%><br>
    요청한 현재 페이지의 경로(URI):<%= uri%><br>
    웹 애플리케이션의 Context 경로:<%= contextPath%><br>
    사용한 웹브라우저:<%= browser%><br>
    웹브라우저가 지원하는 미디어 타입:<%= mediaType%><br>  
</body>
</html>