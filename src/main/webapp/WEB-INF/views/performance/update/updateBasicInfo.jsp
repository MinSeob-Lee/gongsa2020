<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<link rel="stylesheet" href="/resources/css/manager.css" />
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
			<div class="row mt-5">
			<!--  
				<div class="col-12 mt-5 p-3 text-center">					
					<h1>공연수정</h1>				
				</div>
			-->
			</div>
			
			<!-- 입력 step 순서 설명 -->
			<div class="row mt-4 justify-content-center">
				<div class="col-10 mt-5 justify-content-center">
					<div class="row mt-3">
						<div class="col-12 border bg-danger step-active text-center p-3" >							
							<h3>공연정보 수정(기본정보)</h3>
							
						</div>
					</div>				
				</div>
			</div> <!-- 입력 step 순서 설명 끝 -->
						
			<!-- 기본정보 입력 폼 -->			
			<div class="row mt-4 justify-content-center">
				<div class="col-10 border p-3">
					<form method="post" id="updateForm" action="updateBasicInfo.do" enctype="multipart/form-data">		
						<input type="hidden" name="id" value="${param.performanceId }">
						<div class="form-group">
							<label class="mr-3">공연분류</label> 		
							<div>
								<label class="mr-4"><input type="radio" name="category" value="콘서트"  
								${param.category eq "콘서트"? "checked" : "" } class="mr-1">콘서트</label>												
								<label class="mr-4"><input type="radio" name="category" value="뮤지컬" 
								${param.category eq "뮤지컬"? "checked" : "" } class="mr-1">뮤지컬</label>											
								<label class="mr-4"><input type="radio" name="category" value="연극" 
								${param.category eq "연극"? "checked" : "" } class="mr-1">연극</label>	
							</div>																	   						
						</div>												
									
						<div class="form-group">
							<label>공연명</label> 
							<input type="text" class="form-control"
								name="title" id="performanceName"
								value="${performance.title }"/>
						</div>	
						
						<div class="form-group">
							<label>공연장르</label> 
							<div id="genreForm">
								<c:set var="checkedGenres" value="${performance.genres }" />
								<c:forEach var="genre" items="${genres }">	
									<c:set var="searched" value="N" />
									<c:forEach var="checkedGenre" items="${checkedGenres }">
										<c:choose>
											<c:when test="${genre eq checkedGenre }">
												<c:set var="searched" value="Y"></c:set>
											</c:when>
										</c:choose>
									</c:forEach>
									<c:choose>
										<c:when test="${searched eq 'N' }">
											<label class="mr-4">
												<input type="checkbox" name="genre" value="${genre }" class="mr-1" />${genre }
											</label>
										</c:when>
										<c:otherwise>
											<label class="mr-4">
												<input type="checkbox" name="genre" value="${genre }" class="mr-1" checked/>${genre }
											</label>
										</c:otherwise>
									</c:choose>									
								</c:forEach>
							</div>
						</div>
						
						<div class="form-group">
							<label>공연기간</label>												
							<div class="form-inline ">								
								<div class=" d-block">
									<input type="date" class="form-control d-inline"
										name="startDate" id="performanceStartDay"
										value="${performance.startDate }" /> ~ <input
										type="date" class="form-control d-inline" name="endDate"
										id="performanceEndDay"
										value="${performance.endDate }" />
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label class="mr-3">관람연령</label> 									
							<div>
								<label class="mr-4">
									<input type="radio" class="mr-1" name="rating" value="0" 
									${performance.rating == 0? "checked": "" }>전체관람가
								</label>												
								<label class="mr-4">
									<input type="radio" class="mr-1" name="rating" value="12" 
									${performance.rating == 12? "checked": "" }>만 12세이상 관람가
								</label>												
								<label class="mr-4">
									<input type="radio" class="mr-1" name="rating" value="15" 
									${performance.rating == 15? "checked": "" }>만 15세이상 관람가
								</label>												
								<label class="mr-4">
									<input type="radio" class="mr-1" name="rating" value="19" 
									${performance.rating == 19? "checked": "" }>청소년관람불가
								</label>								
							</div>																	   						
						</div>
						
						<div class="form-group">
							<label>상영시간(분)</label>							
							<input type="number" name="numberRunningTime" id="runningTimeMinute"
							 	placeholder="1" value="1" min="1" max="1440" class="form-control"
							 	/>
							<label>시간/분/초</label>
							<input type="text" name="runningTime" id="runningTime" 
								placeholder="00:01:00" value="${performance.runningTime }" readonly="readonly" class="form-control"/>
						</div>
						
						<div class="form-group">
							<label>주최</label>
							<input type="text" name="provider" class="form-control" 
							value="${performance.provider }"/>
						</div>
						
						<div class="form-group">
							<label>설명</label>
							<div class="" style="overflow:auto;" >							
								<textarea rows="10" cols="120" name="explain" >${performance.explain }</textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label class="mr-3">이미지 선택</label> 		
							<div>
								<label class="mr-4"><input type="radio" name="imageSelect" value="existing"  
								checked class="mr-1">기존 이미지</label>												
								<label class="mr-4"><input type="radio" name="imageSelect" value="new" 
								class="mr-1">새 이미지</label>								
							</div>
						</div>
						
						<div id="existingImageForm">
							<div class="row">
								<div class="col-6">
									<div class="card">
										<div class="card-body">
										<c:choose>
											 <c:when test="${fn:substring(performance.imagePath, 0,4) eq 'http' }">
											 	<c:set var="path" value="${performance.imagePath }"/>
											 </c:when>
											 <c:otherwise>
											 	<c:set var="path" value="/resources/sample-images/${performance.imagePath }"/>
											 </c:otherwise>
										 </c:choose>
										
											<img src="${path }" 
												class="img-thumbnail">
											<!--  
											<img src="/resources/sample-images/${performance.imagePath }" 
												class="img-thumbnail">
											-->
										</div>
										<div class="card-footer">
											${performance.imagePath }
										</div>								
									</div>
								</div>								
							</div>
						</div>
						
						<div id="newImageForm" class="form-group">
							<label>이미지파일</label>
							<!-- <form action="/notice/addImage.do" method="post" enctype="multipart/form-data">
							 -->
							<input type="file" id="upfile" class="form-control mb-1" name="upfile">
						</div>						
					</form>
				</div>				
			</div> <!-- 기본정보 입력 끝 -->

			<div class="row mt-4 justify-content-center">				
				<div>
					<button type="button" id="cancel" class="btn btn-danger mr-3">취소</button>									
					<button type="button" id="goPrevStep" class="btn btn-secondary mr-3">이전</button>																		
					<button type="button" id="goNextStep" class="btn btn-primary ">수정</button>			
				</div>
			</div>
			
		</div> <!-- container-fluid 끝 -->
</div>
</div>
</div>
<script type="text/javascript" src="/resources/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">

$(function() {
	//var now = new Date().toISOString().substring(0, 10);
			//${performance.endDate }
			//${performance.endDate }
			
	var startDay = "<fmt:formatDate value='${performance.startDate }' pattern='YYYY-MM-dd'/>";		
	var endDay = "<fmt:formatDate value='${performance.endDate }' pattern='YYYY-MM-dd'/>";		
	
	
	$("#performanceStartDay").val(startDay);
	$("#performanceEndDay").val(endDay);
	
	var runningTime = $("#runningTime").val();
	console.log("runnningTime: " + runningTime);
	var time= runningTime.split(":");
	console.log("시"+Number(time[0]));
	console.log("분"+Number(time[1]));
	console.log("초"+Number(time[2]));
		
	var runngingTimeMinute=Number(time[0])*60 + Number(time[1]);
	$("#runningTimeMinute").val(runngingTimeMinute);
	
	$("#existingImageForm").show();
	$("#newImageForm").hide();
})

$("#updateForm input[name=category]").change(function() {
	var cat = $(this).val();
	console.log("category: " + cat);
	
	$.ajax({
		type:"GET",
		url:"/performance/update/getGenres.do",
		data: {category:cat},
		dataType: 'json',
		success: function(genres) {
			console.log("성공했다");		
			var text ="";
			for (var i=0; i<genres.length; i++) {
				
				
				text += "<label class='mr-4'>"
				text += "<input type='checkbox' name='genre' value='"+genres[i]+"' class='mr-1' />" + genres[i];
				text += "</label>";				
			}
			
			$("#genreForm").empty();
			$("#genreForm").html(text);
		}
	})
	
})

$("#updateForm input[name=imageSelect]").change(function() {
	var imageSelect = $(this).val();
	console.log("imageSelect: " + imageSelect);
	
	if (imageSelect == "existing") {
		$("#existingImageForm").show();
		$("#newImageForm").hide();
	}
	
	if (imageSelect == "new") {
		$("#existingImageForm").hide();
		$("#newImageForm").show();
	}
})


$("#goPrevStep").click(function() {
	history.go(-1);
})

$("#goNextStep").click(function() {
	
	if ($("#updateForm input[name=title]").val() == 0) {
		alert("공연명을 입력해주세요.");
		return false;
	}
	
	if ($("#updateForm input[name=genre]:checked").length == 0) {
		alert("한개 이상의 장르를 선택해주세요.");
		return false;
	} 
	
	if ($("#updateForm input[name=provider]").val() == 0) {
		alert("주최자(기관/단체)를 입력해주세요.")
		return false;
	} 
	
	if ($("#updateForm textarea").val() == 0) {
		alert("공연에 대한 설명을 입력해주세요.")
		return false;
	} 
	
	var upfileType = $("#upfile").val().split('.').reverse()[0];
	console.log("upfile Type: "+upfileType);
	
	var imageSelect = $("#updateForm input[name=imageSelect]:checked").val();
	console.log("#imageSelect : " + imageSelect);
	
	if (imageSelect == "existing") {
		$("#updateForm").submit();	
	} 
	
	if (imageSelect == "new") {	
	
		if ($("#upfile").val() == "") {
			alert("이미지파일을 선택해주세요.");
			return false;
		}
		
		if ( (upfileType == "jpg") || (upfileType == "jpeg") || (upfileType == "png") 
				|| (upfileType == "bmp")) {
			console.log("다음 스텝으로 ㄱㄱ");	
			
			$("#updateForm").submit();
		} else {
			alert('이미지 파일의 확장자가 아닙니다. png, jpg, jpeg, bmp 확장자 파일을 입력해주세요.');
			return false;
		}
		
	}		
	
})

$("#cancel").click(function(){
	var cat = '${param.category}';
	//console.log(cat);
	location.href="cancel.do?category="+cat;
})
		
$("#performanceStartDay").change(function() {		
	//var now = new Date().toISOString().substring(0, 10);		
	var $endDay = $("#performanceEndDay");	
	
	if ($endDay.val() == "") return;	// endDay가 아직 설정이 되어있지 않을 때
	if (($endDay.val() < $(this).val())) {	// 시작날짜가 끝나는 날짜보다 클 때, 시작날짜가 오늘보다 이전일 때
		$(this).val($endDay.val());
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