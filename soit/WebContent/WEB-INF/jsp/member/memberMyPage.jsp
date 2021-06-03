<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 	<div style="width: 100%; text-align: center; padding-top:3%">
 		<h3>My page</h3><br> <br>
 	</div>
	<div style="width: 100%; text-align: center;">
	<div style="width: 320px; display: inline-block; padding-bottom: 3%; ">
	    <div class="register-box">
	        <form class="form form--login" id="frm" action="memberJoin.do" method="post">
	            <div class="form__group mb--20">
	                <label style="float:left;" class="form__label" for="email"> &nbsp; ID <span class="required"></span></label>
	                <input type="text" class="form__input" id="memberId" name="memberId">
	            </div>
	            
	            <div class="form__group mb--20">
	               <label  style="float:left;" class="form__label" for="register_password">your name <span class="required"></span></label>
	                <input type="text" class="form__input" id="memberName" name="memberName">
	            </div>
	            
	            <div class="form__group mb--20">
	               <label  style="float:left;" class="form__label" for="register_password">Password <span class="required">*</span></label>
	                <input type="password" class="form__input" id="memberPwd" name="memberPwd">
	            </div>	     
	            
	            <div class="form__group mb--20">
	               <label  style="float:left;" class="form__label" for="register_password">phone number <span class="required">*</span></label>
	                <input type="text" class="form__input" id="memberPhone" name="memberPhone">
	            </div>	     
	                   
	            <div class="form__group mb--20">
	               <label  style="float:left;" class="form__label" for="register_password">Address <span class="required">*</span></label>
	                <input type="text" class="form__input" id="memberAddr" name="memberAddr">
	            </div>
	            
	            <p  class="privacy-text mb--20">Your personal data will be used to support your experience throughout this website!</p>
	            
	            <div class="form__group">
	                <button type="button" class="btn btn-size-sm" onclick="formCheck()">Save</button> &nbsp; &nbsp;
	                <input type="reset" value="secession" class="btn btn-size-sm">
	            </div>
	        </form>
	    </div>
	</div>
	</div>

