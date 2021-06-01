<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberLoginForm.jsp</title>
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
</head>
<body> 
 	<div style="width: 100%; text-align: center; padding-top:5%">
 		<h3>login</h3><br>
 	</div>
	<div style="width: 100%; text-align: center;">
	<div style="width: 320px; display: inline-block; padding-bottom: 8%;">
       <form class="form form--login" id="frm" action="memberLogin.do" method="post">
          <div class="form__group mb--20">
              <label style="float:left;" class="form__label" for="username_email"> &nbsp; ID <span class="required">*</span></label>
              <input type="text" class="form__input" id="memberId" name="memberId">
          </div>
          <div class="form__group mb--20">
             <label style="float:left;" class="form__label" for="login_password"> &nbsp; Password <span class="required">*</span></label>
              <input type="password" class="form__input" id="memberPwd" name="memberPwd">
          </div>
          <div class="d-flex align-items-center mb--20">
              <div class="form__group mr--30">
                  <button type="button" class="btn btn-size-sm" onclick="formCheck()" >Login</button>
              </div><br><br>
            <div class="form__group mr--30">
                  <button type="button" class="btn btn-size-sm" onclick="location.href='memberJoinForm.do'">Sign Up</button>
              </div>
              <div class="form__group">
              </div>
          </div>
      </form>
	</div></div>
</body>
</html>