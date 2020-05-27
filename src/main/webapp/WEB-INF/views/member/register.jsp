
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

   <style type="text/css">
      /* .help-block을 일단 보이지 않게 설정 */
      #myForm .help-block{
         display: none;
      }
      /* glyphicon을 일단 보이지 않게 설정 */
      #myForm . glyphicon{
         display: none;
      }
   </style>


</head>
<title>회원가입</title>
<script type="text/javascript">
	$(document).ready(function() {
		// 취소
		$(".cencle").on("click", function() {
			location.href = "/";
		})

		$("#submit").on("click", function() {
			if ($("#userId").val() == "") {
				alert("아이디를 입력해주세요.");
				$("#userId").focus();
				return false;
			}
			
			if ($("#userPass").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#userPass").focus();
				return false;
			}
			if($("#userPass2").val()==""){
				alert("2차 비밀번호를 입력해주세요.");
				$("#userPass2").focus();
				return false;
			}
			
			
			if ($("#userName").val() == "") {
				alert("성명을 입력해주세요.");
				$("#userName").focus();
				return false;
			}
			
			if($("#email").val()=="") {
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				return false;
			}
			
			if($("#address").val()==""){
				alert("주소를 입력해주세요");
				$("#address").focus();
				return false;
			}
			
			if($("#gender").val()==""){
				alert("성별을 작성해주세요");
				$("#gender").focus();
				return false;
			}
			
			var idChkVal = $("#idChk").val();
			if (idChkVal == "N") {
				alert("중복확인 버튼을 눌러주세요.");
			} else if (idChkVal == "Y") {
				$("#regForm").submit();
			}
			
		});
	})

	function fn_idChk() {
		$.ajax({
			url : "/member/idChk",
			type : "post",
			dataType : "json",
			data : {
				"userId" : $("#userId").val()
			},
			success : function(data) {
				if (data == 1) {
					alert("중복된 아이디입니다.");
				} else if (data == 0) {
					$("#idChk").attr("value", "Y");
					alert("사용가능한 아이디입니다.");
				}
			}
		});
	};
	
	function fn_checkEmail(){
		$.ajax({
			url : "/member/checkEmail",
			type : "post",
			dataType: "json",
			data : {
				"email" : $("#email").val()
			},
			success : function(data) {
				if (data ==1) {
					alert("중복된 이메일 입니다.");
				}else if(data ==0){
					$("#checkEmail").attr("value", "Y");
					alert("사용 가능한 이메일입니다.");
				}
			}
		});
	}
//이메일부터 다시

	//성공 상태로 바꾸는 함수
	   function successState(sel){
	      $(sel)
	      .parent()
	      .removeClass("has-error")
	      .addClass("has-success")
	      .find(".glyphicon")
	      .removeClass("glyphicon-remove")
	      .addClass("glyphicon-ok")
	      .show();
	      
	      $("#myForm button[type=submit]").removeAttr("disabled");
	   }
	 
	   //에러 상태로 바꾸는 함수
	   function errorState(sel){
	      $(sel)
	      .parent()
	      .removeClass("has-success")
	      .addClass("has-error")
	      .find(".glyphicon")
	      .removeClass("glyphicon-ok")
	      .addClass("glyphicon-remove")
	      .show();
	      $("#myForm button[type=submit]").attr("disabled", "disabled");
	   };
	
	
</script>
<body>
	<section id="container">
		<form action="/member/register" method="post" id="regForm">
			<div class="form-group has-feedback">
				<label class="control-label" for="userId">아이디</label> <input
					class="form-control" type="text" id="userId" name="userId" />
				<button class="idChk" type="button" id="idChk" onclick="fn_idChk();"
					value="N">중복확인</button>
			</div>
			 <div class="form-group has feedback">
			  <label class="control-label" for="userPass">비밀번호</label>
         <input class="form-control" type="password" name="userPass" id="userPass" required="required"/>
         
         <span id="pwdRegErr" class="help-block">숫자와 글자 조합으로 6글자 이상 10글자 이하를 입력하세요</span>
         <span class="glyphicon glyphicon-ok form-control-feedback"></span>
      </div>
   
      <div class="form-group has feedback">
         <label class="control-label" for="userPass2">비밀번호 재확인</label>
         <input class="form-control" type="password" name="userPass2" id="userPass2" required="required"/>
         <span id="rePwdErr" class="help-block">비밀번호와 일치하지 않습니다. 다시 입력해 주세요.</span>
         <span class="glyphicon glyphicon-ok form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
         <label class="control-label" for="email">이메일</label>
         <input class="form-control" type="email" name="email" id="email" required="required"/>
         <button class="checkEmail" type="button" id="checkEmail" onclick="fn_emailCheck();"
					value="N">중복확인</button>
         <span id="emailErr" class="help-block">올바른 이메일 형식이 아닙니다. 다시 입력해 주세요.</span>
         <span class="form-control-feedback"></span>
      </div>
			<div class="form-group has-feedback">
				<label class="control-label" for="userName">성명</label> 
				<input class="form-control" type="text" id="userName" name="userName" />
			</div>
			
				
			<div class="form-group has-feedback">
					<label class="control-label" for="address">주소</label>
					<input class="form-control" type="text" id="address" name="address" />
				</div>
				
				<div class="form-group has-feedback">
					<label class="control-label" for="gender">성별</label>
					  <select class="form-control" id="gender" name="gender">
         	 			 <option value="female">여성</option>
         			   <option value="male">남성</option>
         </select>
				</div>

		</form>
		<div class="form-group has-feedback">
			<button class="btn btn-success" type="button" id="submit">회원가입</button>
			<button class="cencle btn btn-danger" type="button">취소</button>
		</div>
	</section>

</body>

</html>