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
		<input type="hidden" name="title"> <input type="hidden"
			name="content">
	</form>

	<div align="center">
		<div style="width: 60%">
			<table class="table"
				style="width: 100%; border-bottom: 1px solid silver; border-left: none; border-right: none;">
				<tr
					style="border-bottom: 1px solid silver; border-top: 1px solid silver;">
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;제목</td>
					<td><input style="border: none; margin-left: 10px;" type="text" id="ctitle" name="title"></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내용</td>
					<td><textarea style="border: none; resize: none; margin-left: 10px;" id="ccontent" rows="20" cols="130"></textarea></td>
				</tr>
			</table>
			<br>
			<br>
			<div>
				<button type="button" class="btn btn-size-sm" onclick="qnaInsert()">Save</button>
				<button type="button" class="btn btn-size-sm" onclick="location.href='qnaListPaging.do'">ListHome</button>
			</div>
			<br> <br>
		</div>