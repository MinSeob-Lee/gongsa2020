<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<style type="text/css">

	.step-active {
		color: white;
	}
	
	.step-inactive{
		background-color: #eee;
	}
	
	.form-error-msg {
		color: red;
		display:none; // 처음은 display가 none임
	}
	
</style>
</head>
<body>
	<div class="header">
		<%@ include file="../../common/navi.jsp"%>
	</div>	
	
	<div class="body" style="margin-top: 50px;">
		<div class="container-fluid">		
			<div class="row">
				<div class="col-12 mt-5 p-3 text-center">					
					<h1>공연등록</h1>				
				</div>
			</div>
			
			<!-- 입력 step 순서 설명 -->
			<div class="row mt-4 justify-content-center">
				<div class="col-10 justify-content-center">
					<div class="row">
						<div class="col-4 border step-inactive" >
							<h5>Step1</h5>
							<p>기본정보입력</p>
						</div>
						<div class="col-4 border step-inactive">
							<h5>Step2</h5>
							<p>공연장소입력</p>
						</div>
						<div class="col-4 border bg-danger step-active">
							<h5>Step3</h5>
							<p>좌석가격입력</p>
						</div>
					</div>				
				</div>
			</div> <!-- 입력 step 순서 설명 끝 -->
			
			<!-- 기본정보 입력 폼 -->			
			<div class="row mt-4 justify-content-center">
				<div class="col-10 border p-3">
					<form method="post" id="addHallForm" action="step3.do" enctype="multipart/form-data">		
						여기는 step3이다.								
					</form>				
				</div>
			</div> <!-- 기본정보 입력 영역 끝 -->
			
			<div class="row mt-4 justify-content-center">				
				<div>
					<button type="button" id="cancel" class="btn btn-danger mr-3">취소</button>									
					<button type="button" id="goPrevStep" class="btn btn-secondary mr-3">이전</button>									
					<button type="button" id="goNextStep" class="btn btn-primary ">다음</button>			
				</div>
			</div>
			
		</div> <!-- container 끝 -->
	</div><!-- body 끝 -->
	
	<div class="footer" style="height: 200px;"></div>
	
<script type="text/javascript" src="/resources/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">

$(function() {
	
	
	
})



$("#goNextStep").click(function() {

		
	return false;
		
	
})

$("#cancel").click(function(){
	//history.go(-1);
	location.href="cancel.do";
})
		
$("#goPrevStep").click(function(){
	history.go(-1);
	//location.href="cancel.do";
})


	
</script>
</body>
</html>