<%@page import="www.jcc.com.vo.control.BoardControl"%>
<%@page import="www.jcc.com.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	int id = Integer.parseInt(request.getParameter("id"));
	
	Board board = new Board();
	board.setId(id);
	board.setTitle(title);
	board.setContent(content);
	board.setWriter(writer);
	
	BoardControl control = new BoardControl();
	int result = control.updateBoard(board);
	
	out.print("result :"+result);
%>