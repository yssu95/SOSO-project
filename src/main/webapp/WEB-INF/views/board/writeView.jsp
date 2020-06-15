
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>free write</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/main/header-footer.css">
<script
   src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" href="/resources/css/board/style.css">
<link rel="stylesheet" href="/resources/css/board/board.css">

<script src="http://code.jquery.com/jquery-1.11.0.js">
   
</script>
<script src="./assets/js/pager.js">
   
</script>
<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<script type="text/javascript">
   $(document).ready(function() {
      var formObj = $("form[name='writeForm']");
      $(".write_btn").on("click", function() {
         if (fn_valiChk()) {
            return false;
         }
         formObj.attr("action", "/board/write");
         formObj.attr("method", "post");
         formObj.submit();
      });
      fn_addFile();
   })
   function fn_valiChk() {
      var regForm = $("form[name='writeForm'] .chk").length;
      for (var i = 0; i < regForm; i++) {
         if ($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null) {
            alert($(".chk").eq(i).attr("title"));
            return true;
         }
      }
   }

   $(document).ready(function(){
      // 취소
      $(".cencle").on("click", function(){
         location.href = "/";
      })
      
   });
   
   document.addEventListener("DOMContentLoaded", function () {

         // 브라우저의 현재 날짜를 받아온다.

         var toDay = new Date();
         document.getElementById("toYmd").value = toDay.yyyymmdd();
       });

       // 현재 날짜값을 yyyy-mm-dd 형식으로 변환해주는 함수
       Date.prototype.yyyymmdd = function () {
         var yyyy = this.getFullYear().toString();
         var mm = (this.getMonth() + 1).toString();
         var dd = this.getDate().toString();
         return yyyy + "-" + (mm[1] ? mm : "0" + mm[0]) + "-" + (dd[1] ? dd : "0" + dd[0]);
       }
</script>
<style>
* {
      box-sizing: border-box;
    }

    h2 {
      font-weight: bold;
      color: #ECA4A6;
    }

    p {
      color: #99A89E;
    }

    input[type=text],
    select,
    textarea {
      width: 100%;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 4px;
      resize: vertical;
    }

    input[type=file] {
      width: 100%;
      padding: 12px;
      background-color: white;
      border: 1px solid #ccc;
      border-radius: 4px;
      resize: vertical;
      margin-bottom: 10px;
    }

    label {
      padding: 12px 12px 12px 0;
      display: inline-block;
    }

    input[type=submit] {
      background-color: #ECA4A6;
      color: white;
      padding: 12px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      float: right;
    }

    input[type=reset] {
      background-color: #ECA4A6;
      color: white;
      padding: 12px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      margin-right: 5px;
    }

    #submit,
    #reset {
      float: right;
    }

    input[type=submit]:hover {
      background-color: #F9D5D3;
    }


    input[type=reset]:hover {
      background-color: #F9D5D3;
    }

    .boardwrap {
      border-radius: 5px;
      background-color: #f2f2f2;
      padding: 20px;
    }

    .col-25 {
      float: left;
      width: 25%;
      margin-top: 6px;
      text-align: center;
      color: #807F89;
    }

    .col-75 {
      float: left;
      width: 75%;
      margin-top: 6px;
    }

    /* Clear floats after the columns */
    .row:after {
      content: "";
      display: table;
      clear: both;
    
    }

    /* Responsive layout - when the screen is less than 600px wide, 
make the two columns stack on top of each other instead of next to each other */
    @media screen and (max-width: 600px) {

      .col-25,
      .col-75,
      input[type=submit] {
        width: 100%;
        margin-top: 0;
      }
    }

    @media screen and (max-width: 600px) {
      input[type=reset] {
        width: 100%;
        margin-top: 5px;
        margin-right: 0;
      }
    }
/* 취소.수정 버튼 */
.btn_member_cancel, .btn_comfirm_js_btn_join, .btn_leave {
   background-color: #ECA4A6;
   border: none;
   border-radius:3px 10px;
   color: white;
   padding: 8px 15px;
   text-decoration: none;
   /* display: inline-block; */
   font-size: 14px;
   margin: 5px 2px;
   cursor: pointer;
}

</style>
<body>
   <!-- 회원 header -->
  <div class="container">
    <!-- header -->
      <div class="header">
         <%@ include file="../include/header2.jsp"%>
      </div>
      <!--header-->

    <h2> 자유게시판 </h2>
    <p> 소소웨딩 고객님들께서 자유롭게 소통하는 게시판 입니다</p>
    <div class="boardwrap">
      <form name="writeForm" method="post" action="/board/write" enctype="multipart/form-data">
        <c:if test="${member.userId != null}">
        <div class="row">
          <div class="col-25">
            <label for="date">날짜</label>
          </div>
          <div class="col-75">
            <!-- <input type="date" id="currentDate" name="date" placeholder="날짜"> -->
            <!--*** <input type="text" id="date"> -->
            <input type="text" id="toYmd" readonly />
          </div>
        </div>
        
        <div class="row">
          <div class="col-25">
            <label for="name">작성자</label>
          </div>
          <div class="col-75">
            <input type="text" id="writer" name="writer" class="chk" placeholder="작성자" title="작성자를 입력하세요." value="${member.userId}" readonly="readonly">
          </div>
        </div>

        <div class="row">
          <div class="col-25">
            <label for="categori">말머리</label>
          </div>
          <div class="col-75">
            <select id=header name="header">
              <option value="선택">선택해주세요</option>
              <option value="웨딩홀">웨딩홀</option>
              <option value="드레스">드레스</option>
              <option value="헤어/메이크업">헤어/메이크업</option>
              <option value="스튜디오">스튜디오</option>
              <option value="스냅/DVD">스냅/DVD</option>
              <option value="예복">예복</option>
              <option value="한복">한복</option>
              <option value="부케">부케</option>
              <option value="청첩장">청첩장</option>
              <option value="기타">기타</option>
            </select>
          </div>
        </div>

        <div class="row">
          <div class="col-25">
            <label for="title">제목</label>
          </div>
          <div class="col-75">
            <input type="text" id="title" name="title"  class="chk" placeholder="제목">
          </div>
        </div>

        <div class="row">
          <div class="col-25">
            <label for="subject">내용</label>
          </div>
          <div class="col-75">
            <textarea id="content" name="content" class="chk" placeholder="작성해주세요" style="height:200px"></textarea>
          </div>
        </div>


        <div class="row">
          <div class="col-25">
            <label for="title">파일첨부</label>
          </div>
          <div class="col-75">
            <input type="file" id="myfile" name="file_1"  placeholder="파일첨부">
            <!-- <input type="submit"> -->
          </div>
        </div>
      

      <div class="row">
      
       <input type="submit" id="submit" value="등록">

        <input type="reset" id="reset" value="취소">
        <!-- 취소버튼 누르면 목록으로 가게 해주세요  -->
        <!-- 취소버튼 누르면 목록으로 가게 해주세요  -->
      </div>
    </c:if>   
  </form>
    </div>
      <!-- 페이지네이션은 기존 폼 써주셔도 됩니다 -->

    <!-- footer -->
    <div class="footer">
			<%@ include file="../include/footer2.jsp"%>
		</div>
    <!--footer-->
  </div>
  <!--container-->
</body>
</html>