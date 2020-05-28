<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<title>회원탈퇴</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#userPass").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPass").focus();
					return false;
				}
				$.ajax({
					url : "/member/passChk",
					type : "POST",
					dateType : "json",
					data : $("#delForm").serializeArray(),
					success: function(data){
						
						if(data==true){
							if(confirm("회원탈퇴하시겠습니까?")){
								$("#delForm").submit();
							}
						}else{
							alert("패스워드가 틀렸습니다.");
							return;
						}
					}
				})
				
			});
			
				
			
		})
	</script>
	<body>
		<section id="container">
			<form action="/member/memberDelete" method="post" id="delForm">
				<div class="form-group has-feedback">
					<label class="control-label" for="userId">아이디</label>
					<input class="form-control" type="text" id="userId" name="userId" value="${member.userId}" readonly="readonly"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userPass">패스워드</label>
					<input class="form-control" type="password" id="userPass" name="userPass" />
				</div>
				<div class="form-group">
					<label for="mem_name">이름</label> <input type="text"
						class="form-control" id="userName" name="userName"
						value="${member.userName}" readonly="readonly">
				</div>

				<div class="form-group">
					<label for="mem_birth">생년월일</label> <input type="tel"
						class="form-control" id="birth" name="birth"
						value="${member.birth}" readonly="readonly">
				</div>

				<div class="form-group">
					<label for="mem_email">이메일 주소</label> <input type="email"
						class="form-control" id="email" name="email" value="${member.email}" readonly="readonly">
					<div class="eheck_font" id="email_check"></div>
				</div>

				<div class="form-group">
					<label for="mem_phone">휴대폰 번호('-'없이 번호만 입력해주세요)</label> <input
						type="tel" class="form-control" id="phone" name="phone"
						value="${member.phone}" readonly="readonly">
					<div class="eheck_font" id="phone_check"></div>
				</div>

				<div class="form-group">
					<label for="mem_gender">성별 </label> <input 
						id="gender" name="gender" value="${member.gender}" readonly="readonly">
				</div>
	
				<div class="form-group">
					<input class="form-control" style="width: 40%; display: inline;"
						placeholder="우편번호" name="oaddress" id="oaddress" value="${member.oaddress}"
						readonly="readonly"/>
				</div>
			
				<div class="form-group">
					<input class="form-control" style="top: 5px;" placeholder="도로명 주소"
						name="address" id="address" type="text" value="${member.address}" readonly="readonly" />
				</div>
			
				<div class="form-group">
					<input class="form-control" value="${member.detailaddress} "
						readonly="readonly" />
				</div>
			</form>
			<div class="form-group has-feedback">
				<button class="btn btn-success" type="button" id="submit">회원탈퇴</button>
				<button class="cencle btn btn-danger" type="button">취소</button>
			</div>
			<div>
				<c:if test="${msg == false}">
					비밀번호가 맞지 않습니다.
				</c:if>
			</div>
		</section>
		
	</body>
	
</html>