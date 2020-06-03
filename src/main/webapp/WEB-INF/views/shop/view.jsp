<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<html>
<head>
	<title>kubg</title>
	
	<script src="/resources/jquery/jquery-3.3.1.min.js"></script>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/css/user/shop/store_3.css" type="text/css">
	<link rel="stylesheet" href="/resources/css/user/shop/header-footer.css" type="text/css">
	
	

<script>
function replyList() {
	
	var gdsNum = ${view.gdsNum};
	
	// 비동기식 데이터 요청
	$.getJSON("/shop/view/replyList" + "?n=" + gdsNum, function(data){
		var str = "";
		
		$(data).each(function(){
			
			console.log(data);
			
			// 날짜 데이터를 보기 쉽게 변환
			var repDate = new Date(this.repDate);
			repDate = repDate.toLocaleDateString("ko-US")
							
			// HTML코드 조립
			str += "<li data-repNum='" + this.repNum + "'>" //"<li data-gdsNum='" + this.gdsNum + "'>"
				 + "<div class='userInfo'>"
				 + "<span class='userName'>" + this.userName + "</span>"
				 + "<span class='date'>" + repDate + "</span>"
				 + "</div>"
				 + "<div class='replyContent'>" + this.repCon + "</div>"
				 
				 + "<c:if test='${member != null}'>"
				 
				 + "<div class='replyFooter'>"
				 + "<button type='button' class='modify' data-repNum='" + this.repNum + "'>M</button>"
				 + "<button type='button' class='delete' data-repNum='" + this.repNum + "'>D</button>"
				 + "</div>"
				 
				 + "</c:if>"
				 
				 + "</li>";											
		});
		
		// 조립한 HTML코드를 추가
		$("section.replyList ol").html(str);
	});
	
}
</script>
		
</head>

<body>
    <div class="container">
        <!-- header -->
        <div class="header">
            <div class="row">
                <div class="col-xs-6">
                    <a href="/"><img src="/resources/images/main/logo.png" alt="logo"></a>
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
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#bs-example-navbar-collapse-1">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li><a href="/shop/list?c=100&l=1">상점</a></li>
                                <li><a href="order_5-1.html">견적</a></li>
                                <li><a href="review_6-1.html">후기</a></li>
                                <li><a href="notice_7-1.html">커뮤니티</a></li>
                                <li><a href="introduce_8-1.html">회사소개</a></li>
                            </ul>
                            <form class="navbar-form navbar-right" role="search">
                                <input type="text" class="form-control headerSearch1">
                                <button type="submit" class="btn btn-default headerSearch2">검색</button>
                                <a class="btn btn-default headerSearch3" href="4-1" role="button">
                                    <span class="glyphicon glyphicon-shopping-cart"></span></a>
                            </form>
                        </div>
                    </nav>
                </div>
            </div>
        </div><!--header-->

        <!-- 상단 상품정보 -->
        <div class="product">
            <h3>업체명</h3>
            <h4>상세주소</h4>
            <div class="row">
                <div class="col-sm-6">
                    <img src="${view.gdsImg}">
                </div>
                <div class="col-sm-6 productRight">
                    <h2 id="productName">${view.gdsName}</h2>
                    <h3 id="productPrice"><fmt:formatNumber pattern="###,###,###" value="${view.gdsPrice}" /> 원</h3>
                    <table class="table table-striped">
                        <tr>
                            <th>홀타입</th>
                            <td>일반홀</td>
                        </tr>
                        <tr>
                            <th>홀 수</th>
                            <td>일반홀</td>
                        </tr>
                        <tr>
                            <th>좌석수(인원)</th>
                            <td>150-200석</td>
                        </tr>
                        <tr>
                            <th>예식타입</th>
                            <td>분리예식</td>
                        </tr>
                        <tr>
                            <th>식사메뉴</th>
                            <td>뷔페</td>
                        </tr>
                        <tr>
                            <th>식사비용</th>
                            <td>4-5만원</td>
                        </tr>
                        <tr>
                            <th>인근지하철역</th>
                            <td>4호선 안산역 2번출구 도보 4분</td>
                        </tr>
                    </table>
                    <c:if test="${view.gdsStock != 0}">
						
						<p class="cartStock">
							<span>구입 수량</span>
							<button type="button" class="plus">+</button>
							<input type="number" class="numBox" min="1" max="${view.gdsStock}" value="1" readonly="readonly"/>
							<button type="button" class="minus">-</button>
							
							<input type="hidden" value="${view.gdsStock}" class="gdsStock_hidden" />
							
							<script src="/resources/js/user/shop/stockBtn.js"></script>
													
							
						</p>
						
						<p class="addToCart">
							<button type="button" class="addCart_btn">카트에 담기</button>
							<script>
								$(".addCart_btn").click(function(){
									
									var gdsNum = $("#gdsNum").val();
									var cartStock = $(".numBox").val();
									
									var data = {gdsNum : gdsNum,cartStock : cartStock};
									
									$.ajax({
										url : "/shop/view/addCart",
										type : "post",
										data : data,
										success : function(result){
											
											if(result == 1) {
												alert("카트 담기 성공");
												$(".numBox").val("1");
											} else {
												alert("회원만 사용할 수 있습니다.")
												$(".numBox").val("1");
											}
										},
										error : function(){
											alert("카트 담기 실패");
										}
									});
								});
							</script>
						</p>
						
						</c:if>
						
						<c:if test="${view.gdsStock == 0}">
							<p>상품 수량이 부족합니다.</p>						
						</c:if>
                    <h4 id="pink">★ ★ ★ ★ ☆</h4>
                    <a href="review_6-1.html">
                        <p id="goReview">평점 121건 전체보기 ▶</p>
                    </a>
                    <div>
                        <a href="/shop/cartList"><img src="/resources/images/main/cartIcon.png" id="cart"></a>
                        <a href="/shop/orderList"><button class="btn btn-lg" id="buyBtn"><b>구매하기</b></button></a>
                    </div>
                </div>
            </div>
        </div><!--product-->

        <!-- 상품 이미지리스트 -->
        <div class="imageList">
            <h4>ㆍ상품정보확인</h4>
            <img src="/resources/images/weddingdetail/wedding-image1.jpg">
            <img src="/resources/images/weddingdetail/wedding-image2.jpg">
        </div><!--imageList-->

        <!-- 업체 정보 -->
        <div class="companyInfo">
            <h4>ㆍ업체정보</h4>
            <div class="row companyBorder">
                <div class="col-sm-6">
                    ------------------------지도 API 넣을 공간입니다------------------------
                </div>
                <div class="col-sm-6">
                    <hr>
                    <p><b>*주차시설</b></p>
                    <p>400여대 동시주차가능 / 2시간무료</p>
                    <p>혼주차량 주차가능 / 전일무료</p>
                    <hr>
                    <p><b>*전화번호</b></p>
                    <p>031) 400-7777</p>
                    <hr>
                    <p><b>*사이트 바로가기</b></h5>
                    <a href="http://gdconvention.com">http://gdconvention.com</a>
                    <hr>
                </div>
            </div>
        </div><!--companyInfo-->

        <!-- 별점으로 보기 -->
        <div class="starWeddinghall">
            <h4>ㆍ별점으로 보는 웨딩홀</h4>
            <img src="별점으로보는웨딩홀.png">
        </div><!--starWeddinghall-->

        <!-- footer -->
        <div class="footer">
            <div class="row">
                <div class="col-md-6">
                    <p><b>이용약관 | 개인정보처리방침</b></p>
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
                    <p id="info"><br>소소웨딩|서울시강남구어쩌고170<br>
                        사업자번호 211-10-4999</p>
                </div>
            </div>
        </div><!--footer-->
    </div><!--container-->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</body>
</html>

