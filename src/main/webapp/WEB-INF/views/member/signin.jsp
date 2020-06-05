<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부트스트랩 -->
<link rel="stylesheet" href="/resources/css/user/sign/login.css">

</head>
<body>
    <div class="main">
        <section class="login">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="/resources/images/login/login.jpg" alt="sing up image"></figure>
                        <a href="/register"><button type="button" class="btn btn-default pull-right joinBtn">
                                <span class="glyphicon glyphicon-hand-right"></span> 회원가입</button></a>
                    </div>
                    <div class="signin-form">
                        <h2 class="form-title">Login</h2>
                        <form method="POST" class="register-form" id="login-form">
                            <div class="form-group">
                                <input type="text" name="userId" id="userId" required="required" placeholder="ID" />
                            </div>
                            <div class="form-group">
                                <input type="password" name="userPass" id="userPass" required="required"
                                    placeholder="PW" />
                                <c:if test="${msg == false}">
                                    <p style="color:#f00;">존재하지않는 아이디이거나 비밀번호가 틀립니다.</p>
                                </c:if>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin_btn" id="signin_btn" value="로그인">
                                <a href="/"><button type="button" id="signin_cancel">취소</button></a>
                            </div>
                        </form>
                        <div class="socials">
                            <a href=""><img src="/resources/images/login/Kakao.jpg"></a>
                            <a href=""><img src="/resources/images/login/naver.jpg"></a>
                            <a href=""><img src="/resources/images/login/facebook.jpg"></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>
