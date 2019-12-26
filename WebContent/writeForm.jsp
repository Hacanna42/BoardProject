<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성</title>
<link rel="stylesheet" href="./css/form.css">
</head>
<body>

	<div class="wrap">
		<h1>글작성</h1>
		<form action="./write.jsp" method="GET">
			<dl>
				<dt>제목</dt>
				<dd><input type="text" placeholder="제목 입력" name="title"/></dd>
			</dl>
			<dl>
				<dt>작성자</dt>
				<dd><input type="text" placeholder="작성자 입력" name="writer"/></dd>
			</dl>
			
			<dl>
				<dt>내용</dt>
				<dd><textarea placeholder="내용 입력" name="content"></textarea>
			</dl>
			<input type="submit" value="전송"/>
		</form>
	</div>

</body>
</html>