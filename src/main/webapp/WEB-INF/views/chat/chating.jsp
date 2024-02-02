<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert</title>
	<!-- sockJs 사용 -->
	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
</head>
<body>
	<input type="text" id="msg">
	<div class="input-group-append">
		<div id="msgArea">
			
		</div>
		<button type="button" id="sendBtn">전송</button>
	</div>
	<script src="../resources/assets/js/chat/chat.js"></script>
</body>
</html>