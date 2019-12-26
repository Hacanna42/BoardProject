<%@page import="www.jcc.com.vo.control.BoardControl"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="www.jcc.com.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Logger logger = Logger.getLogger("detail.jsp");
	String param1 = request.getParameter("id");
	logger.info("param1 = " + param1);
	
	int id = Integer.parseInt(param1);
	
	Board param = new Board();
	param.setId(id);
	
	BoardControl control = new BoardControl();
	Board board = control.selectOne(param);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/form.css">
<script type="text/javascript">
function deleteBoard(boardId){
	if(confirm("삭제 하시겠습니까?")){
		window.location.replace("./delete.jsp?id="+boardId);
	}else{
		alert('취소하셨습니다.');
	}
}
</script>
</head>
<body>
	<div class="wrap">
		<dl>
			<dt>제목</dt>
			<dd><%=board.getTitle() %></dd>
		</dl>
		<dl>
			<dt>글쓴이</dt>
			<dd><%=board.getWriter() %></dd>
		</dl>
		<dl>
			<dt>작성일</dt>
			<dd><%=board.getWdate() %></dd>
		</dl>
		
		<dl>
			<dt>내용</dt>
			<dd>
				<%=board.getContent() %>
			</dd>
		</dl>
		<br>
		<a href="/board.jsp">목록</a>
		<a href="/editForm.jsp?id=<%=board.getId()%>">수정</a>
		<input type="button" value="삭제" onclick="javascript:deleteBoard(<%=board.getId()%>);"/>
	</div>
</body>
</html>