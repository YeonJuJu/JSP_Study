<%@page import="com.tjoeun.jsp.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>글목록</title>
  <link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
	<table border=1 width="100%">
		<caption>게시판</caption>
		<tr><th>번호</th><th>제목</th><th>작성자</th><th>이메일</th><th>조회수</th><th>IP</th><th>작성일</th></tr>
	
		<%   
		      BoardDAO dao = BoardDAO.getInstance();
		      int total = dao.getTotal();
		      
		      // paging 하기
		      
		      String pageNum = request.getParameter("pageNum");
		      
		      // pageNum를 클릭하지 않고 list.jsp를 실행한 경우
		      if(pageNum == null || pageNum.equals("")){
		        pageNum = "1";
		      }
		      
		      // curPage - current Page      
		      int curPage = Integer.parseInt(pageNum);
		      
		      final int PAGESIZE  = 10;  // 한 페이지에 보여주는 게시글 개수
		      final int BLOCKSIZE = 10;  // 한블럭당 페이지수
		      
		      int startRow = (curPage - 1) * PAGESIZE + 1;
		      int endRow   = startRow + PAGESIZE - 1;
		      
		      int pageCount = (int)Math.ceil((double)total / PAGESIZE);
		      
		      int startPage = (curPage - 1) / 10 * 10 + 1;
		        
		      int endPage  =  startPage + BLOCKSIZE - 1;
		      
		      if(endPage > pageCount){
		        endPage = pageCount;
		      }
		      
		      int rowNum = total - startRow;
		      
		      if(total == 0){
		        out.println("<tr><td>데이터가 없습니다</td></tr>");
		      }else{
		      	/* List<BoardDTO> list = dao.selectList(startRow, endRow);
		        for(BoardDTO dto : list){
		          
		        } */
		      }
	    %>
	    
	</table>  
</body>
</html>