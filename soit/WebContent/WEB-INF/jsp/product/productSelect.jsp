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
 		<h3>Product</h3>
 	</div><br>
 	
	<!-- 수정 -->
		<form id="frm" action="noticeUpdate.do" method="post">
			<input type="hidden" name="bbs_num" value="${product.productNum }">
			<input type="hidden" name="title">
			<input type="hidden" name="content">
		</form>
	<!-- 삭제 -->
	<form id="frrm" action="noticeDelete.do" method="post">
		<input type="hidden" name="did">
	</form>
	
	
<!-- 표영역 -->
<div align="center;">
<div style="width:60%"> 
	<table>
		<tr>
			<td style="width:50%; padding:20px"><img src=upload/${product.productImage}></td>
			<td style="width:50%; padding:20px">
				<div style="padding-bottom:90%;">
				<h3>${product.productName }</h3>
				<h4>&#8361; ${product.price }</h4>
				<a>${product.productDivision } / ${product.productDesc }</a></div>
			</td>
		</tr>
		<tr >
			<td style="padding:5%;" collspan="2">
				상세페이지영역
			</td>
		</tr>
	</table>
</div><br><br>

	<!-- 
	<table class="table" style="width:100%;border-bottom: 1px solid silver; border-left: none; border-right: none;"  >
		<tr style="border-bottom: 1px solid silver;  border-top: 1px solid silver; ">
			<td id = "cid" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${product.productNum }</td>
			<td style="width:75%"></td>
			<td style="width:40px;">${product.productDesc }</td>
			<td style="width:30px;"> Hit&nbsp;${product.price }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="5"><textarea style="border:none; resize: none; margin-left:10px;" id ="ccontent" rows="20" cols="130"
									id="ccontent" rows="6" cols="90">${product.price }</textarea></td>
		</tr>
	</table> <br><br> -->
	
	<!-- 버튼 -->
	<div>
		<button type="button" class="btn btn-size-sm"onclick="location.href='productAll.do'">ListHome</button>
		<c:if test="${id eq 'admin' }">
		<!-- 작업예정 -->
		<button type="button" class="btn btn-size-sm"onclick="noticeUpdate()">Update</button>
		<button type="button" class="btn btn-size-sm"onclick="noticeDelete()">Delete</button>
		</c:if>
	</div><br><br>
</div>
</div>
</div>