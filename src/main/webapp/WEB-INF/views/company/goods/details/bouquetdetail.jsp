
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="/resources/jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("input:text[numberOnly]").on("keyup", function() {
		    $(this).val($(this).val().replace(/[^0-9]/g,""));
		});

		var formObj = $("form[name='register2']");
		$("#register_Btn").on("click", function() {
			if (fn_valiChk()) {
				return false;
			}
			formObj.attr("action", "/company/goods/register2");
			formObj.attr("method", "post");
			formObj.submit();
		});
		
		//서류사항 textarea 체크
		$('#gdsName').keyup(
				function(e) {
					var content = $(this).val();
					$('.gdsName > #counter').html(
							"(<em>" + content.length
									+ " </em> / 최대 200자)"); //글자수 실시간 카운팅

					if (content.length > 200) {
						alert("최대 200자까지 입력 가능합니다.");
						$(this).val(content.substring(0, 200));
						$('.gdsName > #counter').html(
								"(200 / 최대 200자)");
					}
				});

		$('#gdsPrice').keyup(
				function(e) {
					var content = $(this).val();
					$('.gdsPrice > #counter').html(
							"(<em>" + content.length
									+ " </em> / 최대 30자)"); //글자수 실시간 카운팅

					if (content.length > 30) {
						alert("최대 30자까지 입력 가능합니다.");
						$(this).val(content.substring(0, 30));
						$('.gdsPrice > #counter').html(
								"(30 / 최대 30자)");
					}
				});

		$('#gdsStock').keyup(
				function(e) {
					var content = $(this).val();
					$('.gdsStock > #counter').html(
							"(<em>" + content.length
									+ " </em> / 최대 30자)"); //글자수 실시간 카운팅

					if (content.length > 30) {
						alert("최대 30자까지 입력 가능합니다.");
						$(this).val(content.substring(0, 30));
						$('.gdsStock > #counter').html(
								"(30 / 최대 30자)");
					}
				});

		$('#comName').keyup(
				function(e) {
					var content = $(this).val();
					$('.comName > #counter').html(
							"(<em>" + content.length
									+ " </em> / 최대 200자)"); //글자수 실시간 카운팅

					if (content.length > 200) {
						alert("최대 200자까지 입력 가능합니다.");
						$(this).val(content.substring(0, 200));
						$('.comName > #counter').html(
								"(200 / 최대 200자)");
					}
				});

		$('#comSubway').keyup(
				function(e) {
					var content = $(this).val();
					$('.comSubway > #counter').html(
							"(<em>" + content.length
									+ " </em> / 최대 30자)"); //글자수 실시간 카운팅

					if (content.length > 30) {
						alert("최대 30자까지 입력 가능합니다.");
						$(this).val(content.substring(0, 30));
						$('.comSubway > #counter').html(
								"(30 / 최대 30자)");
					}
				});

		$('#comArea').keyup(
				function(e) {
					var content = $(this).val();
					$('.comArea > #counter').html(
							"(<em>" + content.length
									+ " </em> / 최대 30자)"); //글자수 실시간 카운팅

					if (content.length > 30) {
						alert("최대 30자까지 입력 가능합니다.");
						$(this).val(content.substring(0, 30));
						$('.comArea > #counter').html(
								"(30 / 최대 30자)");
					}
				});

		$('#prod_comp').keyup(
				function(e) {
					var content = $(this).val();
					$('.prod_comp > #counter').html(
							"(<em>" + content.length
									+ " </em> / 최대 30자)"); //글자수 실시간 카운팅

					if (content.length > 30) {
						alert("최대 30자까지 입력 가능합니다.");
						$(this).val(content.substring(0, 30));
						$('.prod_comp >  #counter').html(
								"(30 / 최대 30자)");
					}
				});

		$('#standard').keyup(
				function(e) {
					var content = $(this).val();
					$('.standard > #counter').html(
							"(<em>" + content.length
									+ " </em> / 최대 30자)"); //글자수 실시간 카운팅

					if (content.length > 30) {
						alert("최대 30자까지 입력 가능합니다.");
						$(this).val(content.substring(0, 30));
						$('.standard >  #counter').html(
								"(30 / 최대 30자)");
					}
				});

		$('#mater').keyup(
				function(e) {
					var content = $(this).val();
					$('.mater > #counter').html(
							"(<em>" + content.length
									+ " </em> / 최대 50자)"); //글자수 실시간 카운팅

					if (content.length > 50) {
						alert("최대 50자까지 입력 가능합니다.");
						$(this).val(content.substring(0, 50));
						$('.mater >  #counter').html(
								"(50 / 최대 50자)");
					}
				});

		$('#color').keyup(
				function(e) {
					var content = $(this).val();
					$('.color > #counter').html(
							"(<em>" + content.length
									+ " </em> / 최대 50자)"); //글자수 실시간 카운팅

					if (content.length > 50) {
						alert("최대 50자까지 입력 가능합니다.");
						$(this).val(content.substring(0, 50));
						$('.color > #counter').html(
								"(50 / 최대 50자)");
					}
				});

		$('#sale_ava_time').keyup(
				function(e) {
					var content = $(this).val();
					$('.sale_ava_time > #counter').html(
							"(<em>" + content.length
									+ " </em> / 최대 30자)"); //글자수 실시간 카운팅

					if (content.length > 30) {
						alert("최대 30자까지 입력 가능합니다.");
						$(this).val(content.substring(0, 30));
						$('.sale_ava_time > #counter').html(
								"(30 / 최대 30자)");
					}
				});
		

	});
	 
	function fn_valiChk() {
		var regForm = $("form[name='register2'] .chk").length;
		for (var i = 0; i < regForm; i++) {
			if ($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null
					|| $(".chk").eq(i).val() == "선택") {
				alert($(".chk").eq(i).attr("title"));
				return true;
			}
		}
	};

	


	
</script>


<div class="table_title table_mt">부케 세부내용 등록</div>
				<table class="table_box">
					<colgroup>
						<col width="22%">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th><label for="gdsName">상품명</label></th>

							<td class="td_sec">
								<div class="inputArea gdsName">
									<input type="text" id="gdsName" name="gdsName" class="chk" /><span
										style="color: #666; font-weight: bold" id="counter">(<em>0</em>
										/ 최대 200자)
									</span>
								</div>
							</td>

						</tr>
						<tr>
							<th><label for="gdsPrice">상품가격</label></th>

							<td class="td_sec">
								<div class="inputArea gdsPrice">
									<input type="text" numberOnly id="gdsPrice" name="gdsPrice"
										class="chk" /><span style="color: #666; font-weight: bold"
										id="counter">(<em>0</em> / 최대 30자)
									</span>
								</div>
							</td>

						</tr>
						<tr>
							<th><label for="gdsStock">상품수량</label></th>

							<td class="td_sec">
								<div class="inputArea gdsStock">
									<input type="text" id="gdsStock" name="gdsStock" class="chk" /><span
										style="color: #666; font-weight: bold" id="counter">(<em>0</em>
										/ 최대 30자)
									</span>
								</div>
							</td>

						</tr>
						<tr>
							<th><label for="comName">업체명</label></th>

							<td class="td_sec">
								<div class="inputArea comName">
									<input type="text" id="comName" name="comName" class="chk" /><span
										style="color: #666; font-weight: bold" id="counter">(<em>0</em>
										/ 최대 200자)
									</span>
								</div>
							</td>

						</tr>
						<tr>
							<th><label for="comSubway">인근 지하철</label></th>

							<td class="td_sec">
								<div class="inputArea comSubway">
									<input type="text" id="comSubway" name="comSubway" class="chk" /><span
										style="color: #666; font-weight: bold" id="counter">(<em>0</em>
										/ 최대 30자)
									</span>
								</div>
							</td>

						</tr>
						<tr>
							<th><label for="comArea">지역</label></th>

							<td class="td_sec">
								<div class="inputArea comArea">
									<input type="text" id="comArea" name="comArea" class="chk" /><span
										style="color: #666; font-weight: bold" id="counter">(<em>0</em>
										/ 최대 30자)
									</span>
								</div>
							</td>

						</tr>
						<tr>
							<th><label for="prod_comp">상품구성</label></th>

							<td class="td_sec">
								<div class="inputArea prod_comp">
									<input type="text" id="prod_comp" name="prod_comp" class="chk" /> <span
										style="color: #666; font-weight: bold" id="counter">(<em>0</em>
										/ 최대 30자)
									</span>
								</div>
							</td>

						</tr>
						<tr>
							<th><label for="standard">규격</label></th>

							<td class="td_sec">
								<div class="inputArea standard">
									<input type="text" id="standard" name="standard" class="chk" /><span
										style="color: #666; font-weight: bold" id="counter">(<em>0</em>
										/ 최대 30자)
									</span>
								</div>
							</td>

						</tr>
						<tr>
							<th><label for="mater">소재</label></th>

							<td class="td_sec">
								<div class="inputArea mater">
									<input type="text" id="mater" name="mater" class="chk" /> <span
										style="color: #666; font-weight: bold" id="counter">(<em>0</em>
										/ 최대 50자)
									</span>
								</div>
							</td>

						</tr>
						<tr>
							<th><label for="color">색상</label></th>

							<td class="td_sec">
						
								<div class="inputArea color">
									<input type="text" id="color" name="color" class="chk" /><span
										style="color: #666; font-weight: bold" id="counter">(<em>0</em>
										/ 최대 50자)
									</span>
								</div>
							</td>

						</tr>

						<tr>
							<th><label for="sale_ava_time">판매가능시기</label></th>

							<td class="td_sec">
								<div class="inputArea sale_ava_time">
									<input type="text" id="sale_ava_time" name="sale_ava_time" class="chk" /><span
										style="color: #666; font-weight: bold" id="counter">(<em>0</em>
										/ 최대 30자)
									</span>
								</div>
							</td>

						</tr>
						<tr>
							<th><label for="oaddress">주소등록</label></th>

							<td class="td_sec">
								<div class="inputArea">
									<input style="width: 40%; display: inline;" placeholder="우편번호"
										name="oaddress" id="oaddress" type="text" readonly="readonly">
									<button type="button" class="btn btn-address"
										onclick="execPostCode();">
										<i class="fa fa-search"></i> 우편번호 찾기
									</button>
								</div>
								<div class="inputArea">
									<input style="top: 5px;" placeholder="도로명 주소" name="address"
										id="address" type="text" readonly="readonly" class="chk" />
								</div>

								<div class="inputArea">
									<input placeholder="상세주소" name="detailaddress"
										id="detailaddress" type="text" class="chk" />
								</div>
							</td>

						</tr>
						<tr>
							<th><label for="gdsDes">추가 설명</label></th>

							<td class="td_sec">
								<div class="inputArea gdsDes ">
									<textarea rows="5" cols="50" id="gdsDes" name="gdsDes"></textarea>
								</div>
							</td>

						</tr>
						<tr>
							<th><label for="gdsImg">이미지</label></th>
							<td class="td_sec">
								<div class="inputArea gdsImg">
									<div class="filebox">
										<label for="gdsImg">이미지 업로드</label> <input type="file"
											multiple="multiple" id="gdsImg" name="file" />
										<div class="select_img">
											<img src="" />
										</div>
									</div>
										<div class="filebox2">
										<label for="gdsImg2">이미지 업로드 2</label> <input type="file"
											multiple="multiple" id="gdsImg2" name="file" />
										<div class="select2_img">
											<img src="" />
										</div>
									</div>
									<%=request.getRealPath("/")%>
								</div>
							</td>

						</tr>


					</tbody>
				</table>

				<div class="inputArea" style="text-align:center">
					<button type="button" id="register_Btn" class="btn btn-reg">등록</button>
				</div>


<script>
		var ckeditor_config = {
			resize_enaleb : false,
			enterMode : CKEDITOR.ENTER_BR,
			shiftEnterMode : CKEDITOR.ENTER_P,
			filebrowserUploadUrl : "/company/goods/ckUpload"
		};

		CKEDITOR.replace("gdsDes", ckeditor_config);
	</script>

 <script>
	//우편번호 찾기 버튼 클릭시 발생 이벤트

	function execPostCode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
				var extraRoadAddr = ''; // 도로명 조합형 주소 변수
				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraRoadAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraRoadAddr += (extraRoadAddr !== '' ? ', '
							+ data.buildingName : data.buildingName);
				}
				// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraRoadAddr !== '') {
					extraRoadAddr = ' (' + extraRoadAddr + ')';
				}

				// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
				if (fullRoadAddr !== '') {
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
   <script>
      $("#gdsImg")
            .change(
                  function() {
                     if (this.files && this.files[0]) {

                        var reader = new FileReader;
                        reader.onload = function(data) {
                           $(".select_img img").attr("src",
                                 data.target.result).width(100);
                        }
                        reader.readAsDataURL(this.files[0]);
                     }
                  });
      $("#gdsImg2").change(
            function() {
               if (this.files && this.files[0]) {
                  var reader = new FileReader;
                  reader.onload = function(data) {
                     $(".select2_img img").attr("src",
                           data.target.result).width(100);
                  }
                  reader.readAsDataURL(this.files[0]);
               }
            });
   </script>
