<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SOSO Wedding</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 부트스트랩 -->
<!-- daum 도로명주소 찾기 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/register/signup.css" type="text/css">
<style type="text/css">
td {
   border: 1px solid #000000;
   border-collapse: collapse;
}
</style>
<script type="text/javascript">
   
//모든 공백 체크 정규식
var empJ = /\s/g;
//아이디 정규식
var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
// 비밀번호 정규식
var pwJ = /^[A-Za-z0-9]{4,12}$/;
// 이름 정규식
var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
// 휴대폰 번호 정규식
var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
/^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/
var birthJ = false;
   var address = $('#detailaddress');
      $(document).ready(function() {
   var address = $('#detailaddress');


//아이디 중복확인
   $("#userId").blur(function() {
      // id = "id_reg" / name = "userId"
      var userId = $('#userId').val();
      $.ajax({
         url : '${pageContext.request.contextPath}/member/idChk?userId='+ userId,
         type : 'POST',
         success : function(data) {
            console.log("1 = 중복o / 0 = 중복x : "+ data);                     
            
            if (data == 1) {
                  // 1 : 아이디가 중복되는 문구
                  $("#id_check").text("사용중인 아이디입니다 :p");
                  $("#id_check").css("color", "red");
                  $("#usercheck").attr("disabled", true);
               } else {
                  
                  if(idJ.test(userId)){
                     // 0 : 아이디 길이 / 문자열 검사
                     $("#id_check").text("");
                     $("#usercheck").attr("disabled", false);
            
                  } else if(userId == ""){
                     
                     $('#id_check').text('아이디를 입력해주세요 :)');
                     $('#id_check').css('color', 'red');
                     $("#usercheck").attr("disabled", true);            
                     
                  } else {
                     
                     $('#id_check').text("5~20자의 영문 소문자, 숫자와 특수기호만 사용 가능합니다.");
                     $('#id_check').css('color', 'red');
                     $("#usercheck").attr("disabled", true);
                  }
                  
               }
            }, error : function() {
                  console.log("실패");
            }
         });
      });
<<<<<<< HEAD
/*
=======
<<<<<<< HEAD
/*
=======

>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
$(document).ready(function(){
   $('input[type = "checkbox"][name="gender"]').click(function(){
      if($(this).prop('checked')){
         $('input[type = "checkbox"][name="gender"]').prop('checked',false);
         $(this).prop('checked',true);
      }
   })
})

$(document).ready(function(){
   $('input[type = "checkbox"][name="verify"]').click(function(){
      if($(this).prop('checked')){
         $('input[type = "checkbox"][name="verify"]').prop('checked',false);
         $(this).prop('checked',true);
      }
   })
})
<<<<<<< HEAD
      */
=======
<<<<<<< HEAD
      */
=======
      
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git

//정규식 ~ 배열 합해서 ---
$(document).ready(function(){
   // 취소
   $(".cencle").on("click", function(){
      
      location.href = "/";
                
   })
$('form').on('submit',function(){
   
<<<<<<< HEAD
   var inval_Arr = new Array(9).fill(false);
=======
<<<<<<< HEAD
   var inval_Arr = new Array(9).fill(false);
=======
   var inval_Arr = new Array(8).fill(false);
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
      if (idJ.test($('#userId').val())) {
         inval_Arr[0] = true;
      } else {
         inval_Arr[0] = false;
         alert('아이디를 확인하세요.');
         return false;
      }

   // 비밀번호가 같은 경우 && 비밀번호 정규식
   if (($('#userPass').val() == ($('#userPass2').val()))
         && pwJ.test($('#userPass').val())) {
      inval_Arr[1] = true;
   } else {
      inval_Arr[1] = false;
      alert('비밀번호를 확인하세요.');
      return false;
   }

   // 이름 정규식
   if (nameJ.test($('#userName').val())) {
      inval_Arr[2] = true;
   } else {
      inval_Arr[2] = false;
      alert('이름을 확인하세요.');
      return false;
   }

   // 생년월일 정규식
   if (birthJ) {
      console.log(birthJ);
      inval_Arr[3] = true;
   } else {
      inval_Arr[3] = false;
      alert('생년월일을 확인하세요.');
      return false;
   }

   // 이메일 정규식
   if (mailJ.test($('#email').val())){
      console.log(phoneJ.test($('#email').val()));
      inval_Arr[4] = true;
   } else {
      inval_Arr[4] = false;
      alert('이메일을 확인하세요.');
      return false;
   }

   // 휴대폰번호 정규식
   if (phoneJ.test($('#phone').val())) {
      console.log(phoneJ.test($('#phone').val()));
      inval_Arr[5] = true;
   } else {
      inval_Arr[5] = false;
      alert('휴대폰 번호를 확인하세요.');
      return false;
   }

   //성별 확인
   if(member.gender[0].checked==false&&member.gender[1].checked==false){
      inval_Arr[6] = false;
      alert('성별을 확인하세요.');
      return false;
   } else{
      inval_Arr[6] = true;
   }

   //주소확인
   if(address.val() == ''){
      inval_Arr[7] = false;
      alert('주소를 확인하세요.');
      return false;
   }else
      inval_Arr[7] = true;
   
<<<<<<< HEAD
   if(member.verify[0].checked==false&&member.verify[1].checked==false){
	   inval_Arr[8] = false;
	   alert('사용자 구분을 해주세요.');
	   return false;
   }else{
	   inval_Arr[8] = true;
   }
   
=======
<<<<<<< HEAD
   if(member.verify[0].checked==false&&member.verify[1].checked==false){
	   inval_Arr[8] = false;
	   alert('사용자 구분을 해주세요.');
	   return false;
   }else{
	   inval_Arr[8] = true;
   }
   
=======
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
   
   //전체 유효성 검사
   var validAll = true;
   for(var i = 0; i < inval_Arr.length; i++){
      if(inval_Arr[i] == false){
         validAll = false;
      }
   }

   if(validAll == true){ // 유효성 모두 통과
      alert('회원가입을 환영합니다.');
   } else{
      alert('정보를 다시 확인하세요.')
   }
});
});
//여기서 정규식 마무리~ 닫기.



// 개개인에 따른 정규식 
$('#userId').blur(function() {
   if (idJ.test($('#userId').val())) {
      console.log('true');
      $('#id_check').text('');
   } else {
      console.log('false');
      $('#id_check').text('5~20자의 영문 소문자, 숫자와 특수기호만 사용 가능합니다.');
      $('#id_check').css('color', 'red');
   }
});

$('#userPass').blur(function() {
   if (pwJ.test($('#userPass').val())) {
      console.log('true');
      $('#pw_check').text('');
   } else {
      console.log('false');
      $('#pw_check').text('4~12자의 숫자 , 문자로만 사용 가능합니다.');
      $('#pw_check').css('color', 'red');
   }
});

//1~2 패스워드 일치 확인
$('#userPass2').blur(function() {
   if ($('#userPass').val() != $(this).val()) {
      $('#pw2_check').text('비밀번호가 일치하지 않습니다.');
      $('#pw2_check').css('color', 'red');
   } else {
      $('#pw2_check').text('');
   }
});

//이름에 특수문자 들어가지 않도록 설정
$("#userName").blur(function() {
   if (nameJ.test($(this).val())) {
      console.log(nameJ.test($(this).val()));
      $("#name_check").text('');
   } else {
      $('#name_check').text('한글 2~4자 이내로 입력하세요. (특수기호, 공백 사용 불가)');
      $('#name_check').css('color', 'red');
   }
});

$("#email").blur(function() {
   if (mailJ.test($(this).val())) {
      $("#email_check").text('');
   } else {
      $('#email_check').text('이메일 양식을 확인해주세요.');
      $('#email_check').css('color', 'red');
   }
});

// 생일 유효성 검사
var birthJ = false;

// 생년월일 birthJ 유효성 검사

$('#birth').blur(function(){
   var dateStr = $(this).val();
   var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
   var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
   var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
   var today = new Date(); // 날짜 변수 선언
   var yearNow = today.getFullYear(); // 올해 연도 가져옴
   if (dateStr.length <=8) {
      // 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
      if (year > yearNow || year < 1900 ){
         $('#birth_check').text('생년월일을 확인해주세요');
         $('#birth_check').css('color', 'red');
      }
      else if (month < 1 || month > 12) {
         $('#birth_check').text('생년월일을 확인해주세요 ');
         $('#birth_check').css('color', 'red');
      }else if (day < 1 || day > 31) {
         $('#birth_check').text('생년월일을 확인해주세요 ');
         $('#birth_check').css('color', 'red');
      }else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
         $('#birth_check').text('생년월일을 확인해주세요 ');
         $('#birth_check').css('color', 'red');
      }else if (month == 2) {
         var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
         if (day>29 || (day==29 && !isleap)) {
            $('#birth_check').text('생년월일을 확인해주세요 ');
            $('#birth_check').css('color', 'red');
         }else{
            $('#birth_check').text('');
            birthJ = true;
         }
      }else{
         $('#birth_check').text('');
         birthJ = true;
      }//end of if
   }else{
      //1.입력된 생년월일이 8자 초과할때 : auth:false
      $('#birth_check').text('생년월일을 확인해주세요 ');
      $('#birth_check').css('color', 'red');
   }
}); //End of method /*

// 휴대전화

$('#phone').blur(function(){
   if(phoneJ.test($(this).val())){
      console.log(nameJ.test($(this).val()));
      $("#phone_check").text('');
   } else {
      $('#phone_check').text('휴대폰번호를 확인해주세요 ');
      $('#phone_check').css('color', 'red');
   }
});
});

//우편번호 찾기 버튼 클릭시 발생 이벤트

function execPostCode() {
   new daum.Postcode({
      oncomplete: function(data) {
         // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
         // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
         // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
         var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
         var extraRoadAddr = ''; // 도로명 조합형 주소 변수
         // 법정동명이 있을 경우 추가한다. (법정리는 제외)
         // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
         if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
            extraRoadAddr += data.bname;
         }
         // 건물명이 있고, 공동주택일 경우 추가한다.
         if(data.buildingName !== '' && data.apartment === 'Y'){
            extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
         }
         // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
         if(extraRoadAddr !== ''){
            extraRoadAddr = ' (' + extraRoadAddr + ')';
         }

         // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
         if(fullRoadAddr !== ''){
            fullRoadAddr += extraRoadAddr;
         }
         // 우편번호와 주소 정보를 해당 필드에 넣는다.
         console.log(data.zonecode);
         console.log(fullRoadAddr);
         /* var a = console.log(data.zonecode);
         var b = console.log(fullRoadAddr);
         if(a == null || b = null){
            alert("주소를 확인하세요.");
            return false;
         } */
         $("[name=oaddress]").val(data.zonecode);
         $("[name=address]").val(fullRoadAddr);
         document.getElementById('oaddress').value = data.zonecode; //5자리 새우편번호 사용
         document.getElementById('address').value = fullRoadAddr;
         //document.getElementById('detailaddress').value = data.jibunAddress;
      }
   }).open();
}

</script>

</head>

<body>
    <div class="main">
        <section class="login">
            <div class="container">
                <div class="signup-content">
                    <h2 class="form-title">Sign up</h2>
                    <div class="row">
                        <div class="col-sm-6 socials">
                            <p>기존에 사용하는 계정으로<br>간편하게 회원가입하세요.</p>
                            <hr>
                            <a href="#"><img src="/resources/images/register/Kakao.jpg"></a>
                            <a href="#"><img src="/resources/images/register/naver.jpg"></a>
                            <a href="#"><img src="/resources/images/register/facebook.jpg"></a>
                        </div>
                        <div class="col-sm-6 hidden-xs">
                            <div class="signup-image">
                                <img src="/resources/images/register/signup.jpg" alt="sing up image">
                            </div>
                        </div>
                    </div>
                    <hr>

                    <div class="signup-form">
                        <form method="POST" class="register-form" id="login-form">

                            <div class="form-group">
                                <label for="mem_usertype">사용자구분</label> <br>
<<<<<<< HEAD
                                <input type="radio" id="verify" name="verify" value="1" checked="checked"/>일반
                                <input type="radio" id="verify" name="verify" value="0" />사업자
=======
<<<<<<< HEAD
                                <input type="radio" id="verify" name="verify" value="1" checked="checked"/>일반
                                <input type="radio" id="verify" name="verify" value="0" />사업자
=======
                                <input type="checkbox" id="verify" name="verify" value="1" />일반
                                <input type="checkbox" id="verify" name="verify" value="0" />사업자
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
                            </div>

                            <div class="form-group">
                                <label for="id">아이디</label>
                                <input type="text" class="form-control" id="userId" name="userId" required="required" />
                                <div class="eheck_font" id="id_check"></div>
                            </div>

                            <div class="form-group has-success">
                                <label for="pw">비밀번호</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                                    </span>
                                    <input type="password" class="form-control" id="userPass" name="userPass"
                                        required="required">
                                    <span class="glyphicon glyphicon-ok form-control-feedback"
                                        aria-hidden="true"></span>
                                    <span id="inputGroupSuccess2Status"></span>
                                </div>
                                <div class="eheck_font" id="pw_check"></div>
                            </div>

                            <div class="form-group has-error">
                                <label for="pw2">비밀번호 재확인</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                                    </span>
                                    <input type="password" class="form-control" id="userPass2" name="userPass2"
                                        required="required" />
                                    <span class="glyphicon glyphicon-ok form-control-feedback"
                                        aria-hidden="true"></span>
                                    <span id="inputGroupSuccess2Status"></span>
                                </div>
                                <div class="eheck_font" id="pw2_check"></div>
                            </div>

                            <div class="form-group">
                                <label for="mem_name">이름</label>
                                <input type="text" class="form-control" id="userName" name="userName"
                                    required="required" />
                                <div class="eheck_font" id="name_check"></div>
                            </div>

                            <div class="form-group">
                                <label for="mem_birth">생년월일</label>
                                <input type="tel" class="form-control" id="birth" name="birth"
                                    placeholder="ex) 19990101" required="required" />
                                <div class="eheck_font" id="birth_check"></div>
                            </div>

                            <div class="form-group">
                                <label for="mem_email">이메일 주소</label>
                                <input type="email" class="form-control" id="email" name="email" required="required" />
                                <div class="eheck_font" id="email_check"></div>
                            </div>

                            <div class="form-group">
                                <label for="mem_phone">휴대폰 번호('-'없이 번호만 입력해주세요)</label>
                                <input type="tel" class="form-control" id="phone" name="phone" required="required" />
                                <div class="eheck_font" id="phone_check"></div>
                            </div>

                            <div class="form-group">
                                <label for="mem_gender">성별 </label> <br>
<<<<<<< HEAD
                                <input type="radio" id="gender" name="gender" value="남" checked="checked">남
                                <input type="radio" id="gender" name="gender" value="여">여
                            </div>

                            <div class="form-group">
                                <input class="form-control" name="oaddress" id="oaddress" type="text"
                                    readonly="readonly" />
                                <button type="button" class="btn btn-default" onclick="execPostCode();">
                                    <i class="fa fa-search"></i> 우편번호 찾기
                                </button>
                            </div>

                            <div class="form-group">
                                <input class="form-control" style="top: 5px;" placeholder="도로명 주소" name="address"
                                    id="address" type="text" readonly="readonly" />
                            </div>

                            <div class="form-group">
                                <input class="form-control" placeholder="상세주소" name="detailaddress" id="detailaddress"
                                    type="text" required="required" />
                            </div>

                            <div class="form-group form-button">
                                <input type="submit" name="signup_btn" id="signup_btn" value="회원가입" />
                                <a href="/"><button type="button" id="signup_cancel">취소</button></a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script>

        //모든 공백 체크 정규식
        var empJ = /\s/g;
        //아이디 정규식
        var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
        // 비밀번호 정규식
        var pwJ = /^[A-Za-z0-9]{4,12}$/;
        // 이름 정규식
        var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
        // 이메일 검사 정규식
        var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        // 휴대폰 번호 정규식
        var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
        /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/
        var birthJ = false;
           var address = $('#detailaddress');
              $(document).ready(function() {
           var address = $('#detailaddress');
        
        
        //아이디 중복확인
           $("#userId").blur(function() {
              // id = "id_reg" / name = "userId"
              var userId = $('#userId').val();
              $.ajax({
                 url : '${pageContext.request.contextPath}/member/idChk?userId='+ userId,
                 type : 'POST',
                 success : function(data) {
                    console.log("1 = 중복o / 0 = 중복x : "+ data);                     
                    
                    if (data == 1) {
                          // 1 : 아이디가 중복되는 문구
                          $("#id_check").text("사용중인 아이디입니다 :p");
                          $("#id_check").css("color", "red");
                          $("#usercheck").attr("disabled", true);
                       } else {
                          
                          if(idJ.test(userId)){
                             // 0 : 아이디 길이 / 문자열 검사
                             $("#id_check").text("");
                             $("#usercheck").attr("disabled", false);
                    
                          } else if(userId == ""){
                             
                             $('#id_check').text('아이디를 입력해주세요 :)');
                             $('#id_check').css('color', 'red');
                             $("#usercheck").attr("disabled", true);            
                             
                          } else {
                             
                             $('#id_check').text("5~20자의 영문 소문자, 숫자와 특수기호만 사용 가능합니다.");
                             $('#id_check').css('color', 'red');
                             $("#usercheck").attr("disabled", true);
                          }
                          
                       }
                    }, error : function() {
                          console.log("실패");
                    }
                 });
              });
        
        $(document).ready(function(){
           $('input[type = "checkbox"][name="gender"]').click(function(){
              if($(this).prop('checked')){
                 $('input[type = "checkbox"][name="gender"]').prop('checked',false);
                 $(this).prop('checked',true);
              }
           })
        })
        
        $(document).ready(function(){
           $('input[type = "checkbox"][name="verify"]').click(function(){
              if($(this).prop('checked')){
                 $('input[type = "checkbox"][name="verify"]').prop('checked',false);
                 $(this).prop('checked',true);
              }
           })
        })
              
        
        //정규식 ~ 배열 합해서 ---
        $(document).ready(function(){
           // 취소
           $(".cencle").on("click", function(){
              
              location.href = "/";
                        
           })
        $('form').on('submit',function(){
           
           var inval_Arr = new Array(8).fill(false);
              if (idJ.test($('#userId').val())) {
                 inval_Arr[0] = true;
              } else {
                 inval_Arr[0] = false;
                 alert('아이디를 확인하세요.');
                 return false;
              }
        
           // 비밀번호가 같은 경우 && 비밀번호 정규식
           if (($('#userPass').val() == ($('#userPass2').val()))
                 && pwJ.test($('#userPass').val())) {
              inval_Arr[1] = true;
           } else {
              inval_Arr[1] = false;
              alert('비밀번호를 확인하세요.');
              return false;
           }
        
           // 이름 정규식
           if (nameJ.test($('#userName').val())) {
              inval_Arr[2] = true;
           } else {
              inval_Arr[2] = false;
              alert('이름을 확인하세요.');
              return false;
           }
        
           // 생년월일 정규식
           if (birthJ) {
              console.log(birthJ);
              inval_Arr[3] = true;
           } else {
              inval_Arr[3] = false;
              alert('생년월일을 확인하세요.');
              return false;
           }
        
           // 이메일 정규식
           if (mailJ.test($('#email').val())){
              console.log(phoneJ.test($('#email').val()));
              inval_Arr[4] = true;
           } else {
              inval_Arr[4] = false;
              alert('이메일을 확인하세요.');
              return false;
           }
        
           // 휴대폰번호 정규식
           if (phoneJ.test($('#phone').val())) {
              console.log(phoneJ.test($('#phone').val()));
              inval_Arr[5] = true;
           } else {
              inval_Arr[5] = false;
              alert('휴대폰 번호를 확인하세요.');
              return false;
           }
        
           //성별 확인
           if(member.gender[0].checked==false&&member.gender[1].checked==false){
              inval_Arr[6] = false;
              alert('성별을 확인하세요.');
              return false;
           } else{
              inval_Arr[6] = true;
           }
        
           //주소확인
           if(address.val() == ''){
              inval_Arr[7] = false;
              alert('주소를 확인하세요.');
              return false;
           }else
              inval_Arr[7] = true;
           
           
           //전체 유효성 검사
           var validAll = true;
           for(var i = 0; i < inval_Arr.length; i++){
              if(inval_Arr[i] == false){
                 validAll = false;
              }
           }
        
           if(validAll == true){ // 유효성 모두 통과
              alert('회원가입을 환영합니다.');
           } else{
              alert('정보를 다시 확인하세요.')
           }
        });
        });
        //여기서 정규식 마무리~ 닫기.
        
        
        
        // 개개인에 따른 정규식 
        $('#userId').blur(function() {
           if (idJ.test($('#userId').val())) {
              console.log('true');
              $('#id_check').text('');
           } else {
              console.log('false');
              $('#id_check').text('5~20자의 영문 소문자, 숫자와 특수기호만 사용 가능합니다.');
              $('#id_check').css('color', 'red');
           }
        });
        
        $('#userPass').blur(function() {
           if (pwJ.test($('#userPass').val())) {
              console.log('true');
              $('#pw_check').text('');
           } else {
              console.log('false');
              $('#pw_check').text('4~12자의 숫자 , 문자로만 사용 가능합니다.');
              $('#pw_check').css('color', 'red');
           }
        });
        
        //1~2 패스워드 일치 확인
        $('#userPass2').blur(function() {
           if ($('#userPass').val() != $(this).val()) {
              $('#pw2_check').text('비밀번호가 일치하지 않습니다.');
              $('#pw2_check').css('color', 'red');
           } else {
              $('#pw2_check').text('');
           }
        });
        
        //이름에 특수문자 들어가지 않도록 설정
        $("#userName").blur(function() {
           if (nameJ.test($(this).val())) {
              console.log(nameJ.test($(this).val()));
              $("#name_check").text('');
           } else {
              $('#name_check').text('한글 2~4자 이내로 입력하세요. (특수기호, 공백 사용 불가)');
              $('#name_check').css('color', 'red');
           }
        });
        
        $("#email").blur(function() {
           if (mailJ.test($(this).val())) {
              $("#email_check").text('');
           } else {
              $('#email_check').text('이메일 양식을 확인해주세요.');
              $('#email_check').css('color', 'red');
           }
        });
        
        // 생일 유효성 검사
        var birthJ = false;
        
     // 생년월일 birthJ 유효성 검사

        $('#birth').blur(function(){
        	var dateStr = $(this).val();
        	var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
        	var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
        	var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
        	var today = new Date(); // 날짜 변수 선언
        	var yearNow = today.getFullYear(); // 올해 연도 가져옴
        	if (dateStr.length <=8) {
        		// 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
        		if (year > yearNow || year < 1900 ){
        			$('#birth_check').text('생년월일을 확인해주세요');
        			$('#birth_check').css('color', 'red');
        		}
        		else if (month<1 || month>12) {
        			$('#birth_check').text('생년월일을 확인해주세요 ');
        			$('#birth_check').css('color', 'red');
        		}else if (day<1 || day>31) {
        			$('#birth_check').text('생년월일을 확인해주세요 ');
        			$('#birth_check').css('color', 'red');
        		}else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
        			$('#birth_check').text('생년월일을 확인해주세요 ');
        			$('#birth_check').css('color', 'red');
        		}else if (month == 2) {
        			var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
        			if (day>29 || (day==29 && !isleap)) {
        				$('#birth_check').text('생년월일을 확인해주세요 ');
        				$('#birth_check').css('color', 'red');
        			}else{
        				$('#birth_check').text('');
        				birthJ = true;
        			}
        		}else{
        			$('#birth_check').text('');
        			birthJ = true;
        		}//end of if
        	}else{
        		//1.입력된 생년월일이 8자 초과할때 : auth:false
        		$('#birth_check').text('생년월일을 확인해주세요 ');
        		$('#birth_check').css('color', 'red');
        	}
        }); //End of method /*

=======
<<<<<<< HEAD
                                <input type="radio" id="gender" name="gender" value="남" checked="checked">남
                                <input type="radio" id="gender" name="gender" value="여">여
                            </div>

                            <div class="form-group">
                                <input class="form-control" name="oaddress" id="oaddress" type="text"
                                    readonly="readonly" />
                                <button type="button" class="btn btn-default" onclick="execPostCode();">
                                    <i class="fa fa-search"></i> 우편번호 찾기
                                </button>
                            </div>

                            <div class="form-group">
                                <input class="form-control" style="top: 5px;" placeholder="도로명 주소" name="address"
                                    id="address" type="text" readonly="readonly" />
                            </div>

                            <div class="form-group">
                                <input class="form-control" placeholder="상세주소" name="detailaddress" id="detailaddress"
                                    type="text" required="required" />
                            </div>

                            <div class="form-group form-button">
                                <input type="submit" name="signup_btn" id="signup_btn" value="회원가입" />
                                <a href="/"><button type="button" id="signup_cancel">취소</button></a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script>

        //모든 공백 체크 정규식
        var empJ = /\s/g;
        //아이디 정규식
        var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
        // 비밀번호 정규식
        var pwJ = /^[A-Za-z0-9]{4,12}$/;
        // 이름 정규식
        var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
        // 이메일 검사 정규식
        var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        // 휴대폰 번호 정규식
        var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
        /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/
        var birthJ = false;
           var address = $('#detailaddress');
              $(document).ready(function() {
           var address = $('#detailaddress');
        
        
        //아이디 중복확인
           $("#userId").blur(function() {
              // id = "id_reg" / name = "userId"
              var userId = $('#userId').val();
              $.ajax({
                 url : '${pageContext.request.contextPath}/member/idChk?userId='+ userId,
                 type : 'POST',
                 success : function(data) {
                    console.log("1 = 중복o / 0 = 중복x : "+ data);                     
                    
                    if (data == 1) {
                          // 1 : 아이디가 중복되는 문구
                          $("#id_check").text("사용중인 아이디입니다 :p");
                          $("#id_check").css("color", "red");
                          $("#usercheck").attr("disabled", true);
                       } else {
                          
                          if(idJ.test(userId)){
                             // 0 : 아이디 길이 / 문자열 검사
                             $("#id_check").text("");
                             $("#usercheck").attr("disabled", false);
                    
                          } else if(userId == ""){
                             
                             $('#id_check').text('아이디를 입력해주세요 :)');
                             $('#id_check').css('color', 'red');
                             $("#usercheck").attr("disabled", true);            
                             
                          } else {
                             
                             $('#id_check').text("5~20자의 영문 소문자, 숫자와 특수기호만 사용 가능합니다.");
                             $('#id_check').css('color', 'red');
                             $("#usercheck").attr("disabled", true);
                          }
                          
                       }
                    }, error : function() {
                          console.log("실패");
                    }
                 });
              });
        
        $(document).ready(function(){
           $('input[type = "checkbox"][name="gender"]').click(function(){
              if($(this).prop('checked')){
                 $('input[type = "checkbox"][name="gender"]').prop('checked',false);
                 $(this).prop('checked',true);
              }
           })
        })
        
        $(document).ready(function(){
           $('input[type = "checkbox"][name="verify"]').click(function(){
              if($(this).prop('checked')){
                 $('input[type = "checkbox"][name="verify"]').prop('checked',false);
                 $(this).prop('checked',true);
              }
           })
        })
              
        
        //정규식 ~ 배열 합해서 ---
        $(document).ready(function(){
           // 취소
           $(".cencle").on("click", function(){
              
              location.href = "/";
                        
           })
        $('form').on('submit',function(){
           
           var inval_Arr = new Array(8).fill(false);
              if (idJ.test($('#userId').val())) {
                 inval_Arr[0] = true;
              } else {
                 inval_Arr[0] = false;
                 alert('아이디를 확인하세요.');
                 return false;
              }
        
           // 비밀번호가 같은 경우 && 비밀번호 정규식
           if (($('#userPass').val() == ($('#userPass2').val()))
                 && pwJ.test($('#userPass').val())) {
              inval_Arr[1] = true;
           } else {
              inval_Arr[1] = false;
              alert('비밀번호를 확인하세요.');
              return false;
           }
        
           // 이름 정규식
           if (nameJ.test($('#userName').val())) {
              inval_Arr[2] = true;
           } else {
              inval_Arr[2] = false;
              alert('이름을 확인하세요.');
              return false;
           }
        
           // 생년월일 정규식
           if (birthJ) {
              console.log(birthJ);
              inval_Arr[3] = true;
           } else {
              inval_Arr[3] = false;
              alert('생년월일을 확인하세요.');
              return false;
           }
        
           // 이메일 정규식
           if (mailJ.test($('#email').val())){
              console.log(phoneJ.test($('#email').val()));
              inval_Arr[4] = true;
           } else {
              inval_Arr[4] = false;
              alert('이메일을 확인하세요.');
              return false;
           }
        
           // 휴대폰번호 정규식
           if (phoneJ.test($('#phone').val())) {
              console.log(phoneJ.test($('#phone').val()));
              inval_Arr[5] = true;
           } else {
              inval_Arr[5] = false;
              alert('휴대폰 번호를 확인하세요.');
              return false;
           }
        
           //성별 확인
           if(member.gender[0].checked==false&&member.gender[1].checked==false){
              inval_Arr[6] = false;
              alert('성별을 확인하세요.');
              return false;
           } else{
              inval_Arr[6] = true;
           }
        
           //주소확인
           if(address.val() == ''){
              inval_Arr[7] = false;
              alert('주소를 확인하세요.');
              return false;
           }else
              inval_Arr[7] = true;
           
           
           //전체 유효성 검사
           var validAll = true;
           for(var i = 0; i < inval_Arr.length; i++){
              if(inval_Arr[i] == false){
                 validAll = false;
              }
           }
        
           if(validAll == true){ // 유효성 모두 통과
              alert('회원가입을 환영합니다.');
           } else{
              alert('정보를 다시 확인하세요.')
           }
        });
        });
        //여기서 정규식 마무리~ 닫기.
        
        
        
        // 개개인에 따른 정규식 
        $('#userId').blur(function() {
           if (idJ.test($('#userId').val())) {
              console.log('true');
              $('#id_check').text('');
           } else {
              console.log('false');
              $('#id_check').text('5~20자의 영문 소문자, 숫자와 특수기호만 사용 가능합니다.');
              $('#id_check').css('color', 'red');
           }
        });
        
        $('#userPass').blur(function() {
           if (pwJ.test($('#userPass').val())) {
              console.log('true');
              $('#pw_check').text('');
           } else {
              console.log('false');
              $('#pw_check').text('4~12자의 숫자 , 문자로만 사용 가능합니다.');
              $('#pw_check').css('color', 'red');
           }
        });
        
        //1~2 패스워드 일치 확인
        $('#userPass2').blur(function() {
           if ($('#userPass').val() != $(this).val()) {
              $('#pw2_check').text('비밀번호가 일치하지 않습니다.');
              $('#pw2_check').css('color', 'red');
           } else {
              $('#pw2_check').text('');
           }
        });
        
        //이름에 특수문자 들어가지 않도록 설정
        $("#userName").blur(function() {
           if (nameJ.test($(this).val())) {
              console.log(nameJ.test($(this).val()));
              $("#name_check").text('');
           } else {
              $('#name_check').text('한글 2~4자 이내로 입력하세요. (특수기호, 공백 사용 불가)');
              $('#name_check').css('color', 'red');
           }
        });
        
        $("#email").blur(function() {
           if (mailJ.test($(this).val())) {
              $("#email_check").text('');
           } else {
              $('#email_check').text('이메일 양식을 확인해주세요.');
              $('#email_check').css('color', 'red');
           }
        });
        
        // 생일 유효성 검사
        var birthJ = false;
        
     // 생년월일 birthJ 유효성 검사

        $('#birth').blur(function(){
        	var dateStr = $(this).val();
        	var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
        	var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
        	var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
        	var today = new Date(); // 날짜 변수 선언
        	var yearNow = today.getFullYear(); // 올해 연도 가져옴
        	if (dateStr.length <=8) {
        		// 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
        		if (year > yearNow || year < 1900 ){
        			$('#birth_check').text('생년월일을 확인해주세요');
        			$('#birth_check').css('color', 'red');
        		}
        		else if (month<1 || month>12) {
        			$('#birth_check').text('생년월일을 확인해주세요 ');
        			$('#birth_check').css('color', 'red');
        		}else if (day<1 || day>31) {
        			$('#birth_check').text('생년월일을 확인해주세요 ');
        			$('#birth_check').css('color', 'red');
        		}else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
        			$('#birth_check').text('생년월일을 확인해주세요 ');
        			$('#birth_check').css('color', 'red');
        		}else if (month == 2) {
        			var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
        			if (day>29 || (day==29 && !isleap)) {
        				$('#birth_check').text('생년월일을 확인해주세요 ');
        				$('#birth_check').css('color', 'red');
        			}else{
        				$('#birth_check').text('');
        				birthJ = true;
        			}
        		}else{
        			$('#birth_check').text('');
        			birthJ = true;
        		}//end of if
        	}else{
        		//1.입력된 생년월일이 8자 초과할때 : auth:false
        		$('#birth_check').text('생년월일을 확인해주세요 ');
        		$('#birth_check').css('color', 'red');
        	}
        }); //End of method /*

=======
                                <input type="checkbox" id="gender" name="gender" value="남">남
                                <input type="checkbox" id="gender" name="gender" value="여">여
                            </div>

                            <div class="form-group">
                                <input class="form-control" name="oaddress" id="oaddress" type="text"
                                    readonly="readonly" />
                                <button type="button" class="btn btn-default" onclick="execPostCode();">
                                    <i class="fa fa-search"></i> 우편번호 찾기
                                </button>
                            </div>

                            <div class="form-group">
                                <input class="form-control" style="top: 5px;" placeholder="도로명 주소" name="address"
                                    id="address" type="text" readonly="readonly" />
                            </div>

                            <div class="form-group">
                                <input class="form-control" placeholder="상세주소" name="detailaddress" id="detailaddress"
                                    type="text" required="required" />
                            </div>

                            <div class="form-group form-button">
                                <input type="submit" name="signup_btn" id="signup_btn" value="회원가입" />
                                <a href="/"><button type="button" id="signup_cancel">취소</button></a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script>

        //모든 공백 체크 정규식
        var empJ = /\s/g;
        //아이디 정규식
        var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
        // 비밀번호 정규식
        var pwJ = /^[A-Za-z0-9]{4,12}$/;
        // 이름 정규식
        var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
        // 이메일 검사 정규식
        var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        // 휴대폰 번호 정규식
        var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
        /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/
        var birthJ = false;
           var address = $('#detailaddress');
              $(document).ready(function() {
           var address = $('#detailaddress');
        
        
        //아이디 중복확인
           $("#userId").blur(function() {
              // id = "id_reg" / name = "userId"
              var userId = $('#userId').val();
              $.ajax({
                 url : '${pageContext.request.contextPath}/member/idChk?userId='+ userId,
                 type : 'POST',
                 success : function(data) {
                    console.log("1 = 중복o / 0 = 중복x : "+ data);                     
                    
                    if (data == 1) {
                          // 1 : 아이디가 중복되는 문구
                          $("#id_check").text("사용중인 아이디입니다 :p");
                          $("#id_check").css("color", "red");
                          $("#usercheck").attr("disabled", true);
                       } else {
                          
                          if(idJ.test(userId)){
                             // 0 : 아이디 길이 / 문자열 검사
                             $("#id_check").text("");
                             $("#usercheck").attr("disabled", false);
                    
                          } else if(userId == ""){
                             
                             $('#id_check').text('아이디를 입력해주세요 :)');
                             $('#id_check').css('color', 'red');
                             $("#usercheck").attr("disabled", true);            
                             
                          } else {
                             
                             $('#id_check').text("5~20자의 영문 소문자, 숫자와 특수기호만 사용 가능합니다.");
                             $('#id_check').css('color', 'red');
                             $("#usercheck").attr("disabled", true);
                          }
                          
                       }
                    }, error : function() {
                          console.log("실패");
                    }
                 });
              });
        
        $(document).ready(function(){
           $('input[type = "checkbox"][name="gender"]').click(function(){
              if($(this).prop('checked')){
                 $('input[type = "checkbox"][name="gender"]').prop('checked',false);
                 $(this).prop('checked',true);
              }
           })
        })
        
        $(document).ready(function(){
           $('input[type = "checkbox"][name="verify"]').click(function(){
              if($(this).prop('checked')){
                 $('input[type = "checkbox"][name="verify"]').prop('checked',false);
                 $(this).prop('checked',true);
              }
           })
        })
              
        
        //정규식 ~ 배열 합해서 ---
        $(document).ready(function(){
           // 취소
           $(".cencle").on("click", function(){
              
              location.href = "/";
                        
           })
        $('form').on('submit',function(){
           
           var inval_Arr = new Array(8).fill(false);
              if (idJ.test($('#userId').val())) {
                 inval_Arr[0] = true;
              } else {
                 inval_Arr[0] = false;
                 alert('아이디를 확인하세요.');
                 return false;
              }
        
           // 비밀번호가 같은 경우 && 비밀번호 정규식
           if (($('#userPass').val() == ($('#userPass2').val()))
                 && pwJ.test($('#userPass').val())) {
              inval_Arr[1] = true;
           } else {
              inval_Arr[1] = false;
              alert('비밀번호를 확인하세요.');
              return false;
           }
        
           // 이름 정규식
           if (nameJ.test($('#userName').val())) {
              inval_Arr[2] = true;
           } else {
              inval_Arr[2] = false;
              alert('이름을 확인하세요.');
              return false;
           }
        
           // 생년월일 정규식
           if (birthJ) {
              console.log(birthJ);
              inval_Arr[3] = true;
           } else {
              inval_Arr[3] = false;
              alert('생년월일을 확인하세요.');
              return false;
           }
        
           // 이메일 정규식
           if (mailJ.test($('#email').val())){
              console.log(phoneJ.test($('#email').val()));
              inval_Arr[4] = true;
           } else {
              inval_Arr[4] = false;
              alert('이메일을 확인하세요.');
              return false;
           }
        
           // 휴대폰번호 정규식
           if (phoneJ.test($('#phone').val())) {
              console.log(phoneJ.test($('#phone').val()));
              inval_Arr[5] = true;
           } else {
              inval_Arr[5] = false;
              alert('휴대폰 번호를 확인하세요.');
              return false;
           }
        
           //성별 확인
           if(member.gender[0].checked==false&&member.gender[1].checked==false){
              inval_Arr[6] = false;
              alert('성별을 확인하세요.');
              return false;
           } else{
              inval_Arr[6] = true;
           }
        
           //주소확인
           if(address.val() == ''){
              inval_Arr[7] = false;
              alert('주소를 확인하세요.');
              return false;
           }else
              inval_Arr[7] = true;
           
           
           //전체 유효성 검사
           var validAll = true;
           for(var i = 0; i < inval_Arr.length; i++){
              if(inval_Arr[i] == false){
                 validAll = false;
              }
           }
        
           if(validAll == true){ // 유효성 모두 통과
              alert('회원가입을 환영합니다.');
           } else{
              alert('정보를 다시 확인하세요.')
           }
        });
        });
        //여기서 정규식 마무리~ 닫기.
        
        
        
        // 개개인에 따른 정규식 
        $('#userId').blur(function() {
           if (idJ.test($('#userId').val())) {
              console.log('true');
              $('#id_check').text('');
           } else {
              console.log('false');
              $('#id_check').text('5~20자의 영문 소문자, 숫자와 특수기호만 사용 가능합니다.');
              $('#id_check').css('color', 'red');
           }
        });
        
        $('#userPass').blur(function() {
           if (pwJ.test($('#userPass').val())) {
              console.log('true');
              $('#pw_check').text('');
           } else {
              console.log('false');
              $('#pw_check').text('4~12자의 숫자 , 문자로만 사용 가능합니다.');
              $('#pw_check').css('color', 'red');
           }
        });
        
        //1~2 패스워드 일치 확인
        $('#userPass2').blur(function() {
           if ($('#userPass').val() != $(this).val()) {
              $('#pw2_check').text('비밀번호가 일치하지 않습니다.');
              $('#pw2_check').css('color', 'red');
           } else {
              $('#pw2_check').text('');
           }
        });
        
        //이름에 특수문자 들어가지 않도록 설정
        $("#userName").blur(function() {
           if (nameJ.test($(this).val())) {
              console.log(nameJ.test($(this).val()));
              $("#name_check").text('');
           } else {
              $('#name_check').text('한글 2~4자 이내로 입력하세요. (특수기호, 공백 사용 불가)');
              $('#name_check').css('color', 'red');
           }
        });
        
        $("#email").blur(function() {
           if (mailJ.test($(this).val())) {
              $("#email_check").text('');
           } else {
              $('#email_check').text('이메일 양식을 확인해주세요.');
              $('#email_check').css('color', 'red');
           }
        });
        
        // 생일 유효성 검사
        var birthJ = false;
        
        // 생년월일 birthJ 유효성 검사
        
        $('#birth').blur(function(){
           var dateStr = $(this).val();
           var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
           var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
           var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
           var today = new Date(); // 날짜 변수 선언
           var yearNow = today.getFullYear(); // 올해 연도 가져옴
           if (dateStr.length <=8) {
              // 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
              if (year > yearNow || year < 1900 ){
                 $('#birth_check').text('생년월일을 확인해주세요');
                 $('#birth_check').css('color', 'red');
              }
              else if (month < 1 || month > 12) {
                 $('#birth_check').text('생년월일을 확인해주세요 ');
                 $('#birth_check').css('color', 'red');
              }else if (day < 1 || day > 31) {
                 $('#birth_check').text('생년월일을 확인해주세요 ');
                 $('#birth_check').css('color', 'red');
              }else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
                 $('#birth_check').text('생년월일을 확인해주세요 ');
                 $('#birth_check').css('color', 'red');
              }else if (month == 2) {
                 var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
                 if (day>29 || (day==29 && !isleap)) {
                    $('#birth_check').text('생년월일을 확인해주세요 ');
                    $('#birth_check').css('color', 'red');
                 }else{
                    $('#birth_check').text('');
                    birthJ = true;
                 }
              }else{
                 $('#birth_check').text('');
                 birthJ = true;
              }//end of if
           }else{
              //1.입력된 생년월일이 8자 초과할때 : auth:false
              $('#birth_check').text('생년월일을 확인해주세요 ');
              $('#birth_check').css('color', 'red');
           }
        }); //End of method /*
        
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
        // 휴대전화
        
        $('#phone').blur(function(){
           if(phoneJ.test($(this).val())){
              console.log(nameJ.test($(this).val()));
              $("#phone_check").text('');
           } else {
              $('#phone_check').html('휴대폰번호를 확인해주세요 ');
              $('#phone_check').css('color', 'red');
           }
        });
        });
        
        //우편번호 찾기 버튼 클릭시 발생 이벤트
        
        function execPostCode() {
           new daum.Postcode({
              oncomplete: function(data) {
                 // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                 // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                 // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                 var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                 var extraRoadAddr = ''; // 도로명 조합형 주소 변수
                 // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                 // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                 if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                 }
                 // 건물명이 있고, 공동주택일 경우 추가한다.
                 if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                 }
                 // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                 if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                 }
        
                 // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                 if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                 }
                 // 우편번호와 주소 정보를 해당 필드에 넣는다.
                 console.log(data.zonecode);
                 console.log(fullRoadAddr);
                 /* var a = console.log(data.zonecode);
                 var b = console.log(fullRoadAddr);
                 if(a == null || b = null){
                    alert("주소를 확인하세요.");
                    return false;
                 } */
                 $("[name=oaddress]").val(data.zonecode);
                 $("[name=address]").val(fullRoadAddr);
                 document.getElementById('oaddress').value = data.zonecode; //5자리 새우편번호 사용
                 document.getElementById('address').value = fullRoadAddr;
                 //document.getElementById('detailaddress').value = data.jibunAddress;
              }
           }).open();
        }
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>
