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
	<style>
		#myModal .card:hover{
			background-color: #FFF;
			color: #000;
		}
	</style>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.4.4/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=333f1bf83c9503d02a701757427f6892&libraries=services"></script>
<script type="text/javascript" src="/resources/js/mypage/myLikes.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>
<body>
	<div class="header">
		<%@ include file="../common/navi.jsp"%>
	</div>
	<div class="body mt-5">
		<div class="container-fluid mb-4">
			<div class="row">
				<%@ include file="./mypagemenubar.jsp"%>
				<div class="col-8 mt-4">
					<div class="container">
						<%@ include file="./mypageheader.jsp"%>
						<div class="mypage-card-header mt-3">
							<div class="row">
								<div class="col-12">
									<h2 class="font-weight-bold">좋아하는 공연 목록</h2>
								</div>
							</div>
						</div>
						<%--					예매 아직 안함	--%>
						<div class="card mt-3 d-none" id="myperformance-likes-null">
							<div class="card-body">
								<div class="row">
									<div class="col-6">
										<div class="row">
											<div class="col-12">
												<h4>아직 좋아하는 공연을 등록하지 않으셨네요!</h4>
												<span> 먼저 공연을 검색하셔서 공공연한 사이와 함께 공연도 보시고, <br /> 메이트 찾기 기능을 통
															공연을 같이 볼 친구도 찾아보세요!
														</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card mt-3" id="like-list-template" data-toggle="modal" data-target="#info-modal">
							<div class="card-body">
								<div class="row">
									<div class="col-3">
										<img src="/resources/sample-images/movie_image.jpg"
											style="width: 200px; height: 200px;" alt="..."
											class="rounded float-left like-img">
									</div>
									<div class="col-9">
										<div class="row">
											<div class="col-12">
												<div class="row">
													<div class="col-12">
														<h3 class="font-weight-bolder like-title">영화제목</h3>
													</div>
												</div>
											</div>
											<div class="col-12">
												<div class="row">
													<div class="col-12">
														<div class="row">
															<div class="col-4">
																<i class="fas fa-cubes"></i> <span>분류</span>
																<div>
																	<span class="like-category">그런거</span>
																</div>
															</div>

															<div class="col-4">
																<i class="far fa-bookmark"></i> <span>장르</span>
																<div class="like-genre">
																</div>
															</div>

															<div class="col-4">
																<i class="fas fa-stopwatch"></i> <span>러닝타임</span>
																<div>
																	<span class="like-running-time">01:35:00</span>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-12">
														<div class="row">
															<div class="col-4">
																<i class="fas fa-building"></i> <span>배급사</span>
																<div>
																	<span class="like-provider"></span>
																</div>
															</div>

															<div class="col-4">
																<i class="far fa-calendar-alt"></i> <span>공연기간</span>
																<div>
																	<span class="like-start-date"></span>
																	<span> ~ </span>
																	<span class="like-end-date"></span>
																</div>
															</div>


															<div class="col-4">
																<i class="fas fa-landmark"></i> <span>공연장</span>
																<div>
																	<span class="like-hall-name"></span>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-12">
												<h4>설명</h4>
												<span class="like-explain">솰라솰라....................</span>
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




		<div class="footer">
			<%@ include file="../common/footer.jsp"%>
		</div>
	</div>
	<!-- 공연 상세정보 모달창 -->
			<div class="modal" id="info-modal">
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
													<span class="badge badge-pill badge-warning mr-2" id="modalAge"></span>
													<h5 class="d-inline font-weight-bold" id="modalTitle"></h5>
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
															<td id="modalGenre"></td>
														</tr>
														<tr>
															<th>러닝타임</th>
															<td id="modalRunningTime"></td>
														</tr>
														<tr>
															<th>공연기간</th>
															<td id="modalPeriod"></td>
														</tr>
														<tr>
															<th>분류</th>
															<td id="modalCategory"></td>
														</tr>
														<tr>
															<th>공연장소</th>
															<td id="modalHallName"></td>
														</tr>
														<tr>
															<th>좌석정보</th>
															<td id="modalSeatInfo"></td>
														</tr>
														<tr>
															<td colspan="2">
																<label class="" id="modalTags">																	
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
																<!-- 뒷풀이게시판 -->
																<div class="card-body" style="display:none;">
																	<div class="mb-4">
																		<i class='fas fa-bullhorn mr-2'
																			style='font-size: 24px'></i>
																		<h6 class="d-inline font-weight-bold">메이트 모집중</h6>
																	</div>
																	<div>
																		<h6>현재 00/100명이 해당 공연의 메이트가 되었습니다.</h6>
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
																		<span class="d-inline">00/30</span>
																	</div>
																</div>
																<!-- 카카오맵 api by LMS (start 2020.08.26) -->
																<div class="card-body">
																	<div id="map" style="width:380px; height:300px;"></div>
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
													<button type="button" class="btn btn-sm" id="clickLike"
													data-no="" data-liked="">
														<i class='far fa-heart mr-2'
														style='font-size: 24px;'></i>
													</button>
													<label id="modalLikes"></label>
												</div>
												<!--  
												<div class="d-inline" style="display:none;">
													<button type="button" class="btn btn-sm" id="goBoard">													
														<i class='far fa-comment-alt mr-2' style='font-size: 24px'></i>
													</button>
													<label id="modalAfterParty"></label>
												</div>
												-->
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
									
										<button type="button" class="btn btn-outline-danger mr-4 btn-lg"
											id="modalBuyBtn" data-no="">예매하기</button>
										<button type="button" class="btn btn-outline-dark btn-lg" style="display:none;"
											id="modalMateGroupBtn" data-no="">메이트 그룹</button>
									</div>
									
									<!--  
									<div class="row justify-content-end mt-3">
										<button type="button" class="btn btn btn-info mr-4 btn-lg"
												id="modalUpdateBtn" data-no="" >수정하기</button>
										<button type="button" class="btn btn btn-danger mr-2 btn-lg"
												id="modalDeleteBtn" data-no="">삭제하기</button>	
									</div>
									-->
									
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
												<td id="modalDetailtitle"></td>
											</tr>
											<tr>
												<th>공연장소</th>
												<td id="modalDetailHallName">
													<p></p>
													<p></p>
												</td>
											</tr>
											<tr>
												<th>공연기간(개봉일)</th>
												<td id="modalDetailPeriod"></td>
											</tr>
											<!--  
											<tr>
												<th>공연시간</th>
												<td id="modalDetailTime"></td>
											</tr>
											-->
											<tr>
												<th>러닝타임</th>
												<td id="modalDetailRunningTime"></td>
											</tr>
											<tr>
												<th>좌석등급 및 가격</th>
												<td id="modalDetailSeatInfo"></td>
											</tr>
											<tr>
												<th>관람연령</th>
												<td id="modalDetailAge"></td>
											</tr>
										</tbody>									
									</table>							
								</div>	<!-- 공연정보 테이블 끝 -->
								<div class="mt-3 p-2"> <!-- 공연 -->
									<h5 class="font-weight-bold">내용</h5>				
									<div class="mt-3" style="width:85%">
										 <p id="modalDetailExplain"></p>
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
													<div id="defaultChart" class="text-center" style="display:none;" >
													
													</div>
												</div> 
											</div>
										</div>
										<div class="col-5">
											<div class="card" style="display:none;"> 
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
						
						<!--  -->						
						
					</div>
				</div>
			</div> <!-- 공연 상세정보 모달창 끝 -->
</body>
</html>