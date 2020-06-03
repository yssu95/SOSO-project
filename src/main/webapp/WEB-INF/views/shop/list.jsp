
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<html>
<head>
<title>kubg</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/user/shop/store_2.css">
<link rel="stylesheet" href="/resources/css/user/shop/header-footer.css">



</head>
<body>
	<div class="container">
		<!-- header -->
		<div class="header">
			<div class="row">
				<div class="col-xs-6">
					<a href="/"><img src="logo.png" alt="logo"></a>
				</div>
				<div class="col-xs-6">
					<form class="pull-right">
						<button type="button" class="btn loginbtn" data-toggle="button"
							onclick="location.href='login.html'">로그인</button>
						<button type="button" class="btn joinbtn" data-toggle="button"
							onclick="location.href='join.html'">회원가입</button>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<nav class="navbar navbar-inverse">
						<!-- mobile -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="store_2-1.html">상점</a></li>
								<li><a href="order_5-1.html">견적</a></li>
								<li><a href="review_6-1.html">후기</a></li>
								<li><a href="notice_7-1.html">커뮤니티</a></li>
								<li><a href="introduce_8-1.html">회사소개</a></li>
							</ul>
							<form class="navbar-form navbar-right" role="search">
								<input type="text" class="form-control headerSearch1">
								<button type="submit" class="btn btn-default headerSearch2">검색</button>
								<a class="btn btn-default headerSearch3" href="4-1"
									role="button"> <span
									class="glyphicon glyphicon-shopping-cart"></span></a>
							</form>
						</div>
					</nav>
				</div>
			</div>
		</div>
		<!--header-->

		<!-- 상단 index 9개 -->
		<div class="indexIcon">
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="icon">
						<a href="/shop/list?c=101&l=2"><img src="index1.jpg" alt="웨딩홀"
							class="img-responsive img-circle"></a>
						<p id="pink">웨딩홀</p>
					</div>
					<div class="icon">
						<a href="/shop/list?c=102&l=2"><img src="index2.jpg" alt="드레스"
							class="img-responsive img-circle"></a>
						<p>드레스</p>
					</div>
					<div class="icon">
						<a href="store_2-3.html"><img src="index2.jpg" alt="헤어/메이크업"
							class="img-responsive img-circle"></a>
						<p>메이크업</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="icon">
						<a href="store_2-4.html"><img src="index2.jpg" alt="스튜디오"
							class="img-responsive img-circle"></a>
						<p>스튜디오</p>
					</div>
					<div class="icon">
						<a href="store_2-5.html"><img src="index2.jpg" alt="스냅/DVD"
							class="img-responsive img-circle"></a>
						<p>스냅/DVD</p>
					</div>
					<div class="icon">
						<a href="store_2-6.html"><img src="index2.jpg" alt="예복"
							class="img-responsive img-circle"></a>
						<p>예복</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="icon">
						<a href="store_2-7.html"><img src="index2.jpg" alt="한복"
							class="img-responsive img-circle"></a>
						<p>한복</p>
					</div>
					<div class="icon">
						<a href="store_2-8.html"><img src="index2.jpg" alt="부케"
							class="img-responsive img-circle"></a>
						<p>부케</p>
					</div>
					<div class="icon">
						<a href="store_2-9.html"><img src="index2.jpg" alt="청첩장"
							class="img-responsive img-circle"></a>
						<p>청첩장</p>
					</div>
				</div>
			</div>
		</div>
		<!--indexIcon-->

		<!-- 상품검색 -->
		<div class="KategorieSearch">
			<form action="" method="GET">
				<div class="row">
					<div class="col-sm-12">
						<select name="star" id="select1">
							<option value="none" disabled selected>별점순</option>
							<option value="5">5점</option>
							<option value="4">4점</option>
							<option value="3">3점</option>
							<option value="2">2점</option>
							<option value="1">1점</option>
						</select> <select name="location" id="select2">
							<option value="전체">지역전체</option>
							<option value="서울">서울</option>
							<option value="경기">경기</option>
							<option value="인천">인천</option>
							<option value="강원">강원</option>
							<option value="충청">충청</option>
							<option value="전라">전라</option>
							<option value="경상">경상</option>
							<option value="제주">제주</option>
						</select>
						<div class="form-inline" role="search" id="select3">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="결과 내 검색"
									id="select4">
								<button type="submit" class="btn btn-default" href="#"
									id="select5">
									<span class="glyphicon glyphicon-search"></span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		<!--KategorieSearch-->

		<!-- 상품목록 -->
		<div class="contents">
			
			<c:set var="loop_flag" value="false" />
				<c:forEach items="${list}" var="list" varStatus="status">
				<c:if test="${status.count%4==1}">
						<div class="row">
				</c:if>
					<div class="col-xs-6 col-sm-3">
						<div class="boxContents">
							<a href="/shop/view?n=${list.gdsNum}"><img
								src="${list.gdsThumbImg}"></a>
							<h4>${list.gdsName}</h4>
							<p id="red">[지역]</p>
							<p>업체명</p>
							<h4>${list.gdsPrice}</h4>
						</div>
						</div>
						<c:if test="${status.count%4==0}">
						</div>
						</c:if>
					
				</c:forEach>
			

		</div>
		<!--contents-->

		 <!-- 페이지네이션 -->
    <div class="indexpagination">
      <div class="row">
          <nav class="paginationSize">
            <ul class="pagination">
              <li>
                <a href="#" aria-label="Previous">
                  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                </a>
              </li>
              <li><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li>
                <a href="#" aria-label="Next">
                  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                </a>
              </li>
            </ul>
          </nav>
      </div>
    </div>
    <!--indexpagination-->


		<!-- footer -->
		<div class="footer">
			<div class="row">
				<div class="col-md-6">
					<p>
						<b>이용약관 | 개인정보처리방침</b>
					</p>
				</div>
				<div class="col-md-6">
					<p id="phoneNumber">010-6658-1111</p>
					<p id="phoneImage">☎고객상담</p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6 col-sm-2">
					<img src="logo.png" alt="푸터로고">
				</div>
				<div class="col-xs-6 col-sm-10">
					<p id="info">
						<br>소소웨딩|서울시강남구어쩌고170<br> 사업자번호 211-10-4999
					</p>
				</div>
			</div>
		</div>
		<!--footer-->
	</div>
	<!--container-->

	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</body>
</html>
