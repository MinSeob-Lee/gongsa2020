<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>같이 보자! 공공연한사이</title>
<link rel="stylesheet" href="/resources/css/jquery.fullPage.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
</head>
<body>
<div class="header">
<%@ include file="../common/navi.jsp" %>
</div>
<div class="container " style="margin-top: 150px;">
	<div class="row ">
		<div class="col-8 mx-auto" >
			<form:form name="form" method="post" id="sns-signup-form" action="userUpdate.do" modelAttribute="userUpdateForm">
				<div class="card border-0">
					<div class="card-header bg-white text-black font-weight-bolder"><h4>회원정보 수정</h4></div>
					<div class="card-body">
						<div class="form-row">
							<div class="form-group col-md-12">
      							<form:input type="text" class="form-control" id="id" path="id"  value="${LOGIN_USER.id }" readonly="true" />
      					
							</div>
							<div class="from-group col-12">
								<form:radiobutton  path="gender" value="M" id="maleRadio" checked=""  disabled="true"  />남성
								<form:radiobutton  path="gender" value="F" id="femaleRadio" checked=""  disabled="true" />여성
							</div>
						</div>
						<div class="form-row mt-3">
							<div class="form-group col-md-12">
      							<form:input type="text" class="form-control" id="nickname" path="nickname" value="${LOGIN_USER.nickname }"  />
      							<form:errors path="nickname" cssClass="text-danger"></form:errors>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
      							<form:input type="password" class="form-control" id="password" path="password" value="" placeholder="패스워드를 입력해주세요"/>
      						
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
      							<form:input type="password" class="form-control" id="password2" path="password2" value=""  placeholder="패스워드를 다시 입력해주세요"/>
      					
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
      							<form:input type="text" class="form-control" id="email" path="email" value="${LOGIN_USER.email }"  readonly="true"/>
      				
							</div>
						</div>
						<div class="form-row ">
							<div class="form-group col-md-12">
							<div>
								<p class="text-muted" style="margin-left: 5px;"> 생년월일 </p>
							</div>
							<fmt:formatDate value="${LOGIN_USER.birthday }" var="birthday" pattern="yyyy-MM-dd"/>
								<form:input type="date" class="form-control" path="birthday" id="birthday"  value="${birthday }" readonly="true" />

							</div>
						</div>
						<div class="form-row border border-top-0 border-right-0 border-left-0">
							<div class="form-group col-md-12">
      							<form:input type="text" class="form-control" id="tel" path="tel" maxlength="13" value="${LOGIN_USER.tel }"  placeholder="전화번호를 입력해주세요"/>
      							<form:errors path="tel" cssClass="text-danger"></form:errors>
							</div>
						</div>					
						<div class="form-row mt-4">
   							<label class="ml-2"> <small>(주소 선택입력   *공공연한사이에서 제공하는 양질의 공연정보 및 팜플렛을 받아보세요)</small></label>

   						</div>
   						<div class="form-row">
    						<div class="form-group col-md-4">                                    
      							<form:input type="text" class="form-control" id="sample4_postcode" path="postalCode" value="${LOGIN_USER.postalCode}" />
							</div>
							<div class="form-group col-md-2">
      							<button type="button" class="btn btn-secondary" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">주소검색</button><br>
							</div>
  						</div>
  						<div class="form-row">
								<div class="form-group col-md-6">
	      							<form:input type="text" class="form-control" id="sample4_roadAddress" path="sido" value="${LOGIN_USER.sido}" />
	      						</div>
	      						<div class="form-group col-md-6">
	      							<form:input type="text" class="form-control" id="sample4_jibunAddress" path="gungu" value="${LOGIN_USER.sigungu}" />
	      						</div>
						</div>
  						<div class="form-row">
							<div class="form-group col-md-12">
								<span id="guide" style="color:#999;display:none"></span>
      							<form:input type="text" class="form-control" id="sample4_detailAddress" path="addr" value=" ${LOGIN_USER.addr}" />
							</div>
						</div>
						<div>
							<button type="button" class="btn btn-outline-secondary btn-sm" id="delete-user">회원탈퇴</button>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12 text-center mt-4">
      							<button type="submit" class="btn btn-primary btn-lg">회원수정</button>
							</div>
						</div>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</div>
<input type="hidden" id="login_gender" value="${LOGIN_USER.gender }" />
<input type="hidden" id="login_id" value="${LOGIN_USER.id }" />
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="/resources/jquery/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#sns-signup-form').submit(function() {
		
		
		var nickNameRegExp = /^[가-힣a-zA-Z0-9]{1,10}$/;
		var passwordRegExp = /^[a-zA-Z0-9!@#$%_]{8,16}$/;
		var emailRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		


		
		var nickName = $("#nickname").val();
		if (nickName == "") {
			alert("닉네임은 필수입력값입니다.")
			return false;
		}
		if (!nickNameRegExp.test(nickName)) {
			alert("닉네임은 2글자이상 10글자 이하의 숫자 or 알파벳 or 한글 조합으로 입력하세요");
			return false;
		}
		
		var password = $("#password").val();
		var password2 = $("#password2").val();
		if (password == "" || password2 == "") {
			alert("비밀번호는 필수입력값입니다.");
			return false;
		}
		if (password != password2) {
			alert("입력한 패스워드가 서로 일치하지 않습니다.");
			return false;
		}
		if (!passwordRegExp.test(password)) {
			alert("비밀번호는 영어대소문자, 숫자, 특수문자(!@#$%_)만 가능하고, 8글자 이상 16글자 이하로 입력하세요");
			return false;
		}
		

		
		var tel = $("#tel").val();
		if (tel == "") {
			alert("전화번호는 필수입력값입니다.")
			return false;
		}
		return true;
		
		
	
	});
	
	$("#tel").keyup(function() {
		var text = $(this).val();
		if (text.length == 4) {
			text = text.substring(0, 3) + "-" + text.substring(3);
		}
		if (text.length == 9) {
			text = text.substring(0, 8) + "-" + text.substring(8);
		}
		$(this).val(text);
	})
})

	$('#delete-user').on('click', function() {
		var loginUser = $('#login_id').val();
				var up;
				
				up=confirm("회원탈퇴를 진행하시겠습니까?");
				
				if(up) {
					$.ajax({
						type:"GET",
						url:"deleteUser.do",
						data:{id:loginUser},
						dataType:"json",
						success:function(data) {
							location.href="/home.do";
						}
					})
					location.href="/home.do";
				}
		
	});

//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode;
            document.getElementById("sample4_roadAddress").value = roadAddr;
            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
            
            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if(roadAddr !== ''){
                document.getElementById("sample4_detailAddress").value = extraRoadAddr;
            } else {
                document.getElementById("sample4_detailAddress").value = '';
            }

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open();
}

$(function() {
	var male = $('#maleRadio');
	var female = $('#femaleRadio');
	var loginGender = $('#login_gender');
	
	if (loginGender.val() == "F") {
		female.prop('checked', 'checked');
	} else {
		male.prop('checked', 'checked');
	}
})
</script>
</body>
</html>