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
<link rel="stylesheet" href="/resources/css/manager.css" />
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

		
</style>
</head>
<body>
	<c:set var="topName" value="performance"/>
	<%@ include file="../../manager/common/managerTop.jsp" %>	
	<div class="page-wrapper chiller-theme toggled">
  <%@ include file="../../manager/common/managernavi.jsp" %>
	   	<div class="page-content">
			<div class="container-fluid">		
				<div class="row">
					<div class="col-12 mt-5 p-3 text-center">					
						<h1>공연등록</h1>				
					</div>
				</div>
				
				
				<div class="row mt-4 justify-content-center">
					<div class="col-10 justify-content-center">
						<div class="row mt-4 justify-content-center">
							<div class="col-8">
								<div class="card">
									<div class="card-body">
										<div class="text-center mt-5">
											<i class='far fa-check-circle' style='font-size:100px; color:orange;'></i>
										</div>
										<div class="mt-5">
											<h5 class="text-center font-weight-bold">공연 등록이 완료되었습니다.</h5>															
										</div>
										
										<div class="row mt-5 mb-5 justify-content-center">				
											<div class="mt-4">
												<button type="button" id="goHome" class="btn btn-danger mr-3">홈</button>	
												<button type="button" id="goAdminHome" class="btn btn-dark mr-3">관리자홈</button>										
												<button type="button" onclick="goList(category='${param.category }')" class="btn btn-info ">공연목록</button>											
											</div>
										</div>
										
										
									</div>
								</div>							
							</div>					
						</div>
						
					</div>
				</div>			
				
				
			</div> <!-- container-fluid 끝 -->
		</div> <!-- pageWrapper 끝 -->
	</div><!-- body 끝 -->

<script type="text/javascript" src="/resources/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">


$("#goHome").click(function() {

	location.href="/home.do";
	
	
})

$("#goAdminHome").click(function() {
	location.href="/admin/home.do";
})


function goList(category) {
	//history.go(-1);
	//var category = '${category}';	
			
	console.log(category);
	location.href="/performance/adminList.do?category="+category;
	

}		
	


	
</script>
</body>
</html>