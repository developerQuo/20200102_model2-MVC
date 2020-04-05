<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="bitcamp.java142.ch6.kcmjf.common.utils.SessionUtil" %>
<%
	SessionUtil.setNoCache(request, response);
%>
<%
	System.out.println(" (log) updateKcmBoardOK entered");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>게시판 글수정</title>
		<script type="text/javascript"
				src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
		<!-- <script type="text/javascript"
				src="../js/jquery-1.11.0.min.js"></script> -->
<%
		int nCnt = (int)request.getAttribute("nCnt");
		System.out.println(" nCnt >>>>>>> " + nCnt);
		if (nCnt == 1){
			System.out.println(" 수정성공 페이지로 보내기 ");
%>
			<script type="text/javascript">
				alert("게시판 글수정 성공!");
			</script>
<%
		}else{
%>
			<script type="text/javascript">
				alert("게시판 글수정 실패...");
			</script>
<%
		}
%>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#selectFunc").prop("value", "SA");
			$("#boardForm").prop("method", "POST")
			.prop("action", "/Model2_MVC/KcmHelloBoardServlet")
			.prop("enctype", "application/x-www-form-urlencoded")
			.submit();
		});
	</script>
	</head>
	<body>
		<form id="boardForm">
			<input type="hidden" id="selectFunc" name="selectFunc">
		</form>
	</body>
</html>