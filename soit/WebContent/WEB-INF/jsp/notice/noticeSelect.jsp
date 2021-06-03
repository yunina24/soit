<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	// 수정
	function noticeUpdate() {
		let title = document.getElementById("ctitle").value;      
		let content = document.getElementById("ccontent").value;
		
		frm.title.value = title;
		frm.content.value = content;
		frm.submit();
	}
	// 삭제
	function noticeDelete(){
		let id = document.getElementById("cid").innerHTML;
		
		frrm.did.value=id;
		frrm.submit();
	}
	
</script>
    
<div align="center">
	<h3>Notice</h3>
	<!-- 수정 -->
		<form id="frm" action="noticeUpdate.do" method="post">
			<input type="hidden" name="bbs_num" value="${notice.bbs_num }">
			<input type="hidden" name="title">
			<input type="hidden" name="content">
		</form>
	<!-- 삭제 -->
	<form id="frrm" action="noticeDelete.do" method="post">
		<input type="hidden" name="did">
	</form>
	
	<table border="1">
		<tr>
			<th>순번</th>
			<td id = "cid">${notice.bbs_num }</td>
			<th>작성일자</th>
			<td>${notice.up_date }</td>
			<th>조회수</th>
			<td>${notice.hit }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="5"><input id="ctitle" type="text" value="${notice.title }"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="5"><textarea id="ccontent" rows="6" cols="90">${notice.content }</textarea></td>
		</tr>
	</table>
	<div>
		<button type="button" onclick="location.href='noticeListPaging.do'">목록보기</button>
		<c:if test="${id eq 'admin' }">
			<button type="button" onclick="noticeUpdate()">수정</button>
			<button type="button" onclick="noticeDelete()">삭제</button>
		</c:if>
	</div>
</div>