
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<div class="col-6 mx-auto" >
			<form  id="signin-form" name="form" method="post">
				<div class="card border-0">
					<div class="card-header bg-white text-black font-weight-bolder card border-0"><h4>아이디 찾기</h4></div>
					<hr />
					<div class="card-body">
						<div >
							<input style="height: 50px;" type="text" class="form-control" id="email" name="email" placeholder="이메일을 입력하세요">
						</div>
						<div style="margin-top: 10px; margin-bottom: 0px;">
							<label style="margin-bottom: 2px;"> <small>* 이메일로 본인 아이디의 정보가 발송됩니다.</small></label>
						</div>
						<div style="margin-bottom: 10px;">
							<label><small>* 회원가입 시 입력한 이메일만 이용가능합니다.</small></label>	
						</div>
						<div class="form-row">
							<div class="form-group col-md-12 text-center mt-4">
      							<button type="submit" class="btn btn-primary btn-lg">인증이메일 발송</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>


<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
$(function() {
	// 등록버튼 클릭시 실행됨
	$("#signin-form").submit(function() {
		checkAll(this);
	
	});
	
		function checkAll(form) {
		    if (!checkUserId(form.email.value)) {
		    	console.log(form.email.value);
		        return false;
		    }
		    return true;
		}
		
		function checkExistData(value, dataName) {
		    if (value == "") {
		        alert(dataName + " 입력해주세요!");
		        return false;
		    }
		    return true;
		}
		
		function checkUserId(email) {
		    //Id가 입력되었는지 확인하기
		    if (!checkExistData(email, "이메일을")) {
		        return false;
		}
			return true;
	}

})
</script>

</html>