
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
<link rel="stylesheet" href="/resources/css/main/header-footer.css">
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
  <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<script src="/resources/jquery/jquery-3.3.1.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>

<script>

var header = document.getElementById("myDIV");
var btns = header.getElementsByClassName("imeffect");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
  var current = document.getElementsByClassName("noimeffect");
  current[0].className = current[0].className.replace(" noimeffect", "");
  this.className += " noimeffect";
  });
}
</script>
<style>
.imeffect {
	filter: blur(2px); /* 여기 적힌 수치만큼 블러효과가 커집니다. */
	-webkit-filter:blur(2px);
}
.noimeffect{
filter:none;}
</style>
</head>

<body>


	<div class="container">
		<!-- header -->
		<div class="header">
<<<<<<< HEAD
			<%@ include file="../include/header2.jsp"%>
=======
			<%@ include file="../include/header2.jsp" %>
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
		</div>
		<!--header-->

		<!-- 상단 index 9개 -->
		<div class="indexIcon">
			<div class="row">
				<div class="col-xs-12 col-sm-4" id="myDIV">
					<div class="icon">
					<a href="/shop/list?c=101&l=2"><img
							src="/resources/images/store/weddingHall.jpg"
							alt="드레스" class="img-responsive img-circle imeffect noimeffect"/></a>
						<p>웨딩홀</p>
					</div>

					<div class="icon">
						<a href="/shop/list?c=102&l=2"><img
							src="/resources/images/store/FilterWeddingDress.jpg"
							onmouseover="this.src='/resources/images/store/weddingDress.jpg';"
							onmouseout="this.src='/resources/images/store/FilterWeddingDress.jpg';"
							alt="드레스" class="img-responsive img-circle imeffect" /></a>
						<p>드레스</p>
					</div>
					<div class="icon">
<<<<<<< HEAD
						<a href="/shop/list?c=103&l=2"><img
							src="/resources/images/store/FilteHairNmakeup.jpg"
							onmouseover="this.src='/resources/images/store/hairNmakeup.jpg';"
							onmouseout="this.src='/resources/images/store/FilteHairNmakeup.jpg';"
							alt="메이크업" class="img-responsive img-circle imeffect" /></a>
=======
						<a href="/shop/list?c=103&l=2"><img src="index2.jpg" alt="헤어/메이크업"
							class="img-responsive img-circle"></a>
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
						<p>메이크업</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="icon">
<<<<<<< HEAD
						<a href="/shop/list?c=104&l=2"><img
							src="/resources/images/store/FilterStudio.jpg"
							onmouseover="this.src='/resources/images/store/studio.jpg';"
							onmouseout="this.src='/resources/images/store/FilterStudio.jpg';"
							alt="웨딩홀" class="img-responsive img-circle imeffect" /></a>
=======
						<a href="/shop/list?c=104&l=2"><img src="index2.jpg" alt="스튜디오"
							class="img-responsive img-circle"></a>
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
						<p>스튜디오</p>
					</div>
					<div class="icon">
<<<<<<< HEAD
						<a href="/shop/list?c=105&l=2"><img
							src="/resources/images/store/FilterSnapNdvd.jpg"
							onmouseover="this.src='/resources/images/store/snapNdvd.png';"
							onmouseout="this.src='/resources/images/store/FilterSnapNdvd.jpg';"
							alt="스냅/DVD" class="img-responsive img-circle imeffect" /></a>
=======
						<a href="/shop/list?c=105&l=2"><img src="index2.jpg" alt="스냅/DVD"
							class="img-responsive img-circle"></a>
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
						<p>스냅/DVD</p>
					</div>
					<div class="icon">
<<<<<<< HEAD
						<a href="/shop/list?c=106&l=2"><img
							src="/resources/images/store/FilterDressSuit.jpg"
							onmouseover="this.src='/resources/images/store/dressSuit.jpg';"
							onmouseout="this.src='/resources/images/store/FilterDressSuit.jpg';"
							alt="예복" class="img-responsive img-circle imeffect" /></a>
=======
						<a href="/shop/list?c=106&l=2"><img src="index2.jpg" alt="예복"
							class="img-responsive img-circle"></a>
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
						<p>예복</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="icon">
<<<<<<< HEAD
						<a href="/shop/list?c=107&l=2"><img
							src="/resources/images/store/FilterHanbok.jpg"
							onmouseover="this.src='/resources/images/store/hanbok.jpg';"
							onmouseout="this.src='/resources/images/store/FilterHanbok.jpg';"
							alt="한복" class="img-responsive img-circle" /></a>
=======
						<a href="/shop/list?c=107&l=2"><img src="index2.jpg" alt="한복"
							class="img-responsive img-circle"></a>
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
						<p>한복</p>
					</div>
					<div class="icon">
<<<<<<< HEAD
						<a href="/shop/list?c=108&l=2"><img
							src="/resources/images/store/FilterBouquet.jpg"
							onmouseover="this.src='/resources/images/store/bouquet.jpg';"
							onmouseout="this.src='/resources/images/store/FilterBouquet.jpg';"
							alt="부케" class="img-responsive img-circle" /></a>
=======
						<a href="/shop/list?c=108&l=2"><img src="index2.jpg" alt="부케"
							class="img-responsive img-circle"></a>
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
						<p>부케</p>
					</div>
					<div class="icon">
<<<<<<< HEAD
						<a href="/shop/list?c=109&l=2"><img
							src="/resources/images/store/FilterInvitation.jpg"
							onmouseover="this.src='/resources/images/store/invitation.jpg';"
							onmouseout="this.src='/resources/images/store/FilterInvitation.jpg';"
							alt="청첩장" class="img-responsive img-circle" /></a>
=======
						<a href="/shop/list?c=109&l=2"><img src="index2.jpg" alt="청첩장"
							class="img-responsive img-circle"></a>
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
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
						<p id="red">[${list.comArea }]</p>
						<p>${list.comName }</p>
<<<<<<< HEAD
						<h4><fmt:formatNumber pattern="###,###,###" value="${list.gdsPrice}" />원</h4>
=======
						<h4>${list.gdsPrice}</h4>
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
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
					<li><a href="#" aria-label="Previous"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#" aria-label="Next"> <span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					</a></li>
				</ul>
			</nav>
		</div>
	</div>
	<!--indexpagination-->


	<!-- footer -->
	<div class="footer">
			<%@ include file="../include/footer2.jsp"%>
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
