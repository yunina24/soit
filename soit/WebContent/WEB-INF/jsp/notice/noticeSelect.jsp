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
 	<div style="width: 100%; text-align: center; padding-top:3%">
 		<h3>Notice</h3>
 	</div><br>
 	
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
	
	
<div align="center">
<div style="width:60%"> 
	<table class="table" style="width:100%;border-bottom: 1px solid silver; border-left: none; border-right: none;"  >
		<tr style="border-bottom: 1px solid silver;  border-top: 1px solid silver; ">
			<td id = "cid" > ${notice.bbs_num }</td>
			<td style="width:75%">${notice.title }</td>
			<td style="width:40px;">${notice.up_date }</td>
			<td style="width:30px;"> Hit&nbsp;${notice.hit }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="5"><textarea style="border:none; resize: none; margin-left:10px;" id ="ccontent" rows="20" cols="130"
									id="ccontent" rows="6" cols="90">${notice.content }</textarea></td>
		</tr>
	</table> <br><br>
	<div>
		<button type="button" class="btn btn-size-sm"onclick="location.href='noticeListPaging.do'">ListHome</button>
		<c:if test="${id eq 'admin' }">
		<button type="button" class="btn btn-size-sm"onclick="noticeUpdate()">Update</button>
		<button type="button" class="btn btn-size-sm"onclick="noticeDelete()">Delete</button>
		</c:if>
	</div><br><br>
</div>
</div>
</div>