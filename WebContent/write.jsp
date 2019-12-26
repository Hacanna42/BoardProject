<%@page import="www.jcc.com.vo.control.BoardControl"%>
<%@page import="www.jcc.com.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String param1 = request.getParameter("title");
	String param2 = request.getParameter("content");
	String param3 = request.getParameter("writer");
	
	Board board = new Board();
	board.setTitle(param1);
	board.setContent(param2);
	board.setWriter(param3);
	
	out.print(board);
	
	BoardControl control = new BoardControl();
	int result = control.insert(board);
%>