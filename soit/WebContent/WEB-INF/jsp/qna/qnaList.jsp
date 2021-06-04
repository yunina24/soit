<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qnaList.jsp</title>
<script>
	function formSubmit(id){
      frm.id.value = id;
      frm.submit();
	}
</script>
</head>
<body>
	<form id="frm" action="qna.do" method="post">
		<input type="hidden" id="id" name="id">
	</form>
	<div align="center">
		<h3>QnA</h3>
		<div style="width: 60%">
			<table class="table" border="1">
				<tr align="center">
					<th width="5%">no</th>
					<th width="60%">title</th>
					<th width="10%">writer</th>
					<th width="10%">date</th>
					<th width="5%">hit</th>
				</tr>
				<c:forEach items="${qnaList }" var="vo">
					<tr onclick="formSubmit(${vo.bbs_num })">
						<td>${vo.bbs_num }</td>
						<c:if test="${vo.upper_num == 0}">
							<td>${vo.title }</td>
						</c:if>
						<c:if test="${vo.upper_num > 0}">
							<td>&nbsp;&nbsp; └re: ${vo.title }</td>
						</c:if>
						<td>${vo.writer }</td>
						<td>${vo.up_date }</td>
						<td>${vo.hit }</td>
					</tr>
				</c:forEach>
			</table>
			<div>
				<button type="button" onclick="location.href='main.do'">HOME</button>
				<button type="button" onclick="location.href='qnaForm.do'">writing</button>
			</div>
		</div>
	</div>
</body>
</html>