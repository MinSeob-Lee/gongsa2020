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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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
					<h1>공연수정</h1>				
				</div>
			</div>
			
			<!-- 입력 step 순서 설명 -->
			<div class="row mt-4 justify-content-center">
				<div class="col-10 justify-content-center">
					<div class="row mt-4 justify-content-center">
						<div class="col-8">
							<div class="card">
								<div class="card-body">
									<div class="row mt-5 mb-5">
										<div class="col-4">											
											<div class="text-center mt-4">
												<button class="btn btn-light" onclick="updateBasicInfo()">
													<i class='far fa-file-alt' style='font-size:100px; color:orange;'></i>
												</button>
											</div>
											<div class="text-center mt-4">
												<a class="btn btn-link" id="basicLink">
													<span class="font-weight-bold">기본정보 수정</span>
												</a>
											</div>
										</div>
										<div class="col-4">
											<div class="text-center mt-4">
												<button class="btn btn-light" onclick="updateLocation()">
													<i class="material-icons" style='font-size:100px; color:orange;'>&#xe568;</i>
												</button>
											</div>
											<div class="text-center mt-4">
												<a class="btn btn-link" id="locationLink">
													<span class="font-weight-bold">공연장소 수정</span>
												</a>												
											</div>							
										</div>
										<div class="col-4">
											<div class="text-center mt-4">
												<button class="btn btn-light" onclick="updateSeatInfo()">
													<i class="material-icons" style='font-size:100px; color:orange;'>&#xe637;</i>
												</button>
											</div>
											<div class="text-center mt-4">
												<a class="btn btn-link" id="seatLink">
													<span class="font-weight-bold">좌석정보 수정</span>
												</a>												
											</div>
										</div>
									</div>
									
									
									<div class="row mt-5 mb-3 justify-content-center">				
										<div>
											<button type="button" id="goHome" class="btn btn-danger mr-3">홈</button>									
											<button type="button" onclick="goList(category='${param.category }')" class="btn btn-primary ">공연목록</button>			
										</div>
									</div>
								</div>
							</div>							
						</div>					
					</div>
					
				</div>
			</div>			
			
			
		</div> <!-- container 끝 -->
	</div><!-- body 끝 -->
	
	<div class="footer" style="height: 200px;"></div>
	
<script type="text/javascript" src="/resources/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">

function updateBasicInfo() {
	var category = '${param.category}';
	var performanceId = '${param.performanceId}';
	console.log("기본정보수정링크");
	console.log(category);	
	console.log(performanceId);
	
	
	location.href="/performance/update/updateBasicInfo.do?category="+category+"&performanceId="+performanceId;
}

function updateLocation() {
	var category = '${param.category}';
	var performanceId = '${param.performanceId}';
	console.log("장소수정링크");
	console.log(category);	
	console.log(performanceId);	
	location.href="/performance/update/updateLocationInfo.do?category="+category+"&performanceId="+performanceId;
}

function updateSeatInfo() {
	var category = '${param.category}';
	var performanceId = '${param.performanceId}';
	console.log("장소수정링크");
	console.log(category);	
	console.log(performanceId);	
	location.href="/performance/update/updateSeatInfo.do?category="+category+"&performanceId="+performanceId;
}

$("#basicLink").click(function() {
	updateBasicInfo();
})

$("#locationLink").click(function() {
	updateLocation();
})

$("#seatLink").click(function() {
	updateSeatInfo();
})


$("#goHome").click(function() {

	location.href="/home.do";
	
	
})

function goList(category) {
	//history.go(-1);
	//var category = '${category}';	
			
	console.log(category);
	location.href="/performance/list.do?category="+category;

}		


	
</script>
</body>
</html>





