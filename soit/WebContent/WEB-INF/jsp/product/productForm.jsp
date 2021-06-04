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


<h1>게시글 등록</h1>
	<div align = "center">
		<form id="frm" action="productInsert.do" method="post">
		<input type = "hidden" name="id" value="${id }">
		<input type = "hidden" name="uname" value="${uname }">
			<div>
				<table border="1">
					<tr>
						<td>
						<form> <select name="code" >
							    <option value=" ">== CODE ==</option>
							    <option value="A">RING</option>
							    <option value="B">EARRING</option>
							    <option value="C">NECTLACE</option>	 </select>
						</form></td>
						<td width="300"><input type="text" id="title" name="title"></td>
					</tr>
					<tr>
						<td width="300"><textarea id ="content" name="content"></textarea>
						</td>
					</tr>
				</table>
			</div>
			<div>
				<button type="button" onclick="formCheck()">등록</button>
				<button type="reset">취소</button>
				<button type="button" onclick="location.href='main.do'">목록보기</button>
			</div>
		</form>
	</div>