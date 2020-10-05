<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="/resources/css/card.css" />
<link rel="stylesheet" href="/resources/css/chat.css" />

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
<script type="text/javascript" src="/resources/js/mate.js"></script>
</head>
<body  style="background-color: rgba(0, 0, 0, 0.6);">
	<div class="header">
		<%@ include file="../common/navi.jsp"%>
	</div>
	<div class="body">
		<div class="mt-5 container">
			<div class="row">
				<div class="offset-3 col-9 mt-3">
					<div id="container">
						<aside>
							<header>
								<div class="row h5 text-white font-weight-bold">
									<div class="col-3">
										<span style="display: none; cursor: pointer;"
											id="mate-card-left"><i class="fas fa-chevron-left"></i></span>
									</div>
									<div class="col-9">
										<span class="">참여한 메이트</span>
									</div>
								</div>
							</header>
							<ul>
								<c:choose>
									<c:when test="${not empty mate }">
										<c:forEach items="${mate }" var="user">
									<li>
										<!-- user image --> <img
										src="/resources/sample-images/sample-consert1.jpg" alt="">
										<div>
											<!-- user id -->
											<h2>${user.nickname }</h2>
											<h3>
												<span class="text-primary"></span>
											</h3>
										</div>
									</li>
										</c:forEach>
									</c:when>
								</c:choose>
								
							</ul>
							<div class="col-12">
								<a href="mate.do" class="btn btn-warning btn-lg">
									<i class="fas fa-arrow-left fa-2x"></i>
								</a>
								<span class="text-white">이전</span>
							</div>
							<div class="col-12 text-center mt-4">
								<button id="mate-out-btn" type="button" class="btn btn-danger btn-sm">메이트방 탈퇴</button>
							</div>
						</aside>
						<div class="main">
							<header>
								<div class="col-12 mt-3">
									<div class="input-group">
										<select class="custom-select" id="mCat"
											aria-label="Example select with button addon">
											
										<c:forEach items="${categories }" var="cat">
											<option value="${cat.id }">${cat.category }</option>
										</c:forEach>

										</select>
										<div class="input-group-append">
											<button id="cat-change-btn" class="btn btn-outline-secondary" type="button">변경</button>
										</div>
										
									</div>
								</div>
								<div class="col-12 ml-3 mt-3">
									<span class="text-primary" id="mTag"></span>
									<button id="mate-plus-hastag" type="button"
										class="btn btn-primary btn-sm">
										<i class="fas fa-plus"></i>
									</button>
								</div>
								<div class="col-12 text-right">
									<hr class="m-2" />
									<button type="button" class="btn btn-primary">좌석보기</button>
									
								
								</div>
								
								<div id="mate-plus-hastag-box" class="col-12"
									style="display: none; position: absolute; top: 120px; width: 600px;">
									<div class="card">
										<div class="input-group m-3">
											<input type="text" class="form-control"
												id="tag-update-input-box">
											<div class="input-group-append mr-5">
												<button class="btn btn-outline-secondary" type="button"
													id="tag-update-btn">등록</button>
											</div>
										</div>

									</div>
								</div>

							</header>
							<ul id="chat">
							</ul>
							<footer>
								<textarea id="chat-content-box" placeholder="메시지를 입력해주세요"></textarea>
								<div class="col-12 text-right">
								 <button id="chat-submit-btn" class="btn btn-outline-primary">등록</button>
								</div>
							</footer>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<div id="mate-override-card" class='music-card playing'>
		<div id="card-x-btn" class="text-right m-2 text-white"
			style="position: absolute; z-index: 20; cursor: pointer;">
			<i class="far fa-times-circle fa-2x"></i>
		</div>
		<div class='image' id="pImage">
		</div>

		<div class='wave'></div>
		<div class='wave'></div>
		<div class='wave'></div>

		<div class='info'>
			<div class="row mt-4">
				<div class="col-12">
					<h4 style="display: inline-block;">
						<span id="seatRate"></span>석 메이트방
					</h4>
				</div>
				<div class="col-12 text-left ml-3">
					<div class="card font-weight-bolder" style="width: 270px;">
						<div class="text-white h4 badge badge-info text-wrap"><span id="pCat"></span></div>
						<div class="ml-2">
							<table class="table table-boderless">
								<tbody>
									<tr>
										<td><i class="far fa-calendar-alt"></i> 공연기간 <div><small
											class="ml-2"> 
											<span id="pStartDate"></span> <span>~</span>
												<span id="pEndDate"></span>
										</small></div></td>
									</tr>
									<tr>
										<td>
											<i class="fas fa-map-marker-alt"></i>공연장소
											<small><span id="pPlace"></span></small>
										</td>
									</tr>
									<tr>
										<td>
											<i class="fas fa-map-marker-alt"></i>공연시간
											<small><span id="pShowDate"></span></small>
											<small><span id="pShowTime"></span></small>
											<small><span id="pShowNumber"></span>회차</small>
										</td>
									</tr>
									<tr>
										<td>
											<i class="fas fa-registered"></i>
											<small><span id="pRating"></span>세</small>
										</td>
									</tr>
								</tbody>
							</table>
						
							
						</div>
						<div class="ml-2">
							
						</div>

					</div>
				</div>
				<div class="col-12 mt-2"></div>
			</div>
		</div>
		<input type="hidden" value="" id="totalLength"/>
		<input type="hidden" value="${pid }" id="pid"/>
		<input type="hidden" value="${mnum }" id="mnum" />
	</div>
	
</body>
</html>