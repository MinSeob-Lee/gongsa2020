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
			<div class="row mt-5">
			
			</div>
			
			<!-- 입력 step 순서 설명 -->
			<div class="row mt-4 justify-content-center">
				<div class="col-10 mt-5 justify-content-center">
					<div class="row mt-3">
						<div class="col-12 border bg-danger step-active text-center p-3" >							
							<h3>공연정보 수정(좌석정보)</h3>
							
						</div>
					</div>				
				</div>
			</div> <!-- 입력 step 순서 설명 끝 -->
			
			<!-- 좌석정보 입력 폼 -->			
			<div class="row mt-4 justify-content-center">
				<div class="col-10 border p-3">
					<form method="post" id="updateSeatForm" action="updateSeatInfo.do" enctype="multipart/form-data">	
						<input type="hidden" name="category" value="${param.category }"/>	
						<input type="hidden" name="id" value="${param.performanceId }"/>
						<div class="form-group">
							<div class="row">
								<div class="col-2">
								<label >A석 가격</label>		
								</div>
								<div class="col-5">
									<label><input type="number" name="aPrice" class="form-control" 
									min="0" onblur="checkNum()" value="${aSeat.price }"></label>
									<label>원</label>			
								</div>
							</div>			
						</div>					
						<div class="form-group">
							<div class="row">
								<div class="col-2">
								<label >S석 가격</label>		
								</div>
								<div class="col-5">
									<label><input type="number" name="sPrice" class="form-control" min="0" 
									 value="${sSeat.price }"></label>
									<label>원</label>
								</div>
							</div>			
						</div>					
						<div class="form-group">
							<div class="row">
								<div class="col-2">
								<label >R석 가격</label>		
								</div>
								<div class="col-5">
									<label><input type="number" name="rPrice" class="form-control" min="0" 
									 value="${rSeat.price }"></label>
									<label>원</label>
								</div>
							</div>			
						</div>																	
																							
					</form>				
				</div>
			</div> <!-- 좌석정보 입력 영역 끝 -->
			
			<div class="row mt-4 justify-content-center">				
				<div>						
					<button type="button" id="cancel" class="btn btn-danger mr-3" data-category="${param.category }">취소</button>									
					<button type="button" id="goPrevStep" class="btn btn-secondary mr-3">이전</button>									
					<button type="button" id="goNextStep" class="btn btn-primary ">수정</button>			
				</div>
			</div>
			
		</div> <!-- container-fluid 끝 -->
	</div><!-- container 끝 -->
	
</div>
</div>	
<script type="text/javascript" src="/resources/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">

$(function() {
	
	
	
})


function checkNum(price) {
	console.log(price+"클릭됨");
	
	var path= "#updateSeatForm input[name="+price+"]";
	if ($(path).val() < 0) {
		$(path).val(0);
	}	
}

$("#updateSeatForm input[name=aPrice]").change(function() {
	checkNum(price="aPrice");
})

$("#updateSeatForm input[name=sPrice]").change(function() {
	checkNum(price="sPrice");
})

$("#updateSeatForm input[name=rPrice]").change(function() {
	checkNum(price="rPrice");
})

$("#goNextStep").click(function() {

	var aPrice = $("#updateSeatForm input[name=aPrice]").val();
	var sPrice = $("#updateSeatForm input[name=sPrice]").val();
	var rPrice = $("#updateSeatForm input[name=rPrice]").val();
	
	if ((aPrice == "") || (aPrice == 0)) {
		alert("A석 가격을 입력해주세요.");
		return false;
	}
	
	if ((sPrice == "") || (sPrice == 0)) {
		alert("S석 가격을 입력해주세요.");
		return false;
	}
	
	if ((rPrice == "") || (rPrice == 0)) {
		alert("R석 가격을 입력해주세요.");
		return false;
	}
			
	$("#updateSeatForm").submit();	
		
	
})

$("#cancel").click(function(){
	var cat = '${param.category}';
	//console.log(cat);
	location.href="cancel.do?category="+cat;
})
		
$("#goPrevStep").click(function(){
	history.go(-1);
	//location.href="cancel.do";
	
})


	
</script>
</body>
</html>