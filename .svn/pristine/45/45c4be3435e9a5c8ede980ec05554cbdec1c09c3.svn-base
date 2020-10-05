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
			<form:form name="form" method="post" id="sns-signup-form" action="snsSignup.do"  modelAttribute="userSignupForm">
				<div class="card border-0">
					<div class="card-header bg-white text-black font-weight-bolder"><h4>SNS회원가입</h4></div>
					<div class="card-body">
						<div class="form-row">
							<div class="form-group col-md-12">
      							<form:input type="text" class="form-control" id="id" path="id"  placeholder="아이디를 입력하세요 (5~20자의 영문 소문자만 사용 가능합니다.)" />
      							<form:errors path="id" cssClass="text-danger"></form:errors>
							</div>
							<div class="from-group col-12">
								<form:radiobutton  path="gender" value="M" checked="checked"/>남성
								<form:radiobutton  path="gender" value="F" />여성
							</div>
						</div>
						<div class="form-row mt-3">
							<div class="form-group col-md-12">
      							<form:input type="text" class="form-control" id="nickname" path="nickname" placeholder="닉네임을 입력하세요 (한 글자 이상의 한글을 사용하세요.)" />
      							<form:errors path="nickname" cssClass="text-danger"></form:errors>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
      							<form:input type="text" class="form-control" id="password" path="password" placeholder="비밀번호를 입력하세요 (8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.)" />
      							<form:errors path="password" cssClass="text-danger"></form:errors>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
      							<form:input type="text" class="form-control" id="password2" path="password2" placeholder="비밀번호를 다시 입력하세요" />
      							<form:errors path="password2" cssClass="text-danger"></form:errors>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
      							<form:input type="text" class="form-control" id="" path="email" value="${user.email }" placeholder="이메일을 입력해주세요"  />
      							<form:errors path="email" cssClass="text-danger"></form:errors>
							</div>
						</div>
						<div class="form-row ">
							<div class="form-group col-md-12">
								<form:input type="date" class="form-control" path="birthday" id="birthday" placeholder="태어난 년도" />
								<form:errors path="birthday" cssClass="text-danger"></form:errors>
							</div>
						</div>
						<div class="form-row border border-top-0 border-right-0 border-left-0">
							<div class="form-group col-md-12">
      							<form:input type="text" class="form-control" path="tel" maxlength="13" placeholder="휴대폰 번호를 입력하세요" />
      							<form:errors path="tel" cssClass="text-danger"></form:errors>
							</div>
						</div>					
						<div class="form-row mt-4">
   							<label class="ml-2"> <small>(주소 선택입력   *공공연한사이에서 제공하는 양질의 공연정보 및 팜플렛을 받아보세요)</small></label>

   						</div>
   						<div class="form-row">
    						<div class="form-group col-md-4">                                    
      							<form:input type="text" class="form-control" id="sample4_postcode" path="postalCode" placeholder="우편번호" />
							</div>
							<div class="form-group col-md-2">
      							<button type="button" class="btn btn-secondary" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">주소검색</button><br>
							</div>
  						</div>
  						<div class="form-row">
								<div class="form-group col-md-6">
	      							<form:input type="text" class="form-control" id="sample4_roadAddress" path="sido" placeholder="도로명주소" />
	      						</div>
	      						<div class="form-group col-md-6">
	      							<form:input type="text" class="form-control" id="sample4_jibunAddress" path="gungu" placeholder="지번주소" />
	      						</div>
						</div>
  						<div class="form-row">
							<div class="form-group col-md-12">
								<span id="guide" style="color:#999;display:none"></span>
      							<form:input type="text" class="form-control" id="sample4_detailAddress" path="addr" placeholder="상세주소를 입력하세요" />
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-12 text-center mt-4">
      							<button type="submit" class="btn btn-primary btn-lg">회원가입</button>
							</div>
						</div>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</div>
<div class="modal" tabindex="-1" id="idcheck-modal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">아이디 중복검색</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>사용가능한 아이디입니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary">사용하기</button>
      </div>
    </div>
  </div>
</div>
<div class="modal" tabindex="-1" id="nickcheck-modal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">닉네임 중복검색</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>사용가능한 닉네임입니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary">사용하기</button>
      </div>
    </div>
  </div>
</div>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="/resources/jquery/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#sns-signup-form').submit(function() {
		 if (!checkUserId(form.id.value)) {
		        return false;
		    } else if (!checkName(form.nickname.value)) {
		        return false;
		    }else if (!checkPassword(form.id.value, form.password.value,
		            form.password2.value)) {
		        return false;
		    }  else if (!checkBirth(form.birthday.value)) {
		        return false;
		    }  else if (!checkTel(form.tel.value)) {
		        return false;
		    } 
		    return true;
	
	});
})



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
                document.getElementById("sample4_extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("sample4_extraAddress").value = '';
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

var tel = document.getElementById('tel');

tel.onkeyup = function(){
console.log(this.value);
this.value = autoHypenPhone( this.value ) ;  
}

var autoHypenPhone = function(str){
    str = str.replace(/[^0-9]/g, '');
    var tmp = '';
    if( str.length < 4){
        return str;
    }else if(str.length < 7){
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3);
        return tmp;
    }else if(str.length < 11){
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3, 3);
        tmp += '-';
        tmp += str.substr(6);
        return tmp;
    }else{              
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3, 4);
        tmp += '-';
        tmp += str.substr(7);
        return tmp;
    }

    return str;
}

var birth = document.getElementById('birthday');

birthday.onkeyup = function(){
console.log(this.value);
this.value = autoHypenBirth( this.value ) ;  
}






function checkExistData(value, dataName) {
    if (value == "") {
        alert(dataName + " 입력해주세요!");
        return false;
    }
    return true;
}

function checkUserTel(tel) {
 
    if (!checkExistData(tel, "휴대폰 번호를")) {
        return false;
	}
    	return true;
}

function checkUserBirthday(birthday) {

    if (!checkExistData(birthday, "아이디를")) {
        return false;
	}
	    return true;
}


function checkUserId(id) {
    //Id가 입력되었는지 확인하기
    if (!checkExistData(id, "아이디를"))
        return false;

    var idRegExp = /^[a-zA-z0-9]{4,12}$/; //아이디 유효성 검사
    if (!idRegExp.test(id)) {
        alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
        form.id.value = "";
        form.id.focus();
        return false;
    }
    return true; //확인이 완료되었을 때
}

function checkName(nickname) {
    if (!checkExistData(nickname, "닉네임을"))
        return false;

    var nameRegExp = /^[가-힣]{2,10}$/;
    if (!nameRegExp.test(nickname)) {
        alert("닉네임이 올바르지 않습니다.");
        return false;
    }
    return true; //확인이 완료되었을 때
}






function checkPassword(id, password, password2) {
    //비밀번호가 입력되었는지 확인하기
    if (!checkExistData(password, "비밀번호를"))
        return false;
    //비밀번호 확인이 입력되었는지 확인하기
    if (!checkExistData(password2, "비밀번호 확인을"))
        return false;

    var password1RegExp = /^[a-zA-z0-9]{4,12}$/; //비밀번호 유효성 검사
    if (!password1RegExp.test(password)) {
        alert("비밀번호는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
        form.password1.value = "";
        form.password1.focus();
        return false;
    }
    //비밀번호와 비밀번호 확인이 맞지 않다면..
    if (password != password2) {
        alert("두 비밀번호가 맞지 않습니다.");
        form.password.value = "";
        form.password2.value = "";
        form.password2.focus();
        return false;
    }

    //아이디와 비밀번호가 같을 때..
    if (id == password) {
        alert("아이디와 비밀번호는 같을 수 없습니다!");
        form.password.value = "";
        form.password2.value = "";
        form.password2.focus();
        return false;
    }
    return true; //확인이 완료되었을 때
}    







</script>
</body>
</html>










