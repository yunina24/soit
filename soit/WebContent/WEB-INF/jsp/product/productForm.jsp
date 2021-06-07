<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>

<script>
	$(function(){
		CKEDITOR.replace('content',{
			filebrowserUploadUrl: '${pageContext.request.contextPath }/fileUpload',
			height: '600px',
			width: '800px'
		});
	})
</script>


<form id="frm" action="noticeInsert.do" method="post">
	<input type="hidden" name="productScope" value="5">
</form>

<div align="center">
 	<div style="width: 100%; text-align: center; padding-top:3%">
 		<h3>Product writing</h3>
 	</div><br>
 	
	<div align = "center">
		<form id="frm" action="productInsert.do" method="post">
			<div>
				<table>
					<tr>
						<td width="470"><input style="border:0;" type="text" name="productName" value="Produck-name" onFocus="this.value='';return true;"></td>
						<td><input style="border:0;" type="text" name="productPrice" value="Price" onFocus="this.value='';return true;"></td>
						<td>
							<select name="productDivision" >
							<option value=" ">= DIVISION =</option>
							<option value="RING">RING</option>
							<option value="EARRING">EARRING</option>
							<option value="NECTLACE">NECTLACE</option>	 
							</select>
						</td>
					</tr>
				</table>
				<table>
					<tr>
						<td colspan="4" ><textarea id ="content" name="productDesc"></textarea>
						</td>
					</tr>
				</table>
			</div> <br>
		</form>
			<div>
				<button type="button" class="btn btn-size-sm" onclick="location.href='productInsert.do'">SAVE</button>
				<button type="button" class="btn btn-size-sm" onclick="location.href='productAll.do'">ListHome</button>
			</div><br>
	</div>
	</div>