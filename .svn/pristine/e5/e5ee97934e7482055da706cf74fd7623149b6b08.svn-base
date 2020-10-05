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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet" href="/resources/css/manager.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
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
  <c:set var="topName" value="performance"/>
	<%@ include file="../../manager/common/managerTop.jsp" %>	
	<div class="page-wrapper chiller-theme toggled">
  <%@ include file="../../manager/common/managernavi.jsp" %>
   <div class="page-content">
   	<div class="container">
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
						<div class="col-4 border bg-danger step-active" >
							<h5>Step1</h5>
							<p>기본정보입력</p>
						</div>
						<div class="col-4 border step-inactive">
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
					<div class="row">
						<div class="col-12 text-right">
							<button type="button" data-toggle="modal" class="btn btn-primary"
								data-target="#performance-list-modal" id="apimodal">API 공연 찾기</button>
						</div>
					</div>
					<form method="post" id="addForm" action="step1.do" enctype="multipart/form-data">		
						<div class="form-group">
							<label class="mr-3">공연분류</label> 		
							<div>
								<label class="mr-4"><input type="radio" name="category" value="콘서트"  
								${category eq "콘서트"? "checked" : "disabled" } class="mr-1">콘서트</label>												
								<label class="mr-4"><input type="radio" name="category" value="뮤지컬" 
								${category eq "뮤지컬"? "checked" : "disabled" } class="mr-1">뮤지컬</label>											
								<label class="mr-4"><input type="radio" name="category" value="연극" 
								${category eq "연극"? "checked" : "disabled" } class="mr-1">연극</label>	
							</div>																	   						
						</div>												
									
						<div class="form-group">
							<label>공연명</label> 
							<input type="text" class="form-control"
								name="title" id="performanceName"/>
						</div>	
						
						<div class="form-group">
							<label>공연장르</label> 
							<div>
								<c:forEach var="genre" items="${genres }">									
									<label class="mr-4">
										<input type="checkbox" name="genre" value="${genre }" class="mr-1" />${genre }
									</label>
								</c:forEach>
							</div>
						</div>
						
						<div class="form-group">
							<label>공연기간</label>									
							<div class="form-inline ">
								
								<div class=" d-block">
									<input type="date" class="form-control d-inline"
										name="startDate" id="performanceStartDay"
										value="${param.startDay }" /> ~ <input
										type="date" class="form-control d-inline" name="endDate"
										id="performanceEndDay"
										value="${param.endDay }" />
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label class="mr-3">관람연령</label> 									
							<div>
								<label class="mr-4">
									<input type="radio" class="mr-1" name="rating" value="0" checked>전체관람가
								</label>												
								<label class="mr-4">
									<input type="radio" class="mr-1" name="rating" value="12" >만 12세이상 관람가
								</label>												
								<label class="mr-4">
									<input type="radio" class="mr-1" name="rating" value="15" >만 15세이상 관람가
								</label>												
								<label class="mr-4">
									<input type="radio" class="mr-1" name="rating" value="19" >청소년관람불가
								</label>								
							</div>																	   						
						</div>
						
						<div class="form-group">
							<label>상영시간(분)</label>							
							<input type="number" name="numberRunningTime" id="runningTimeMinute"
							 	placeholder="1" value="1" min="1" max="1440" class="form-control"/>
							<label>시간/분/초</label>
							<input type="text" name="runningTime" id="runningTime" 
								placeholder="00:01:00" value="00:01:00" readonly="readonly" class="form-control"/>
						</div>
						
						<div class="form-group">
							<label>주최</label>
							<input type="text" name="provider" class="form-control" />
						</div>
						
						<div class="form-group">
							<label>설명</label>
							<div class="" style="overflow:auto;" >							
								<textarea id="performance-expain" rows="10" cols="120" name="explain" ></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label>이미지파일</label>
							<!-- <form action="/notice/addImage.do" method="post" enctype="multipart/form-data">
							 -->
							<input type="file" id="upfile" class="form-control mb-1" name="upfile">
						</div>
						<input type="hidden" id="performance-place-address" name="hallAddress" />
						<input type="hidden" id="performance-place" name="hallName" />
						<input type="hidden" id="performance-imgurl" name="imagePath"/>						
					</form>
				</div>				
			</div> <!-- 기본정보 입력 끝 -->

			<div class="row mt-4 justify-content-center">				
				<div>
					<button type="button" id="cancel" class="btn btn-danger mr-3">취소</button>									
					<button type="button" id="goNextStep" class="btn btn-primary ">다음</button>			
				</div>
			</div>
			
		</div> <!-- container 끝 -->
	</div>
	</div><!-- body 끝 -->
	</div>
	<!-- MODAL -->
	<%@ include file="../../manager/apidatamodal.jsp" %>
<script type="text/javascript" src="/resources/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">

$(function() {
	var now = new Date().toISOString().substring(0, 10);
	$("#performanceStartDay").val(now);
	$("#performanceEndDay").val(now);
	
	
})


$("#goNextStep").click(function() {
	
	if ($("#addForm input[name=title]").val() == 0) {
		alert("공연명을 입력해주세요.");
		return false;
	}
	
	if ($("#addForm input[name=genre]:checked").length == 0) {
		alert("한개 이상의 장르를 선택해주세요.");
		return false;
	} 
	
	if ($("#addForm input[name=provider]").val() == 0) {
		alert("주최자(기관/단체)를 입력해주세요.")
		return false;
	} 
	
	if ($("#addForm textarea").val() == 0) {
		alert("공연에 대한 설명을 입력해주세요.")
		return false;
	} 
	
//	var upfileType = $("#upfile").val().split('.').reverse()[0];
//	console.log("upfile Type: "+upfileType);
	
//	if ($("#upfile").val() == "") {
//		alert("이미지파일을 선택해주세요.");
//		return false;
//	}
	
//	if ( (upfileType == "jpg") || (upfileType == "jpeg") || (upfileType == "png") 
//			|| (upfileType == "bmp")) {
//		console.log("다음 스텝으로 ㄱㄱ");	
//		$("#addForm").submit();
//	} else {
//		alert('이미지 파일의 확장자가 아닙니다. png, jpg, jpeg, bmp 확장자 파일을 입력해주세요.');
//		return false;
//	}
		
	$("#addForm").submit();
		
	
})

$("#cancel").click(function(){
	//history.go(-1);
	location.href="cancel.do";
})
		
$("#performanceStartDay").change(function() {		
	var now = new Date().toISOString().substring(0, 10);		
	var $endDay = $("#performanceEndDay");	
	
	if ($endDay.val() == "") return;	// endDay가 아직 설정이 되어있지 않을 때
	if (($endDay.val() < $(this).val()) ||
			($(this).val() < now)) {	// 시작날짜가 끝나는 날짜보다 클 때, 시작날짜가 오늘보다 이전일 때
		$(this).val(now);
	}	
	
})

$("#performanceEndDay").change(function() {	
	var now = new Date().toISOString().substring(0, 10);
	
	var $startDay = $("#performanceStartDay");
	if ($(this).val() < $startDay.val()) {
		$(this).val($startDay.val());		
	} 	
})	

$("#runningTimeMinute").change(function() {
	console.log("값이 바뀌었습니다.ㅇ");
	
	var min = $(this).val();
	console.log(min);
	
	if (min < 1) {
		$(this).val(1);
	}
	if (min > 1440) {
		$(this).val(1440);
	}	
	
	min = $(this).val();
	var hour = parseInt(min/60);
	
	console.log("hour: "+hour);
	var minutes = parseInt(min%60);
	console.log("min: "+minutes);
	var txt =""
	if (hour < 10) {
		txt +="0";
	}
	
	txt += hour+":";
	
	if (minutes < 10) {
		txt += "0";
	}
	
	txt += minutes+":00";
	
	console.log(txt);
	
	$("#runningTime").val(txt);
})


	
</script>
	
</body>
</html>