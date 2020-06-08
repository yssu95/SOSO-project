<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>store_3-1</title>
    <script src="/resources/jquery/jquery-3.3.1.min.js"></script>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/css/user/shop/store_3-1.css" type="text/css">
	<link rel="stylesheet" href="/resources/css/main/header-footer.css">
	
	<style>
	 .cartStock span { display:inline-block; width:100px; margin-right:15px;font-size:22px; } 
		p.cartStock input { font-size:22px; width:50px; padding:5px; margin:0; border:1px solid #eee; }
		p.cartStock button { font-size:26px; border:none; background:none; } 
		p.addToCart { text-align:right; }
		p.addToCart button { font-size:22px; padding:5px 10px; border:1px solid #eee; background:#eee;}
	 div.gdsDes { font-size:18px; clear:both; padding-top:30px; }
	</style>
</head>


<body>
    <div class="container">
        <!-- header -->
        <div class="header">
            <%@ include file="../include/header2.jsp" %>
        </div><!--header-->

        <!-- 상단 상품정보 -->
        <div class="product">
            <h3>${view.comName }</h3>
            <h4>${view.address },${view.detailaddress }</h4>
            <div class="row">
                <form role="form" method="post">
					<input type="hidden" name="gdsNum" id="gdsNum" value="${view.gdsNum}" />
				</form>
                <div class="col-sm-6">
                    <img src="${view.gdsImg}">
                </div>
                <div class="col-sm-6 productRight">
                    <h2 id="productName">${view.gdsName}</h2>
                    <h3 id="productPrice"><fmt:formatNumber pattern="###,###,###" value="${view.gdsPrice}" />원</h3>
                    <table class="table">
                        <tr>
                            <th>홀타입</th>
                            <td>일반홀</td>
                        </tr>
                        <tr>
                            <th>카테고리</th>
                            <td>${view.cateName}</td>
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
                            <th>재고</th>
                            <td><fmt:formatNumber pattern="###,###,###" value="${view.gdsStock}" /></td>
                        </tr>
                        <tr>
                            <th>인근지하철역</th>
                            <td>${view.comSubway}</td>
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
									
									var data = {
											gdsNum : gdsNum,
											cartStock : cartStock
											};
									
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
        
        <!-- 상품 설명 -->
        <div class="description">
            <h4>ㆍ상품설명</h4>
            <h3>#트렌드 #프라이빗 <br> #깔끔한디자인 #고객맞춤형</h3>
            ${view.gdsDes}
        </div>
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
            <div class="iconPackage">
            <div class="iconStar">
                <img src="/resources/images/store3/car.png" alt="시설">
                <p>시설</p>
                <p id="pink2">★4.5</p>
            </div>
            <div class="iconStar">
                <img src="/resources/images/store3/food.png" alt="교통">
                <p>교통</p>
                <p id="pink2">★4.7</p>
            </div>
            <div class="iconStar">
                <img src="/resources/images/store3/money.png" alt="음식">
                <p>음식</p>
                <p id="pink2">★4.5</p>
            </div>
            <div class="iconStar">
                <img src="/resources/images/store3/park.png" alt="가격">
                <p>가격</p>
                <p id="pink2">★2.8</p>
            </div>
            <div class="iconStar">
                <img src="/resources/images/store3/serviece.png" alt="서비스">
                <p>서비스</p>
                <p id="pink2">★4.5</p>
            </div>
        </div>
        </div><!--starWeddinghall-->

      
    <!-- footer -->
    <div class="footer">
        <div class="row">
          <div class="col-sm-6">
            <p id="info">
              (주)소소웨딩<br>
              서울시 마포구 백범로 23 | 서울 마포구 신수동 63-14<br>
              사업자등록번호 120-10-4999<br>
              Copyright (c) 비트캠프 All rights reserved.
              </p>
          </div>
          <div class="col-sm-6">
            <p id="phoneNumber">010-6658-1111</p>
            <p id="phoneImage">☎고객상담</p>
          </div>
        </div>
      </div><!--footer-->
    </div><!--container-->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</body>

</html>