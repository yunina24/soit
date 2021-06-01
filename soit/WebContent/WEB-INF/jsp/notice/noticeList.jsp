<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function formSubmit(id){
      frm.id.value = id;
      frm.submit();
	}
</script>
</head>
<body>

	<form id = "frm" action="notice.do" method="post">
		<input type="hidden" id="id" name="id">
	</form>
	<div align="center">
		<h3>Notice</h3>
		<div style="width:60%"> 
			<table class="table" border="1">
				<tr align="center">
					<th width="5%">no</th>
					<th width="60%">title</th>
					<th width="10%">date</th>
					<th width="5%">hit</th>
				</tr>
				<c:forEach items="${noticeList }" var="vo">
					<tr onclick="formSubmit(${vo.bbs_num })">
						<td>${vo.bbs_num }</td>
						<td>${vo.title }</td>
						<td>${vo.up_date }</td>
						<td>${vo.hit }</td>
					</tr>
				</c:forEach>
			</table>
			<div>
				<button type="button" onclick="location.href='main.do'">HOME</button>
				<c:if test="${id eq 'admin' }">
					<button type="button" onclick="location.href='noticeForm.do'">writing</button>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>