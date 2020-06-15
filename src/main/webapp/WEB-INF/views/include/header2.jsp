<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="row">
        <div class="col-xs-6">
          <a href="/"><img src="/resources/images/main/logo.png" alt="logo"></a>
        </div>
        <div class="col-xs-6">
       
          <form class="pull-right">
           <c:if test="${member == null}">
            <button type="button" class="btn loginbtn" data-toggle="button"
              onclick="location.href='/member/signin'">로그인</button>
            <button type="button" class="btn joinbtn" data-toggle="button"
              onclick="location.href='/member/register'">회원가입</button>
              </c:if>
              <c:if test="${member != null}">
              <c:if test="${member.verify == 0}">
               <button type="button" class="btn joinbtn" data-toggle="button"
              onclick="location.href='/admin/index'">관리자화면</button>
              </c:if>
               <button type="button" class="btn joinbtn" data-toggle="button"
              onclick="location.href='/shop/cartList'">카트 리스트</button>
               <button type="button" class="btn joinbtn" data-toggle="button"
              onclick="location.href='/shop/orderList'">주문 리스트</button>
                <button type="button" class="btn joinbtn" data-toggle="button"
              onclick="location.href='/member/memberPassChkView'">정보수정</button>
               <button type="button" class="btn joinbtn" data-toggle="button"
              onclick="location.href='/member/signout'">로그아웃</button>
               </c:if>
          </form>
         
        </div>
      </div>
      <div class="row">
        <div class="col-sm-12 marginSm">
          <nav class="navbar navbar-inverse">
            <!-- mobile -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                data-target="#bs-example-navbar-collapse-1">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
               <li><a href="/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
                <li><a href="/shop/list?c=100&l=1">상점</a></li>
<<<<<<< HEAD
                <li><a href="/">견적</a></li>
                <li><a href="/reviewboard/list">후기</a></li>
                <li><a href="/board/comunity">커뮤니티</a></li>
                <li><a href="/notice/notice">회사소개</a></li>
=======
<<<<<<< HEAD
                <li><a href="/">견적</a></li>
                <li><a href="/reviewboard/list">후기</a></li>
                <li><a href="/board/comunity">커뮤니티</a></li>
                <li><a href="/notice/notice">회사소개</a></li>
=======
                <li><a href="order_5-1.html">견적</a></li>
                <li><a href="/reviewboard/list">후기</a></li>
                <li><a href="/board/list">커뮤니티</a></li>
                <li><a href="/introduce/introduce">회사소개</a></li>
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
              </ul>
              <form class="navbar-form navbar-right" role="search">
                <input type="text" class="form-control headerSearch1">
                <button type="submit" class="btn btn-default headerSearch2" value="${scri.keyword}">검색</button>
               <c:if test="${member.userId != null}">
                <a class="btn btn-default headerSearch3" href="/shop/cartList" role="button">
                  <span class="glyphicon glyphicon-shopping-cart"></span></a>
                  </c:if>
              </form>
            </div>
          </nav>
        </div>
      </div>