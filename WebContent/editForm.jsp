<%@page import="www.jcc.com.vo.control.BoardControl"%>

<%@page import="www.jcc.com.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String param1 = request.getParameter("id");
	Board param = new Board();
	
	param.setId(Integer.parseInt(param1));
	
	BoardControl control = new BoardControl();
	Board board = control.selectOne(param);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성</title>
<link rel="stylesheet" href="./css/form.css">
</head>
<body>
	<div class="wrap">
		<h1>글수정</h1>
		<form action="./edit.jsp" method="GET">
			<dl>
				<dt>제목</dt>
				<dd><input type="text" placeholder="제목 입력" name="title" value="<%=board.getTitle()%>"/></dd>
			</dl>
			<dl>
				<dt>작성자</dt>
				<dd><input type="text" placeholder="작성자 입력" name="writer" value="<%=board.getWriter()%>"/></dd>
			</dl>
			
			<dl>
				<dt>내용</dt>
				<dd><textarea placeholder="내용 입력" name="content"><%=board.getContent()%></textarea>
			</dl>
			<input type="hidden" name="id" value="<%=board.getId()%>"/>
			<input type="submit" value="전송"/>
		</form>
	</div>
</body>
</html>