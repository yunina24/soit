<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	function qnaInsert() {
		let title = document.getElementById("ctitle").value;
		let content = document.getElementById("ccontent").value;

		frm.title.value = title;
		frm.content.value = content;
		frm.submit();
	}
</script>
<div align="center">
	<div style="width: 100%; text-align: center; padding-top: 3%">
		<h3>QnA writing</h3>
	</div>
	<br>

	<form id="frm" action="qnaInsert.do" method="post">
		<input type="hidden" name="title"> <input type="hidden" name="content">
	</form>

	<div align="center">
		<div style="width: 60%">
			<table class="table" style="width: 100%; border-bottom: 1px solid silver; border-left: none; border-right: none;">
				<tr style="border-bottom: 1px solid silver; border-top: 1px solid silver;">
					<th font-align="center">제목</th>
					<td><input style="border: none; margin-left: 10px;" type="text" id="ctitle" name="title"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea style="border: none; resize: none; margin-left: 10px;" id="ccontent" rows="20" cols="130"></textarea></td>
				</tr>
			</table>
			<div>
				<button type="button" onclick="location.href='qnaListPaging.do'">목록보기</button>
				<button type="button" onclick="qnaInsert()">등록</button>
				<button type="reset">취소</button>
			</div>
			<br>
			<br>
		</div>