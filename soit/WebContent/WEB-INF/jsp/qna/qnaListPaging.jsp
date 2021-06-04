<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qnaListPaging.jsp</title>
<script>
	function goPage(page) {
		location.href = "qnaListPaging.do?page=" + page;
	}
</script>
</head>
<body>

	<div style="width: 100%; text-align: center; padding-top: 3%">
		<h3>QnA</h3>
	</div>
	<br>

	<div align="center">
		<div style="width: 60%">
			<table class="table"
				style="border-bottom: 1px solid silver; border-left: none; border-right: none;">
				<tr align="center"
					style="border-bottom: 1px solid silver; border-top: 1px solid silver;">
					<th width="5%">no</th>
					<th width="60%">title</th>
					<th width="10%">writer</th>
					<th width="10%">date</th>
					<th width="5%">hit</th>
				</tr>
				<c:forEach items="${qnaList }" var="vo">

					<tr onclick="location.href='qnaSelect.do?bbs_num=${vo.bbs_num}'">
						<td style="text-align: center;">${vo.bbs_num }</td>
						<c:if test="${vo.upper_num eq 0}">
							<td>${vo.title }</td>
						</c:if>
						<c:if test="${vo.upper_num ne 0}">
							<td>&nbsp;&nbsp; └re: ${vo.title }</td>
						</c:if>
						<td style="text-align: center;">${vo.writer }</td>
						<td style="text-align: center;">${vo.up_date }</td>
						<td style="text-align: center;">${vo.hit }</td>
					</tr>
				</c:forEach>
			</table>

		</div>
	</div>
	<br>

	<div style="width: 50%; text-align: center; float: right;">
		<c:if test="${id eq vo.writer }">
			<button type="button" class="btn btn-size-sm" onclick="location.href='qnaForm.do'">writing</button>
		</c:if>
	</div>

	<div style="width: 100%; text-align: center; padding: 3%">
		<!-- 페이징 호출 -->
		<jsp:include page="../common/paging.jsp" flush="true">
			<jsp:param name="firstPageNo" value="${paging.firstPageNo}" />
			<jsp:param name="prevPageNo" value="${paging.prevPageNo}" />
			<jsp:param name="startPageNo" value="${paging.startPageNo}" />
			<jsp:param name="pageNo" value="${paging.pageNo}" />
			<jsp:param name="endPageNo" value="${paging.endPageNo}" />
			<jsp:param name="nextPageNo" value="${paging.nextPageNo}" />
			<jsp:param name="finalPageNo" value="${paging.finalPageNo}" />
		</jsp:include>
		<!-- 페이징 호출 종료 -->
	</div>


</body>
</html>