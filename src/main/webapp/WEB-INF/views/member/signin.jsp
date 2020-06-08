<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <link rel="stylesheet" href="/resources/css/login/login.css" type="text/css">

<html>
<head>
   <title>kubg</title>
</head>

<body>
    <div class="main">
        <section class="login">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="/resources/images/login/login.jpg" alt="sing up image"></figure>
                        <button type="button" class="btn btn-default pull-right joinBtn" onclick="location.href='/member/register'">
                                <span class="glyphicon glyphicon-hand-right"></span> 회원가입</button>
                    </div>
                    <div class="signin-form">
                        <h2 class="form-title">Login</h2>
                        <form method="POST" class="register-form" id="login-form">
                            <div class="form-group">
                                <input type="text" name="userId" id="userId" required="required" placeholder="11111" />
                            </div>
                            <div class="form-group">
                                <input type="password" name="userPass" id="userPass" required="required"
                                    placeholder="11111" />
                                <c:if test="${msg == false}">
                                    <p style="color:#f00;">존재하지않는 아이디이거나 비밀번호가 틀립니다.</p>
                                </c:if>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin_btn" id="signin_btn" value="로그인" />
                                <button type="button" id="signin_cancel" onclick="location.href='/'">취소</button>
                            </div>
                        </form>
                        <div class="socials">
                            <a href="/resources/images/login/kakao.jpg"><img src="/resources/images/login/Kakao.jpg"></a>
                            <a href="/resources/images/login/naver.jpg"><img src="/resources/images/login/naver.jpg"></a>
                            <a href="/resources/images/login/facebook.jpg"><img src="/resources/images/login/facebook.jpg"></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>