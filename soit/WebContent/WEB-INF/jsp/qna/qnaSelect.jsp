<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	// 수정
	function qnaUpdate() {
		let title = document.getElementById("ctitle").value;      
		let content = document.getElementById("ccontent").value;
		
		frm.title.value = title;
		frm.content.value = content;
		frm.submit();
	}
	// 삭제
	function qnaDelete(){
		let id = document.getElementById("cid").innerHTML;
		
		frrm.did.value=id;
		frrm.submit();
	}
	
</script>


    
<div align="center">
 	<div style="width: 100%; text-align: center; padding-top:3%">
 		<h3>QnA</h3>
 	</div><br>
 	
	<!-- 수정 -->
		<form id="frm" action="qnaUpdate.do" method="post">
			<input type="hidden" name="bbs_num" value="${qna.bbs_num }">
			<input type="hidden" name="title">
			<input type="hidden" name="content">
		</form>
	<!-- 삭제 -->
	<form id="frrm" action="qnaDelete.do" method="post">
		<input type="hidden" name="did">
	</form>
	
	
<div align="center">
<div style="width:60%"> 
	<table width="100%" >
		<tr align="center" >
			<th id = "cid">${qna.bbs_num }</th>
			<td>${qna.title }</td>
			<td>${qna.writer }</td>
			<td>${qna.up_date }</td>
			<th>조회수</th>
			<td>${qna.hit }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="5"><input id="ctitle" type="text" value="${qna.title }"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="5"><textarea id="ccontent" rows="6" cols="90">${qna.content }</textarea></td>
		</tr>
	</table>
	<div>
		<button type="button" onclick="location.href='qnaListPaging.do'">목록보기</button>
		<c:if test="${id eq qna.writer }">
			<button type="button" onclick="qnaUpdate()">수정</button>
			<button type="button" onclick="qnaDelete()">삭제</button>
		</c:if>
	</div>
</div>
</div>
</div>