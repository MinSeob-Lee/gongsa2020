<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>같이 보자! 공공연한사이</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet" href="/resources/css/card.css" />
<link rel="stylesheet" href="/resources/css/mypage.css" />

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.4.4/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
<script type="text/javascript" src="/resources/js/mypage/myperformance.js"></script>
</head>
<body>
	<div class="header">
		<%@ include file="../common/navi.jsp"%>
	</div>
	<div class="body mt-5">
		<div class="container-fluid mb-4">
			<div class="row">
				<%@include file="./mypagemenubar.jsp" %>
				<div class="col-8 mt-4">
					<div class="container">
						<%@include file="./mypageheader.jsp" %>
						<div class="mypage-card-header mt-3 ">
							<div class="row">
								<div class="col-12">
									<h2 class="font-weight-bold">나의 예매내역</h2>
								</div>
							</div>
						</div>
<%--					예매 아직 안함	--%>
						<div class="card mt-3 d-none" id="myperformance-reserve-null">
							<div class="card-body">
								<div class="row">
									<div class="col-6">
										<div class="row">
											<div class="col-12">
												<h4>아직 한번도 예매를 하지 않으셨네요!</h4>
												<span> 공공연한 사이와 함께 공연도 보시고, <br /> 메이트 찾기 기능을 통
															공연을 같이 볼 친구도 찾아보세요!
														</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- reserve li -->
						<div class="card mt-3 d-none" id="myperformance-list-template" style="cursor: pointer;">
							<div class="card-body">
								<div class="row">
									<div class="col-3">
										<img style="width: 200px; height: 200px;"
											src="/resources/sample-images/sample-consert4.jpg"
											class="rounded float-left performance-image" alt="...">
									</div>
									<div class="col-9">
										<div class="row">
											<div class="col-12">
												<div class="row">
													<div class="col-12">
														<h1 class="font-weight-bolder performance-title">공연제목</h1>
													</div>
												</div>
											</div>
											
											<div class="col-12">
												<div class="row">
													<div class="col-6">
														<div class="row">

															<div class="col-12">
																<i class="fas fa-star"></i> <span>예매날</span>
																<div>
																	<span class="performance-reg-date"></span>
																</div>
															</div>
															<div class="col-12">
																<i class="far fa-calendar-alt"></i> <span>관람일</span>
																<div>
																	<span class="performance-start-date">2021.05.07</span> <span>~</span> <span class="performance-end-date">2021.05.08</span>
																</div>
															</div>
															<div class="col-12">
																<i class="fas fa-ticket-alt"></i> <span>티켓번호</span>
																<div>
																	<span class="performance-ticket-no">A1H210543</span>
																</div>
															</div>
														</div>
													</div>
													<div class="col-6">
														<div class="row">
															<div class="col-12">
																<i class="fas fa-map-marker-alt"></i><span>공연장</span>
																<div>
																	<span class="performance-hall-name">2021.05.07</span>
																</div>
															</div>
															<div class="col-12">
																<i class="fas fa-user"></i> <span>예매자</span>
																<div>
																	<span class="performance-reserve-user">userid</span>
																</div>
															</div>
															<div class="col-12">
																<i class="fas fa-arrow-alt-circle-right"></i> <span>예매상태</span>
																<div>
																	<span class="performance-reserve-status">결제완료</span>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- reserve li -->
						
					</div>
				</div>
			</div>
	<div class="footer">
			<%@ include file="../common/footer.jsp" %>
		</div>
		</div>
	</div>
</body>
</html>