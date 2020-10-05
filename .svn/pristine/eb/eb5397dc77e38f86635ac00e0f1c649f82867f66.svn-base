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
						<div class="col-4 border bg-danger step-active">
							<h5>Step2</h5>
							<p>공연장소입력</p>
						</div>
						<div class="col-4 border step-inactive">
							<h5>Step3</h5>
							<p>좌석가격입력</p>
						</div>
					</div>				
				</div>
			</div> <!-- 입력 step 순서 설명 끝 -->
			
			<!-- 기본정보 입력 폼 -->			
			<div class="row mt-4 justify-content-center">
				<div class="col-10 border p-3">
					<form method="post" id="addHallForm" action="step2.do" enctype="multipart/form-data">		
						<div class="form-group">
							<label class="mr-3">입력방법 선택</label> 		
							<div>
								<label class="mr-4"><input type="radio" name="hallInputType" value="existing"  
								class="mr-1" checked id="existingSelect">기존 공연장</label>												
								<label class="mr-4"><input type="radio" name="hallInputType" value="new" 
								 class="mr-1" id="newSelect">직접입력</label>							
							</div>																	   						
						</div>
						
						<!-- 공연장 입력 폼 -->
						<!-- 기존 공연장 중에서 선택폼 -->
						<div class="form-group" id="existingForm">							
							<div class="row ">
								<div class="col-2">
									<label>공연장 선택</label>
								</div>
								<div class="col-10">
									<div>
										<select name="hallId" id="hallId">
										<c:forEach var="hallInfo" items="${hallInfos }">
											<option value="${hallInfo.id }">${hallInfo.name}</option>										
										</c:forEach>										
										</select>
									</div>
									<div class="mt-2" style="overflow:auto">
										<p id="hallAddressText">${hallInfos[0].address }</p>
									</div>
								</div>
							</div> 					
						</div> <!-- 기존 공연장 선택폼 끝 -->	
						<!-- 공연장 직접 입력 폼 -->
						<div id="newForm">
							<div class="form-group" >
								<label>공연장명</label>
								<input type="text" name="hallName" class="form-control">	
							</div>					
							<div class="form-group" >
								<label>공연장 주소</label>
								<input type="text" name="hallAddress" class="form-control">	
							</div>					
						</div><!-- 공연장 직접 입력폼 끝 -->
						<!-- 공연장 입력폼 끝 -->						
						
						<!--  
						<div class="form-group">
							<label>공연장 상세정보</label>
							<input type="text" class="form-control" name="detail" id="hallDetail"
							placeholder="제1전시관 202호실"/>
						</div>				
						-->												
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
	
	// 세션이나 모델에 담긴 정보를 jquery, javascrip에서 활용하는 방법
	var test = '${performanceForm.startDate}';	
	console.log(test);
	
	var startDate = '<fmt:formatDate value="${performanceForm.startDate}" pattern="yyyy-MM-dd" />'
	
	var hallInputType = $("#addHallForm input[name=hallInputType]").val();
	
	$("#newForm").hide();
		
	if ($(this).val() ==  "existing") {
		$("#existingForm").show();
		$("#newForm").hide();
		//@@"existingSelect"
	} 
	
	if ($(this).val() == "new") {
		$("#existingForm").hide();
		$("#newForm").show();
	} 
	
})

$("#addHallForm input[name=hallInputType]").change(function() {
	console.log("입력방법 선택 :"+ $(this).val());
	
	if ($(this).val() ==  "existing") {
		$("#existingForm").show();
		$("#newForm").hide();
	} 
	
	if ($(this).val() == "new") {
		$("#existingForm").hide();
		$("#newForm").show();
	} 
})

$("#addHallForm select[name=hallId]").change(function() {
	console.log("hallId 선택: "+$(this).val());	
	
	$.ajax({
		type:"GET",
		url: "/performance/add/showHallInfo.do",
		data: {hallId: $(this).val()},
		dataType: 'json',
		success: function(hallInfo) {			
			$("#hallAddressText").text(hallInfo.address);
		}
	})
	
})

$("#goNextStep").click(function() {

	var hallInputType = $("#addHallForm input[name=hallInputType]").val();
	
	if (hallInputType == "new") {	
		if ($("#addHallForm input[name=hallName]").val() == "") {
			alert("공연장 이름을 입력해주세요.");
			return false;
		}
		
		if ($("#addHallForm input[name=hallAddress]").val() == "") {
			alert("공연장 상세주소를 입력해주세요.");
			return false;
		}	
	}
	
	$("#addHallForm").submit();
	
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