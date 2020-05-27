
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

			if ($("#userName").val() == "") {
				alert("성명을 입력해주세요.");
				$("#userName").focus();
				return false;
			}

			if ($("#birth").val() == "") {
				alert("생일을 입력해주세요.");
				$("#birth").focus();
				return false;
			}

			if ($("#email").val() == "") {
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				return false;
			}

			if ($("#phone").val() == "") {
				alert("전화번호을 입력해주세요.");
				$("#phone").focus();
				return false;
			}

			if ($("#gender").val() == "") {
				alert("성별을 작성해주세요");
				$("#gender").focus();
				return false;
			}
			if ($("#oaddress").val() == "") {
				alert("우편번호를 입력해주세요");
				$("#oaddress").focus();
				return false;
			}

			if ($("#address").val() == "") {
				alert("주소를 입력해주세요");
				$("#address").focus();
				return false;
			}

			if ($("#detailaddress").val() == "") {
				alert("상세주소를 입력해주세요");
				$("#detailaddress").focus();
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

	function fn_checkEmail() {
		$.ajax({
			url : "/member/checkEmail",
			type : "post",
			dataType : "json",
			data : {
				"email" : $("#email").val()
			},
			success : function(data) {
				if (data == 1) {
					alert("중복된 이메일 입니다.");
				} else if (data == 0) {
					$("#checkEmail").attr("value", "Y");
					alert("사용 가능한 이메일입니다.");
				}
			}
		});
	}
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
				<label class="control-label" for="userPass">비밀번호</label> <input
					class="form-control" type="password" name="userPass" id="userPass"
					required="required" />
			</div>

			<div class="form-group has-feedback">
				<label class="control-label" for="userName">성명</label> <input
					class="form-control" type="text" id="userName" name="userName" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="birth">생일</label> <input
					class="form-control" type="text" name="birth" id="birth"
					required="required" />
			</div>

			<div class="form-group has-feedback">
				<label class="control-label" for="email">이메일</label> <input
					class="form-control" type="email" name="email" id="email"
					required="required" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="phone">전화번호</label> <input
					class="form-control" type="text" name="phone" id="phone"
					required="required" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="gender">성별</label> <select
					class="form-control" id="gender" name="gender">
					<option value="female">여성</option>
					<option value="male">남성</option>
				</select>
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="oaddress">우편주소</label> <input
					class="form-control" type="text" id="oaddress" name="oaddress" />
			</div>


			<div class="form-group has-feedback">
				<label class="control-label" for="detailaddress">상세주소</label> <input
					class="form-control" type="text" id="detailaddress"
					name="detailaddress" />
			</div>



		</form>
		<div class="form-group has-feedback">
			<button class="btn btn-success" type="button" id="submit">회원가입</button>
			<button class="cencle btn btn-danger" type="button">취소</button>
		</div>
	</section>

</body>

</html>