<%@page import="www.jcc.com.vo.Board"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
 List<Board> list=new ArrayList<Board>();
 Board board1=new Board();
 board1.setId(5);
 board1.setTitle("코딩은 즐거워요^^");
 board1.setWriter("관리자");
 board1.setMdate("2019-12-01");
 board1.setViewCnt(100);
 
 list.add(board1);
 
 Board board2=new Board();
 board2.setId(4);
 board2.setTitle("망했다^^");
 board2.setWriter("관리자");
 board2.setMdate("2019-11-29");
 board2.setViewCnt(222);
 
 list.add(board2);
 
Board board3=new Board();
 board3.setId(3);
 board3.setTitle("이즈는");
 board3.setWriter("관리자");
 board3.setMdate("2019-11-28");
 board3.setViewCnt(222);
 
 list.add(board3);
 
 Board board4=new Board();
 board4.setId(2);
 board4.setTitle("정복자");
 board4.setWriter("관리자");
 board4.setMdate("2019-11-27");
 board4.setViewCnt(222);
 
 list.add(board4);
 
 Board board5=new Board();
 board5.setId(1);
 board5.setTitle("*공지사항*");
 board5.setWriter("관리자");
 board5.setMdate("2019-11-25");
 board5.setViewCnt(700);
 
 list.add(board5);
 
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>게시판 목록</title>
<link rel="stylesheet" href="css/board.css">
</head>
<body>
	<div class="board_list_wrap">
		<table class="board_list">
			<caption>게시판 목록</caption>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>작성일</th>
					<th>조회</th>
				</tr>
			</thead>
			<tbody>
				<%for(int i=0;i<list.size();i++){ %>
				<tr>
					
					<td><%=list.get(i).getId()%></td>
					<td>
						<a href="#"><%=list.get(i).getTitle()%></a>
					</td>
					<td><%=list.get(i).getWriter()%></td>
					<td><%=list.get(i).getMdate()%></td>
					<td><%=list.get(i).getViewCnt()%></td>
				</tr>
				<%} %>
			</tbody>
		</table>
	</div>

</body>
</html>