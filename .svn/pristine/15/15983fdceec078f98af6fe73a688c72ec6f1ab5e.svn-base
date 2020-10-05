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

</head>
<body>
	<div class="header">
		<%@ include file="../common/navi.jsp"%>
	</div>
	<div class="body">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12 mt-5 p-3 text-center">
					<h1 class="pl-3 font-weight-bold">Consert</h1>
				</div>
			</div>
			<div class="row h-50">
				<div class="col-12">
					<!-- 배너광고 슬라이드 시작  -->
					<div id="demo" class="carousel slide " data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#demo" data-slide-to="0" class="active"></li>
							<li data-target="#demo" data-slide-to="1"></li>
							<li data-target="#demo" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner ">
							<!--  한 슬라이드당 이미지 3개 -->
							<div class="carousel-item active bg-dark"> 
								<div class="row"
									style="width: 70%; float: none; margin: 0 auto;">
									<div class="col-12">
										<div class="row">
											<div class="col-4">
												<a href="링크주소"> <img
													src="/resources/sample-images/movie_image.jpg"
													style="width: 380px; height: 540px;">
												</a>
											</div>
											<div class="col-4  ">
												<a href="링크주소"> <img
													src="/resources/sample-images/movie_image2.jpg"
													style="width: 380px; height: 540px;">
												</a>
											</div>
											<div class="col-4 ">
												<a href="링크주소"> <img
													src="/resources/sample-images/movie_image3.jpg"
													style="width: 380px; height: 540px;">
												</a>
											</div>
										</div>
									</div>
								</div>
							</div> <!-- 한 슬라이드 끝 -->
							<div class="carousel-item bg-dark">
								<div class="row"
									style="width: 70%; float: none; margin: 0 auto;">
									<div class="col-12">
										<div class="row">
											<div class="col-4">
												<a href="링크주소"> <img
													src="/resources/sample-images/sample_musical1.jpg"
													style="width: 380px; height: 540px;">
												</a>
											</div>
											<div class="col-4  ">
												<a href="링크주소"> <img
													src="/resources/sample-images/sample-consert1.jpg"
													style="width: 380px; height: 540px;">
												</a>
											</div>
											<div class="col-4 ">
												<a href="링크주소"> <img
													src="/resources/sample-images/sample_musical2.jpg"
													style="width: 380px; height: 540px;">
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item bg-dark">
								<div class="row"
									style="width: 70%; float: none; margin: 0 auto;">
									<div class="col-12">
										<div class="row">
											<div class="col-4  ">
												<a href="링크주소"> <img
													src="/resources/sample-images/movie_image2.jpg"
													style="width: 380px; height: 540px;">
												</a>
											</div>
											<div class="col-4  ">
												<a href="링크주소"> <img
													src="/resources/sample-images/sample_musical2.jpg"
													style="width: 380px; height: 540px;">
												</a>
											</div>
											<div class="col-4 ">
												<a href="링크주소"> <img
													src="/resources/sample-images/movie_image3.jpg"
													style="width: 380px; height: 540px;">
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#demo" role="button"
							data-slide="prev"> <span class="carousel-control-prev-icon"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#demo" role="button"
							data-slide="next"> <span class="carousel-control-next-icon"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>
					<!-- 배너광고 슬라이드 끝  -->
				</div>
			</div>
			<!-- 배너 광고 끝 -->
			<div class="row mt-5 justify-content-center">
				<div class="col-8">
					<div class="d-flex justify-content-between">
						<div class="p-2">
							<h5 class="text-danger d-inline bolder">공연</h5>
							<span>검색결과</span>
						</div>
						<div class="p-2">
							<button type="button" class="btn btn-link text-danger"
								id="dateOrder">개봉일순</button>
							<button type="button" class="btn btn-link text-dark"
								id="likeOrder">좋아요순</button>
							<button type="button" class="btn btn-link text-dark"
								id="salesOrder">예매순</button>
						</div>
					</div>
					<hr />
				</div>
			</div>


			<div class="row mt-2 justify-content-center">
				<div class="col-8 border p-3">
					<form method="get" id="search-form">
						<input type="hidden" name="order" id="listOrder" value="dateOrder" />
						<div class="form-group">
							<label>공연명</label> <input type="text" class="form-control"
								name="title" id="performanceName" />
						</div>
						<div class="form-group">
							<label class="">공연장르</label>
							<div class="btn-group-toggle  " >
								<label class="btn btn-outline-danger mb-2"> <input
									type="checkbox" name="genre" value="all" checked="checked"
									id="genreAll">전체
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="checkbox" name="genre" value="action">액션
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="checkbox" name="genre" value="crime">범죄
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="checkbox" name="genre" value="thriller">스릴러
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="checkbox" name="genre" value="romance">로맨스
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="checkbox" name="genre" value="sf">SF
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="checkbox" name="genre" value="fantasy">판타지
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="checkbox" name="genre" value="adventure">모험
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="checkbox" name="genre" value="family">가족
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="checkbox" name="genre" value="animation">애니메이션
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="checkbox" name="genre" value="drama">드라마
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="checkbox" name="genre" value="musical">뮤지컬
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="checkbox" name="genre" value="documentory">다큐멘터리
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="checkbox" name="genre" value="comedy">코미디
								</label>
							</div>

						</div>
						<div class="form-group">
							<div class="form-inline ">
								<div>
									<label>공연기간</label>
								</div>
								<div class="ml-3">
									<input type="date" class="form-control d-inline"
										name="startDay" id="performanceStartDay" /> ~ <input
										type="date" class="form-control d-inline" name="endDay"
										id="performanceEndDay" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label>관람연령</label>
							<div class="btn-group-toggle  " data-toggle="buttons">
								<label class="btn btn-outline-danger mb-2"> 
									<input type="radio" name="age" value="all" checked="checked">전체
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="radio" name="age" value="12">12세이상
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="radio" name="age" value="15">15세이상
								</label> 
								<label class="btn btn-outline-danger mb-2"> 
									<input type="radio" name="age" value="adult">청소년관람불가
								</label>
							</div>
						</div>					
						<div class="d-flex justify-content-end">
							<button type="submit" class="btn btn-danger mr-4">검색</button>
						</div>
					</form>
				</div>
			</div>

			<div class="row mt-5 justify-content-center">
				<!-- 공연 목록 시작 -->
				<div class="col-8 mt-3">

				<c:forEach var="performance" items="${performances }">
					<div class="row"> <!-- 공연정보 카드 1 시작 -->				
						<div class="col-12">
							<div class="card">								
								<div class="card-body">
									<div class="row">
										<div class="col-3">
											<img src="${performance.imagePath }" 
												class="img-thumbnail">
										</div>
										<div class="col-9">
											<div class="row mb-2">
												<div class="col-12">
													<span class="badge badge-pill badge-warning mr-2">														
													<c:choose>
														<c:when test="${performance.rating eq 0}">
       														전체
    													</c:when>
    													<c:otherwise>
      														${performance.rating }
    													</c:otherwise>
    												</c:choose>													
													</span>
													<h5 class="d-inline font-weight-bold">
														<c:out value="${performance.title }" />
													</h5>
												</div>
											</div>
											<div class="row mb-2">
												<div class="col-7 ">
													<table class="table table-borderless">
														<colgroup>
															<col width="20%" />
															<col width="80%" />
														</colgroup>
														<tr>
															<th>장르</th>
															<td>
															<c:forEach var="genre" items="${performance.genres }"> 
																${genre }&nbsp;
															</c:forEach>															
															</td>
														</tr>
														<tr>
															<th>러닝타임</th>
															<td>
																<fmt:formatDate value="${performance.runningTime }" pattern="HH시 mm분" />
															</td>
														</tr>
														<tr>
															<th>공연기간</th>
															<td>
																<fmt:formatDate value="${performance.startDate }" pattern="yyyy년 M월 d일" />
																~
																<fmt:formatDate value="${performance.endDate }" pattern="yyyy년 M월 d일" />
																
															</td>
														</tr>
														<tr>
															<th>분류</th>
															<td>${performance.category }</td>
														</tr>
														<tr>
															<th>공연장소</th>
															<td>${performance.hallName }</td>
														</tr>
														<tr>
															<th>좌석정보</th>
															<td>R석 66,000원 | S석 44,000원</td>
														</tr>
														<tr>
															<td colspan="2">
																<label class="">
																<c:forEach var="genre" items="${performance.genres }"> 
																	<a href="#">#${genre }</a>
																</c:forEach>
																	
																</label>
															</td>
														</tr>
													</table>
												</div>
												<!-- 공연 간단 정보창 끝 -->
												<div class="col-5">
													<div class="row justify-content-center">
														<div class="col-12">
															<div class="card">
																<div class="card-body">
																	<div class="mb-4">
																		<i class='fas fa-bullhorn mr-2'
																			style='font-size: 24px'></i>
																		<h6 class="d-inline font-weight-bold">메이트 모집중</h6>
																	</div>
																	<div>
																		<h6>현재 80/100명이 해당 공연의 메이트가 되었습니다.</h6>
																	</div>
																	<div class="progress mt-3">
																		<div
																			class="progress-bar bg-danger progress-bar-striped"
																			role="progressbar" style="width: 75%;"
																			aria-valuenow="75" aria-valuemin="0"
																			aria-valuemax="100">75%</div>
																	</div>
																	<div class="mt-3 ">
																		<h6 class="d-inline">메이트 그룹 현황</h6>
																		<span class="d-inline">20/30</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<!-- 메이트 그룹 창 끝 -->
											</div>
											<!-- 공연정보 표시끝 -->
										</div>
									</div>
									<div class="row mt-2 p-2 ">
										<div class="col-12 d-flex justify-content-between">
											<div>
												<!-- 좋아요수, 뒷풀이 게시판 수 표시 -->
												<div class="d-inline mr-2">
													<i class='fas fa-heart mr-2'
														style='font-size: 24px; color: red;'></i><label>${performance.likes }</label>
												</div>
												<div class="d-inline">
													<i class='far fa-comment-alt mr-2' style='font-size: 24px'></i><label>242</label>
												</div>
											</div>
											<div>
												<button type="button" class="btn btn-outline-danger mr-2"
													onclick="buyTicket(${performance.id})">예매하기</button>
												<button type="button" class="btn btn-outline-dark"
													onclick="showDetail(${performance.id})">상세보기</button>
											</div>
										</div>
									</div>
									<!--  
									<div class="row">
										<label class="pr-2 pl-2"><a href="#">#범죄</a><a
											href="#">#액션</a><a href="#">#스릴러</a></label>
									</div>
									-->
									<!-- 태그 창 끝 -->
								</div>
								<!-- card body 끝 -->
							</div>
							<!-- card 끝 -->
						</div>
						<!-- 카드 row col-12끝 -->
					</div>
					<!-- 카드 row끝 공연정보카드1 끝남-->
				</c:forEach>
				
					
					<!-- 카드 row끝 -->
				</div>
			</div>
			<!-- 공연목록 끝 -->

			<!-- 공연 상세정보 모달창 -->
			<div class="modal" id="myModal">
				<div class="modal-dialog"
					style="max-width: 100%; width: 80%; display: table;">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header">
							<h6 class="modal-title font-weight-bold">공연 상세정보</h6>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						<!-- Modal body -->
						<div class="modal-body">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-3">
											<img src="/resources/sample-images/movie_image2.jpg"
												class="img-thumbnail" id="modalImg">
										</div>
										<div class="col-9">
											<div class="row mb-2">
												<div class="col-12">
													<span class="badge badge-pill badge-warning mr-2" id="modalAge">15</span>
													<h5 class="d-inline font-weight-bold" id="modalTitle">다만 악에서 구원하소서</h5>
												</div>
											</div>
											<div class="row mb-2">
												<div class="col-7 ">
													<table class="table table-borderless">
														<colgroup>
															<col width="20%" />
															<col width="80%" />
														</colgroup>
														<tr>
															<th>장르</th>
															<td id="modalGenre">범죄, 액션</td>
														</tr>
														<tr>
															<th>러닝타임</th>
															<td id="modalRunningTime">108분</td>
														</tr>
														<tr>
															<th>공연기간</th>
															<td id="modalPeriod">2020.08.05 ~ 2020.09.02</td>
														</tr>
														<tr>
															<th>분류</th>
															<td id="modalCategory">영화</td>
														</tr>
														<tr>
															<th>공연장소</th>
															<td id="modalHallName">세종문화회관</td>
														</tr>
														<tr>
															<th>좌석정보</th>
															<td id="modalSeatInfo">R석 66,000원 | S석 44,000원</td>
														</tr>
														<tr>
															<td colspan="2">
																<label class="" id="modalTags">
																	<a href="#">#범죄</a>
																	<a href="#">#액션</a>
																	<a href="#">#스릴러</a>
																</label>
															</td>
														</tr>
													</table>
												</div>
												<!-- 공연 간단 정보창 끝 -->
												<div class="col-5">
													<div class="row justify-content-center">
														<div class="col-12">
															<div class="card">
																<div class="card-body">
																	<div class="mb-4">
																		<i class='fas fa-bullhorn mr-2'
																			style='font-size: 24px'></i>
																		<h6 class="d-inline font-weight-bold">메이트 모집중</h6>
																	</div>
																	<div>
																		<h6>현재 80/100명이 해당 공연의 메이트가 되었습니다.</h6>
																	</div>
																	<div class="progress mt-3">
																		<div
																			class="progress-bar bg-danger progress-bar-striped"
																			role="progressbar" style="width: 75%;"
																			aria-valuenow="75" aria-valuemin="0"
																			aria-valuemax="100">75%</div>
																	</div>
																	<div class="mt-3 ">
																		<h6 class="d-inline">메이트 그룹 현황</h6>
																		<span class="d-inline">20/30</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<!-- 메이트 그룹 창 끝 -->
											</div>
											<!-- 공연정보 표시끝 -->
										</div>
									</div>
									<div class="row mt-2 ">
										<div class="col-12 d-flex justify-content-between">
											<div>
												<!-- 좋아요수, 뒷풀이 게시판 수 표시 -->
												<div class="d-inline mr-2">
													<button type="button" class="btn btn-sm" id="clickLike">
														<i class='far fa-heart mr-2'
														style='font-size: 24px;'></i>
													</button>
													<label id="modalLikes">52</label>
												</div>
												<div class="d-inline">
													<button type="button" class="btn btn-sm" id="goBoard">													
														<i class='far fa-comment-alt mr-2' style='font-size: 24px'></i>
													</button>
													<label id="modalAfterParty">242</label>
												</div>
											</div>
											
										</div>
									</div>
									<div class="row justify-content-center">
									<!--  
										<label class="pr-2 pl-2"><a href="#">#범죄</a><a
											href="#">#액션</a><a href="#">#스릴러</a></label>
									-->
									<!--
										여기서 버튼 onclick 정의하지 말고 아래에 클릭이벤트 정의
										$("#bton").click(function(no){
										})
									-->
									
										<button type="button" class="btn btn-danger mr-4 btn-lg"
											onclick="buyTicket(1)" id="modalBuyBtn">예매하기</button>
										<button type="button" class="btn btn-outline-dark btn-lg"
											onclick="showMateGroup(1)" id="modalMateGroupBtn">메이트 그룹</button>
									</div>
									<!-- 태그 창 끝 -->
								</div>
								<!-- card body 끝 -->
							</div>
							<!-- card 끝 -->
							<div> <!-- 공연상세 정보 -->
								<div class="mt-3 p-2">
									<h5 class="font-weight-bold">공연정보</h5>
									<table class="table table-bordered mt-3">
										<colgroup>
											<col width="20%">
											<col width="80%">
										</colgroup>
										<tbody>
											<tr>
												<th>공연명</th>
												<td id="modalDetailtitle">뮤지컬&lt;비스티&gt;</td>
											</tr>
											<tr>
												<th>공연장소</th>
												<td id="modalDetailHallName">서경대학교 공연예술센터 스콘 1관</td>
											</tr>
											<tr>
												<th>공연기간(개봉일)</th>
												<td id="modalDetailPeriod">2020년 8월 30일(일) ~ 2020년 11월 15일(일)</td>
											</tr>
											<tr>
												<th>공연시간</th>
												<td id="modalDetailTime">화, 목, 금 8시 | 수 4시, 8시 | 토, 일, 공휴일 2시, 6시 |
												월 공연없음 단, 8월 30일(일) 6시 | 8월 31일(월) 8시</td>
											</tr>
											<tr>
												<th>러닝타임</th>
												<td id="modalDetailRunningTime">100분</td>
											</tr>
											<tr>
												<th>좌석등급 및 가격</th>
												<td id="modalDetailSeatInfo">R석 66,000원 | S석 44,000원</td>
											</tr>
											<tr>
												<th>관람연령</th>
												<td id="modalDetailAge">만 13세 이상 관람가</td>
											</tr>
										</tbody>									
									</table>							
								</div>	<!-- 공연정보 테이블 끝 -->
								<div class="mt-3 p-2"> <!-- 공연 -->
									<h5 class="font-weight-bold">내용</h5>				
									<div class="mt-3" style="width:85%">
										 <p id="modalDetailExplain">태국에서 충격적인 납치사건이 발생하고
										 마지막 청부살인 미션을 끝낸 암살자 인남(황정민)은 그것이 자신과 관계된 것임을 알게 된다.
										 인남은 곧바로 태국으로 향하고, 조력자 유이(박정민)를 만나 사건을 쫓기 시작한다.
										 한편, 자신의 형제가 인남에게 암살당한 것을 알게 된 레이(이정재).
										 무자비한 복수를 계획한 레이는 인남을 추격하기 위해 태국으로 향하는데...
										 
										 처절한 암살자 VS 무자비한 추격자
										 멈출 수 없는 두 남자의 지독한 추격이 시작된다!</p>
									</div>									
								</div>
								<div class="mt-3 p-2">
									<h5 class="font-weight-bold">이벤트 정보</h5>				
									<div class="mt-3" style="width:85%">
										<p>이벤트가 없습니다.</p>											
									</div>	
								</div>	
								<div class="mt-3 p-2">
									<h5 class="font-weight-bold">성별 나이별 관람추이</h5>				
									<div class="row mt-3 p-2 justify-content-start">
										<div class="col-5">
											<div class="card"> 
												<div class="card-body"> 
													<canvas id="chartGender">
													</canvas>
												</div> 
											</div>
										</div>
										<div class="col-5">
											<div class="card"> 
												<div class="card-body"> 
													<canvas id="chartAge">
													</canvas>
												</div> 
											</div>
										</div>
									</div>
								</div> <!-- 공연 상세정보 -->	
															
							</div>	<!-- 공연상세정보 끝 -->						
							
						</div>
						<!-- Modal footer -->
						<!-- 
						
						<div class="modal-footer">
							<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
						</div>
						 -->
					</div>
				</div>
			</div>
			
			<div class="row mt-5 justify-content-center">
				<!-- 페이지네이션 -->
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item active"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
			</div>
			<!-- 페이지네이션 끝 -->
		
		<div class="footer">
			<%@ include file="../common/footer.jsp" %>
		</div>
		</div>
		<!-- container 끝 -->

	</div>
	<!-- body 끝 -->

<script type="text/javascript" src="/resources/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">

function buyTicket(no) {
	console.log(no);
	location.href='/payment/step1.do';
}


function showDetail(performanceId) {	
	console.log(performanceId);	
	
	$.ajax({
		type:"GET",
		url:"/performance/detail.do",
		data: {id:performanceId},
		dataType: 'json',
		success: function(performance) {
			//$("#table-product td:eq(0)").text(product.no);
			//$("#table-product td:eq(1)").text(product.stock);
			//$("#table-product td:eq(2)").text(product.name);
			//$("#table-product td:eq(3)").text(product.price);
			//$("#table-product td:eq(4)").text(product.discountPrice);
					
			var rating = performance.rating;
			$("#modalAge").html(rating);
			$("#modalTitle").text(performance.title);
			
			var performanceGenres = "";
			for (var genre in performance.genres) {
				performanceGenres += genre +" ";
			}
			$("#modalGenre").text(performanceGenres);
			
			$("#modalRunningTime").text(performance.runningTime);
			
			var period = performance.startDate + " ~ " +  performance.endDate;
			
			
			
			$("#modalPeriod").text(period);
			$("#modalCategory").text(performance.category);
			$("#modalHallName").text(performance.hallName);
			//$("#modalTags").text();
			$("#modalLikes").text(performance.likes);
			$("#modalAfterParty").text();
			
			$("#modalDetailtitle").text(performance.title);
			$("#modalDetailHallName").text(performance.hallname);
			$("#modalDetailPeriod").text(period);
			//$("#modalDetailTime").text(performance.expla);
			$("#modalDetailRunningTime").text(performance.runningTime);
			//$("#modalDetailSeatInfo").text(performance.explain);
			$("#modalDetailAge").text(rating);
			$("#modalDetailExplain").text(performance.explain);
			
			
			console.log("성공함");
			console.log(performance);
			
		}
	})
	
	
	
	// 성별 그래프
	var genderColors=['skyblue', '#E23B3B'];
	
	var donutOptions= {
		cutoutPercentage: 30, //도넛두께 : 값이 클수록 얇아짐 
		legend: {
					position:'bottom', 
					padding:5, 
					labels: {
						pointStyle:'circle', 
						usePointStyle:true
					}
				}
	};
	
	var chDonutData = {
		labels: ['남자', '여자'], 
		datasets: [ { 
			backgroundColor: genderColors.slice(0,2), 
			borderWidth: 0, 
			data: [74, 40] // 데이터
		} ]
	};
	
	var $chDonut = $("#chartGender"); 
	
	if ($chDonut) { 
		new Chart($chDonut, { 
			type: 'pie', 
			data: chDonutData, 
			options: donutOptions 
			}
		); 
	}
	
	// 나이대별 관람추이
	var $chBar = $("#chartAge");
	
	if ($chBar) {
		new Chart($chBar, {
			type: 'bar',
			data: {
				labels: ['10대', '20대', '30대', '40대', '50대↑'],
				datasets: [{
					label: '# of Numbers',
					data: [12,34,47,16,12],	// 퍼센트 구해서 넣기
					backgroundColor: [
						'rgba(54, 162, 235, 0.2)',
						'rgba(54, 162, 235, 0.2)',
						'rgba(54, 162, 235, 0.2)',
						'rgba(54, 162, 235, 0.2)',
						'rgba(54, 162, 235, 0.2)'
					],
					borderColor: [
						'rgba(54, 162, 235, 1)',
						'rgba(54, 162, 235, 1)',
						'rgba(54, 162, 235, 1)',
						'rgba(54, 162, 235, 1)',
						'rgba(54, 162, 235, 1)'
					],
					borderWidth: 1
				}]
			},
			options: {
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero: true
						}
					}]
				}
			}
			
		})		
	}
	
	
	
	$("#myModal").modal("show");
	
	
	
};

function showMateGroup(no) {
	console.log(no);
	
};

$("#clickLike").click(function(){
	//console.log(this);
	
	//console.log($(this).find("i"));
	
	// 로그인 여부 확인하고 로그인 상태이면, 좋아요 표시
	
	$("#clickLike").find("i").hasClass("far")
	if ($(this).find("i").hasClass("far")){	// 빈 하트라면, 좋아요를 하지 않았다면,
		$(this).find("i").removeClass("far").addClass("fas").css("color", "red");
	} else {	// 좋아요 취소
		$(this).find("i").removeClass("fas").addClass("far").css("color", "black");
	}
	
	
})

$("#goBoard").click(function() {
	// board로 보냄
})


$(function() {
	$(":input[name=genre]").closest('label').click(function(event) {
		event.preventDefault();
		console.log("before", ($(this).find('input').prop("checked")));

		$(this).find('input').prop("checked", !($(this).find('input').prop("checked")))
		
		console.log("after", ($(this).find('input').prop("checked")));
		
		console.log($(this).find('input').val());
		
		
		
		if ($(this).find('input').prop("checked")) {
			
			
			$(this).removeClass("btn-outline-danger").addClass("btn-danger");
			
			// 무시해도되는 코드임
			// 전체 누르면 다른 버튼은 취소되도록
			if ($(this).find('input').val()=="all") {				
				$(this).siblings().find('input').prop("checked", false);
				$(this).siblings().removeClass("btn-danger").addClass("btn-outline-danger");				
			}else {	// 전체 말고 다른 버튼 눌렀을 때 전체 버튼이 이미 눌러져 있는경우 전체버튼 체크해제됨
				if ($("#genreAll").prop("checked")) {
					console.log("다른 장르버튼 눌렀을때 전체버튼이 체크되어있는가");
					$("#genreAll").closest('label').removeClass("btn-danger").addClass("btn-outline-danger");	
					$("#genreAll").prop("checked", false);
				}				
			}			
			
			console.log("체크되었음");
		} else {
			$(this).removeClass("btn-danger").addClass("btn-outline-danger");
		}
	})
})
</script>
</body>
</html>