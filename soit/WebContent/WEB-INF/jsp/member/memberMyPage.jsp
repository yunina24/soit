<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	// 수정
	function memberUpdate() {
		let pwd = document.getElementById("memberPwd").value;      
		let pNum = document.getElementById("memberPhone").value;
		let add = document.getElementById("memberAddr").value;
		
		frm.password.value = pwd;
		frm.phone_num.value = pNum;
		frm.address.value = add;
		frm.submit();
	}
	// 삭제
	function memberDelete(){
		let id = document.getElementById("memberId").value;
		
		frrm.did.value=id;
		frrm.submit();
	}
	
</script>

	<!-- 수정 -->
		<form id="frm" action="memberUpdate.do" method="post">
			<input type="hidden" name="id" value="${member.id }">
			<input type="hidden" name="password">
			<input type="hidden" name="name" value="${member.name }">
			<input type="hidden" name="phone_num">
			<input type="hidden" name="address">
		</form>
	<!-- 삭제 -->
	<form id="frrm" action="memberDelete.do" method="post">
		<input type="hidden" name="did">
	</form>
	
	
	
 	<div style="width: 100%; text-align: center; padding-top:3%">
 		<h3>My page</h3><br> <br>
 	</div>
	<div style="width: 100%; text-align: center;">
	<div style="width: 320px; display: inline-block; padding-bottom: 3%; ">
	    <div class="register-box">
	            <div class="form__group mb--20">
	                <label style="float:left;" class="form__label" for="email"> &nbsp; ID <span class="required"></span></label>
	                <input readonly type="text" class="form__input" id="memberId" name="memberId" value="${member.id }">
	            </div>
	            
	            <div class="form__group mb--20">
	               <label  style="float:left;" class="form__label" for="register_password">your name <span class="required"></span></label>
	                <input readonly type="text" class="form__input" id="memberName" name="memberName" value="${member.name }">
	            </div>
	            
	            <div class="form__group mb--20">
	               <label  style="float:left;" id="cpassword" class="form__label" for="register_password">Password <span class="required">*</span></label>
	                <input type="password" class="form__input" id="memberPwd" name="memberPwd">
	            </div>	     
	            
	            <div class="form__group mb--20">
	               <label  style="float:left;" id="cnum" class="form__label" for="register_password">phone number <span class="required">*</span></label>
	                <input type="text" class="form__input" id="memberPhone" name="memberPhone">
	            </div>	     
	                   
	            <div class="form__group mb--20">
	               <label  style="float:left;" id="cadd" class="form__label" for="register_password">Address <span class="required">*</span></label>
	                <input type="text" class="form__input" id="memberAddr" name="memberAddr">
	            </div>
	            
	            <p  class="privacy-text mb--20">Your personal data will be used to support your experience throughout this website!</p>
	            
	            <div class="form__group">
	                <button type="button" onclick="memberUpdate()" class="btn btn-size-sm" >Save</button> &nbsp; &nbsp;
	                <button type="button" onclick="memberDelete()" class="btn btn-size-sm">Secession</button>
	            </div>
	    </div>
	</div>
	</div>

