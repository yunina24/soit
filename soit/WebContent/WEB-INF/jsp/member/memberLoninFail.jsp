<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
<script>
	function formCheck(){
		if(frm.memberId.value ==""){
			alert("아이디를 입력하세요.")
			frm.memberId.focus();
			return false;
		}
		if(frm.memberPwd.value ==""){
			alert("비밀번호를 입력하세요.")
			frm.memberPwd.focus();
			return false;
		}
		frm.submit();
	}
</script>
	<h1>입력한 아이디와 비밀번호가 존재하지 않습니다.</h1>
</div>