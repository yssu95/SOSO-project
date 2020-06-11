<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
  <title>main_1-1</title>


  <!-- 합쳐지고 최소화된 최신 CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="/resources/css/main/header-footer.css">
  <link rel="stylesheet" href="/resources/css/main/main_1-1.css">
  
</head>

<body>
  <div class="container">
    <!-- header -->
    <div class="header">
      <%@ include file="include/header2.jsp" %>
    </div>
    <!--header-->
       <!-- slide1 -->
       <div class="slide1">
        <div class="row">
          <div class="col-xs-12">
            <div id="carouselSlide1" class="carousel slide" data-ride="carousel">
              <ol class="carousel-indicators">
                <li data-target="#carouselSlide1" data-slide-to="0" class="active"></li>
                <li data-target="#carouselSlide1" data-slide-to="1"></li>
                <li data-target="#carouselSlide1" data-slide-to="2"></li>
              </ol>
  
              <div class="carousel-inner" role="listbox">
                <div class="item active">
                  <img src="/resources/images/main/mainslide/mainSlide1.jpg" alt="슬라이드1">
                </div>
                <div class="item">
                  <img src="/resources/images/main/mainslide/mainSlide2.jpg" alt="슬라이드2">
                </div>
                <div class="item">
                  <img src="/resources/images/main/mainslide/mainSlide3.jpg" alt="슬라이드3">
                </div>
              </div>
              <a class="left carousel-control" href="#carouselSlide1" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              </a>
              <a class="right carousel-control" href="#carouselSlide1" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              </a>
            </div>
          </div>
        </div>
      </div>
  

   
    <!--카테고리 검색바-->
    <div class="WeddingSearch">
      <form action="/shop/list" method="post">
        <div class="row">
          <div class="col-sm-3">
            <p>카테고리</p>
            <select name="cateCode" id="btnSelect1">
              <option value="101">웨딩홀</option>
              <option value="102">드레스</option>
              <option value="103">헤어/메이크업</option>
              <option value="104">스튜디오</option>
              <option value="105">스냅/DVD</option>
              <option value="106">예복</option>
              <option value="107">한복</option>
              <option value="108">부케</option>
              <option value="109">청첩장</option>
            </select>
          </div>
          <div class="col-sm-3">
            <p>지역</p>
            <select name="comArea" id="btnSelect2">
              <option value="서울">서울</option>
              <option value="경기">경기</option>
              <option value="인천">인천</option>
              <option value="강원" >강원</option>
              <option value="충청">충청</option>
              <option value="전라">전라</option>
              <option value="경상">경상</option>
              <option value="제주">제주</option>
            </select>
          </div>
          <div class="col-sm-3">
            <p>금액대</p>
            <select name="gdsPrice" id="btnSelect3">
              <option value="0">금액무관</option>
              <option value="1">~100만원</option>
              <option value="1000000">100~200만원</option>
              <option value="2000000">200~300만원</option>
              <option value="3000000">300~500만원</option>
            </select>
          </div>
          <div class="col-sm-3">
           <button type="submit" class="btn btn-lg" id="btnSelect4">
              검색</button>
          </div>
        </div>
      </form>
    </div>
   <!-- slide2 -->
   <div class="slide2">
    <div class="row">
      <div class="col-sm-12 btnSlide2">
        <button class="btn btn-sm" id="btnSlide2-1">웨딩홀</button>
        <button class="btn btn-sm" id="btnSlide2-2">드레스</button>
        <button class="btn btn-sm" id="btnSlide2-3">헤어/메이크업</button>
        <button class="btn btn-sm" id="btnSlide2-4"><span class="glyphicon glyphicon-pause"></span></button>
      </div>
    </div>
    <div class="row">
      <div id="carouselSlide2" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner" role="listbox">
          <ul class="item active col-xs-6 col-sm-3">
            <li>
              <a href="/shop/list?c=101&l=2"><img src="/resources/images/main/hall/hall1.png" alt="웨딩홀1"></a>
              <p>규리웨딩홀_서울</p>
              <h4>가격: 1,500,000원</h4>
            </li>
            <li>
              <a href="/shop/list?c=101&l=2"><img src="/resources/images/main/hall/hall2.jpg" alt="웨딩홀2"></a>
              <p>수아비스웨딩홀_경기</p>
              <h4>가격: 1,300,000원</h4>
            </li>
            <li>
              <a href="/shop/list?c=101&l=2"><img src="/resources/images/main/hall/hall3.jpg" alt="웨딩홀3"></a>
              <p>아임웨딩홀_부산</p>
              <h4>가격: 1,200,000원</h4>
            </li>
            <li>
              <a href="/shop/list?c=101&l=2"><img src="/resources/images/main/hall/hall4.jpg" alt="웨딩홀4"></a>
              <p>딴딴웨딩홀_춘천</p>
              <h4>가격: 1,000,000원</h4>
            </li>
          </ul>
          <ul class="item col-xs-6 col-sm-3">
            <li>
              <a href="/shop/list?c=102&l=2"><img src="/resources/images/main/dress/dress1.jpg" alt="드레스1"></a>
              <p class="card-text">규리드레스_서울</p>
              <h4>가격: 1,500,000원</h4>
            </li>
            <li>
              <a href="/shop/list?c=102&l=2"><img src="/resources/images/main/dress/dress2.jpg" alt="드레스2"></a>
              <p>멋짐드레스_광주</p>
              <h4>가격: 1,400,000원</h4>
            </li>
            <li>
              <a href="/shop/list?c=102&l=2"><img src="/resources/images/main/dress/dress3.jpg" alt="드레스3"></a>
              <p>수아비스드레스_인천</p>
              <h4>가격: 1,300,000원</h4>
            </li>
            <li>
              <a href="/shop/list?c=102&l=2"><img src="/resources/images/main/dress/dress4.jpg" alt="드레스4"></a>
              <p>암레드레스_경기</p>
              <h4>가격: 900,000원</h4>
            </li>
          </ul>
          <ul class="item col-xs-6 col-sm-3">
            <li>
              <a href="/shop/list?c=103&l=2"><img src="/resources/images/main/hair/hair1.jpg" alt="헤어/메이크업1"></a>
              <p>규리메이크업_서울</p>
              <h4>가격: 800,000원</h4>
            </li>
            <li>
              <a href="/shop/list?c=103&l=2"><img src="/resources/images/main/hair/hair2.jpg" alt="헤어/메이크업2"></a>
              <p>정샘물메이크업_서울</p>
              <h4>가격: 700,000원</h4>
            </li>
            <li>
              <a href="/shop/list?c=103&l=2"><img src="/resources/images/main/hair/hair3.jpg" alt="헤어/메이크업3"></a>
              <p>메드블루헤어_인천</p>
              <h4>가격: 500,000원</h4>
            </li>
            <li>
              <a href="/shop/list?c=103&l=2"><img src="/resources/images/main/hair/hair4.jpg" alt="헤어/메이크업4"></a>
              <p>아이비스메이크업_경기</p>
              <h4>가격: 300,000원</h4>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>

    <!-- 6개 썸네일 -->
    <div class="thumb">
      <div class="row">
        <div class="col-xs-4 col-md-2 boxThumb">
          <a href="/shop/list?c=104&l=2"><img src="/resources/images/main/sumnail/studio.jpg" alt="스튜디오" class="img-responsive img-circle"></a>
          <p>스튜디오</p>
        </div>
        <div class="col-xs-4 col-md-2 boxThumb">
          <a href="/shop/list?c=105&l=2"><img src="/resources/images/main/sumnail/snapNdvd.png" alt="스냅/DVD" class="img-responsive img-circle"></a>
          <p>스냅/DVD</p>
        </div>
        <div class="col-xs-4 col-md-2 boxThumb">
          <a href="/shop/list?c=106&l=2"><img src="/resources/images/main/sumnail/dressSuit.jpg" alt="예복" class="img-responsive img-circle"></a>
          <p>예복</p>
        </div>
        <div class="col-xs-4 col-md-2 boxThumb">
          <a href="/shop/list?c=107&l=2"><img src="/resources/images/main/sumnail/hanbok.jpg" alt="한복" class="img-responsive img-circle"></a>
          <p>한복</p>
        </div>
        <div class="col-xs-4 col-md-2 boxThumb">
          <a href="/shop/list?c=108&l=2"><img src="/resources/images/main/sumnail/bouquet.jpg" alt="부케" class="img-responsive img-circle"></a>
          <p>부케</p>
        </div>
        <div class="col-xs-4 col-md-2 boxThumb">
          <a href="/shop/list?c=109&l=2"><img src="/resources/images/main/sumnail/invitation.jpg" alt="청첩장" class="img-responsive img-circle"></a>
          <p>청첩장</p>
        </div>
      </div>
    </div>
    <!-- 예약현황,  후기현황 -->
    <div class="reserveReview">
    <div class="row">
    
        <div class="col-sm-6">
          <button type="button" class="btn-lg btn-block reserveBtn" data-toggle="button" onclick="location.href='/shop/orderList'"> 주문현황</button>
          <table class="table">
          <c:forEach var="orderList" items="${orderList}" end="10">
        <tr>
              <td><img src="/resources/images/main/reserve.png"></td>
              <td>${orderList.orderRec}님 신청 접수되었습니다.</td>
              <td> <fmt:formatDate value="${orderList.orderDate}" pattern="yyyy-MM-dd" /></td>
            </tr>
            </c:forEach>
          </table>
        </div>
        
        <div class="col-sm-6 ">
          <button type="button" class="btn btn-lg btn-block reviewBtn" data-toggle="button"
            onclick="location.href='/reviewboard/list'">고객후기</button>
          <table class="table">
                <c:forEach items="${list}" var = "list" end="10">
                     <tr>
                        <td><img src="/resources/images/main/review.png"></td>
                        <td>${list.writer}"님의 소중한 고객후기입니다.</td>
                        <td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></td>
                     </tr>
                  </c:forEach>
          </table>
        </div>
     </div>
    </div>

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
          <img src="/resources/images/main/logo.png" alt="푸터로고">
        </div>
        <div class="col-xs-6 col-sm-10">
          <p id="info"><br>소소웨딩|서울시강남구어쩌고170<br>
            사업자번호 211-10-4999</p>
        </div>
      </div>
    </div>
    <!--footer-->
  </div>
  <!--container-->
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <script>
    $(function () {
      $("#carouselSlide2").carousel({
        interval: 5000
      })
      $("#btnSlide2-1").click(function () {
        $("#carouselSlide2").carousel(0);
      })
      $("#btnSlide2-2").click(function () {
        $("#carouselSlide2").carousel(1);
      })
      $("#btnSlide2-3").click(function () {
        $("#carouselSlide2").carousel(2);
      })
      $("#btnSlide2-4").click(function () {
        $("#carouselSlide2").carousel("pause");
      })
    })
  </script>
</body>

</html>