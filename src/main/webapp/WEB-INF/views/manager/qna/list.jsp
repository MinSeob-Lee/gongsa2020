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
<link rel="stylesheet" href="/resources/css/manager.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
<style type="text/css">
.category{
	background-color: #C0C0C0;
    transition: all 0.5s;
    transition-timing-function: ease;
}
.category .col:hover{
    transition: all 0.5s;
    transition-timing-function:ease;
    background-color: white;
    cursor: pointer;
}
.category .col {
	font-size: 25px;
	padding-top: 15px;
	padding-bottom: 15px;
}
.pagination { 
	font-family: "Roboto", sans-serif;
}

.pagination li a {
	border-radius:10!important; color:#333 !important; 
}

.pagination li.active a { 
	color:#fff !important; background:#444 !important; border-color:#444 !important; 
}
.scale {
  transform: scale(1);
  -webkit-transform: scale(1);
  -moz-transform: scale(1);
  -ms-transform: scale(1);
  -o-transform: scale(1);
  transition: all 0.3s ease-in-out;   /* 부드러운 모션을 위해 추가*/
}
.scale:hover {
  transform: scale(5.0);
  -webkit-transform: scale(1.2);
  -moz-transform: scale(1.2);
  -ms-transform: scale(1.2);
  -o-transform: scale(1.2);
  cursor: pointer;
}
a {
	text-decoration: none !important;
	color: black;
}
a:hover {
	font-weight: bold;
	color: black;
}
.qna-title:hover {
	cursor: pointer;
	font-weight: bold;
	color: black;
}
.modal-dialog.modal-80size {
  width: 80%;
  height: 80%;
  margin: 0;
  padding: 0;
}

.modal-content.modal-80size {
  height: auto;
  min-height: 80%;
}
.modal.modal-center {
  text-align: center;
}

@media screen and (min-width: 768px) { 
  .modal.modal-center:before {
    display: inline-block;
    vertical-align: middle;
    content: " ";
    height: 100%;
  }
}

.modal-dialog.modal-center {
  display: inline-block;
  text-align: left;
  vertical-align: middle; 
}
</style>
</head>
<body>
<c:set var="topName" value="qna"/>
	<%@ include file="../common/managerTop.jsp" %>
<div class="page-wrapper chiller-theme toggled">
  <%@ include file="../common/managernavi.jsp" %>
  <!-- sidebar-wrapper  -->
	<div class="container">
		<div class="row">
			<div class="col-12">
			<!-- 
				<div class="row">
					<div class="col-12">
						<div class="row category" id="category" align="center">
							<div class="col" id="notice-list"><a href="/notice/list.do">공지사항</a></div>
							<div class="col" id="qna-list"><a href="/qna/list.do">QnA</a></div>
						</div>
					</div>
				</div>
				 -->
				<div class="row">
					<div class="col-12">
						<form id="qna-list-form" class="form-group" method="get" action="/qna/list.do">
						<input type="hidden" name="pageNo" id="pageNo">
						<div class="row mt-4 mb-3">
							<div class="col-6">
								<div class="txc-textbox">
								<!-- Single button -->
									<div id="qna-category-select" class="btn-group">
										<select class="form-control" id="qna-list-selectBox" style="width: 130px;" name="status">
											<option value="전체" ${nowStatus eq '' ? 'selected' : '' }> 전체보기</option>
											<option value="0" ${nowStatus eq '0' ? 'selected' : '' }> 예매/취소</option>
											<option value="1" ${nowStatus eq '1' ? 'selected' : '' }> 메이트</option>
											<option value="3" ${nowStatus eq '3' ? 'selected' : '' }> 이벤트</option>
											<option value="2" ${nowStatus eq '2' ? 'selected' : '' }> 기타</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-6" align="right">
								<select class="form-control" id="qna-list-numberToShow" style="width: 140px;" name="rows">
									<option value="10" ${rows eq '10' ? 'selected' : '' }> 10개씩 보기</option>
									<option value="20" ${rows eq '20' ? 'selected' : '' }> 20개씩 보기</option>
									<option value="50" ${rows eq '50' ? 'selected' : '' }> 50개씩 보기</option>
									<option value="100" ${rows eq '100' ? 'selected' : '' }> 100개씩 보기</option>
								</select>							
							</div>
						</div>
						<div class="row">
							<div class="col-12">
								<table class="table table-bordered table-hover" style="text-align: center;" id="qna-main-table">
									<colgroup>
										<col width="10%">
										<col width="15%">
										<col width="55%">
										<col width="10%">
										<col width="10%">
									</colgroup>
									<thead class="table-dark">
										<tr style="background-color: black !important; color: white !important;">
											<th>No.</th>
											<th>분 류</th>
											<th style="text-align: left !important;"><span style="padding-left: 160px;">제</span><span style="padding-left: 130px;">목</span></th>
											<th>작성자</th>
											<th>등록일</th>
										</tr>
									</thead>
									<tbody id="qna-main-tbody">
										<c:choose>
											<c:when test="${empty qnas }">
												<tr>
													<td colspan="6" class="text-center" id="qna-empty">게시글이 존재하지 않습니다.</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach var="qna" items="${qnas }">
													<tr>
														<td>${qna.id }</td>
														<td>
														<c:choose>
															<c:when test="${qna.category eq '0' }">
																예매/취소
															</c:when>
															<c:when test="${qna.category eq '1' }">
																메이트
															</c:when>
															<c:when test="${qna.category eq '3' }">
																이벤트
															</c:when>
															<c:when test="${qna.category eq '2' }">
																기타
															</c:when>
														</c:choose>
														</td>
														<c:choose>
															<c:when test="${user.admin eq true }">
																<c:choose>
																	<c:when test="${qna.answerTitle eq null }">
																		<td style="text-align: left !important;" class="qna-title" id="${qna.id }">
																			<span class="badge badge-danger">답변예정</span> ${qna.questionTitle }																			
																		</td>
																	</c:when>
																	<c:when test="${qna.answerTitle ne null }">
																		<td style="text-align: left !important;" class="qna-title" id="${qna.id }">
																			<span class="badge badge-success">답변완료</span> ${qna.questionTitle }																			
																		</td>
																	</c:when>
																</c:choose>
															</c:when>
															<c:when test="${user.admin eq false }">
																<c:choose>
																	<c:when test="${user.id eq qna.questionUser.id }">
																		<c:choose>
																			<c:when test="${qna.answerTitle eq null }"> 
																				<td style="text-align: left !important;" class="qna-title" id="${qna.id }"><span class="badge badge-danger">답변예정</span>
																				${qna.questionTitle } <span class="badge badge-info badge-pill">내가쓴글</span>
																				</td>
																			</c:when>
																			<c:when test="${qna.answerTitle ne null }">
																				<td style="text-align: left !important;" class="qna-title" id="${qna.id }"><span class="badge badge-success">답변완료</span>
																				${qna.questionTitle } <span class="badge badge-info badge-pill">내가쓴글</span>
																				</td>
																			</c:when>
																		</c:choose>
																	</c:when>
																	<c:when test="${qna.opened eq true }">
																		<c:choose>
																			<c:when test="${qna.answerTitle eq null }">
																				<td style="text-align: left !important;" id="${qna.id }" class="qna-title"><span class="badge badge-danger">답변예정</span> 
																				${qna.questionTitle }
																			</c:when>
																			<c:when test="${qna.answerTitle ne null }">
																				<td style="text-align: left !important;" id="${qna.id }" class="qna-title"><span class="badge badge-success">답변완료</span> 
																				${qna.questionTitle }
																			</c:when>
																		</c:choose>
																		<span style="margin-left: 3px"><i class="fas fa-unlock fa-1x"></i></span>
																	</c:when>
																	<c:otherwise>
																		<td style="text-align: left !important;" class="qna-title lock text-muted">비공개글입니다.
																			<span style="margin-left: 3px;"><i class="fas fa-lock fa-1x"></i></span>
																		</td>
																	</c:otherwise>
																</c:choose>
															</c:when>
															<c:when test="${user eq null }">
																<c:choose>
																	<c:when test="${qna.opened eq true }">
																		<c:choose>
																			<c:when test="${qna.answerTitle eq null }">
																				<td style="text-align: left !important;" id="${qna.id }" class="qna-title"><span class="badge badge-danger">답변예정</span> 
																				${qna.questionTitle }
																			</c:when>
																			<c:when test="${qna.answerTitle ne null }">
																				<td style="text-align: left !important;" id="${qna.id }" class="qna-title"><span class="badge badge-success">답변완료</span> 
																				${qna.questionTitle }
																			</c:when>
																		</c:choose>
																		<span style="margin-left: 3px"><i class="fas fa-unlock fa-1x"></i></span>
																	</c:when>
																	<c:when test="${qna.opened ne true }">
																		<td style="text-align: left !important;" class="qna-title lock text-muted">비공개글입니다.
																		<span style="margin-left: 3px;"><i class="fas fa-lock fa-1x"></i></span>
																		</td>
																	</c:when>
																</c:choose>
															</c:when>
														</c:choose>
														<td>${qna.questionUser.id }</td>
														<td><fmt:formatDate value="${qna.regDate }"/></td>
													</tr>
													<c:choose>
														<c:when test="${user.id eq qna.questionUser.id && user.admin ne true }">
															<tr class="answer-form">
																<td style='text-align: left;' colspan='6'>
																<div class='row'>
																	<div class='col-12'>
																		<div class='box au' style='width: 90%; margin-left: 100px; float: left; background-color: #C0C0C0;'>
																			<div class="row question-form">
																			</div>
																			<div class="mr-5" align="right">
																				<button type="button" id="${qna.id }" class="modify-question btn btn-success mb-1 btn-sm mr-2"
																				data-toggle=modal data-target="#modal-modify-question-form">수정하기</button>
																				<button type="button" data-target=${qna.id } class="delete-question btn btn-danger mb-1 btn-sm">삭제하기</button>
																			</div>
																			<hr class='one' color='black' width='900px;' style='border: thin soild'>
																			<c:choose>
																				<c:when test="${qna.answerTitle eq null }">
																					<h4 class='ml-3' style="padding-left: 30px;"><span>A. </span>답변이 없습니다.</h4>
																				</c:when>
																				<c:otherwise>
																					<h4 class='ml-3' style="padding-left: 30px;"><span>A. </span>${qna.answerTitle }</h4>
																					<h6 class='mt-2 ml-5' style="padding-left: 50px;">${qna.answerContent }</h6>
																				</c:otherwise>
																			</c:choose>
																		</div>
																	</div>
																</div>
																</td>
															</tr>
														</c:when>
														<c:when test="${user.id ne qna.questionUser.id && user.admin ne true }">
															<tr class="answer-form">
																<td style='text-align: left;' colspan='6'>
																<div class='row'>
																	<div class='col-12'>
																		<div class='box au' style='width: 90%; margin-left: 100px; float: left; background-color: #C0C0C0;'>
																			<div class="row question-form">
																			</div>
																			<hr class='one' color='black' width='900px;' style='border: thin soild'>
																			<c:choose>
																				<c:when test="${qna.answerTitle eq null }">
																					<h4 class='ml-3' style="padding-left: 30px;"><span>A. </span>답변이 없습니다.</h4>
																				</c:when>
																				<c:otherwise>
																					<h4 class='ml-3' style="padding-left: 30px;"><span>A. </span>${qna.answerTitle }</h4>
																					<h6 class='mt-2 ml-5' style="padding-left: 50px;">${qna.answerContent }</h6>
																				</c:otherwise>
																			</c:choose>
																		</div>
																	</div>
																</div>
																</td>
															</tr>
														</c:when>
														<c:when test="${user.admin eq true }">
															<tr class="answer-form">
																<td style='text-align: left;' colspan='6'>
																<div class='row'>
																	<div class='col-12'>
																		<div class='box au' style='width: 90%; margin-left: 100px; float: left; background-color: #C0C0C0;'>
																			<div class="row question-form">
																			</div>
																			<hr class='one' color='black' width='900px;' style='border: thin soild'>
																			<c:choose>
																				<c:when test="${qna.answerTitle eq null }">
																					<h4 class='ml-3' style="padding-left: 30px;"><span>A. </span>답변이 없습니다.</h4>
																					<div class="mr-5" align="right">
																						<button type="button" id="${qna.id }" class="answer-add-admin btn btn-primary btn-sm mb-1 mr-2"
																						data-toggle=modal data-target="#modal-add-answer-form">답변달기</button>
																					</div>
																				</c:when>
																				<c:otherwise>
																					<h4 class='ml-3' style="padding-left: 30px;"><span>A. </span>${qna.answerTitle }</h4>
																					<h6 class='mt-2 ml-5' style="padding-left: 50px;">${qna.answerContent }</h6>
																					<div class="mr-5" align="right">
																						<button type="button" id="${qna.id }" class="answer-modify-admin btn btn-success mb-3 btn-sm mr-2"
																						data-toggle=modal data-target="#modal-modify-answer-form">답변수정하기</button>
																					</div>
																				</c:otherwise>
																			</c:choose>
																		</div>
																	</div>
																</div>
																</td>
															</tr>
														</c:when>
														<c:when test="${user eq null }">
															<tr class="answer-form">
																<td style='text-align: left;' colspan='6'>
																<div class='row'>
																	<div class='col-12'>
																		<div class='box au' style='width: 90%; margin-left: 100px; float: left; overflow: auto; background-color: #C0C0C0;'>
																			<div class="row question-form">
																			</div>
																			<hr class='one' color='black' width='900px;' style='border: thin soild'>
																			<c:choose>
																				<c:when test="${qna.answerTitle eq null }">
																					<h4 class='ml-3' style="padding-left: 30px;"><span>A. </span>답변이 없습니다.</h4>
																				</c:when>
																				<c:otherwise>
																					<h4 class='ml-3' style="padding-left: 30px;"><span>A. </span>${qna.answerTitle }</h4>
																					<h6 class='mt-2 ml-5' style="padding-left: 50px;">${qna.answerContent }</h6>
																				</c:otherwise>
																			</c:choose>
																		</div>
																	</div>
																</div>
																</td>
															</tr>
														</c:when>
													</c:choose>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</tbody>
								</table>
							</div>
						</div>
						<!-- 페이지 우측 하단 QnA등록버튼 관리자일경우 답변등록, 답변수정, 유저일경우 본인글만 수정,삭제가능 -->
						<!-- 관리자일 경우 문의하기버튼 삭제 -->
						<!-- 						
						<c:choose>
							<c:when test="${user ne null && user.admin ne true}">
								<div class="row">
									<div class="col-12" align="right">
										<div><button type="button" class="btn btn-primary" id="add-question"
										data-toggle="modal" data-target="#modal-add-question-form">문의하기</button></div>
									</div>
								</div>
							</c:when>
							<c:when test="${user eq null}">
								<div class="row">
									<div class="col-12" align="right">
										<label style="margin-right: 10px; font-size:small;">문의는 로그인 후 가능합니다.</label>
										<a href="/signin.do" class="btn btn-primary btn-sm" style="color: black;">로그인하러가기</a>
									</div>
								</div>
							</c:when>
						</c:choose>
						 -->
						<!-- 페이지 하단 검색창 -->
						<div class="row">
							<div class="col-12 d-flex justify-content-center">
								<input class="form-control mr-2" name="keyword" style="width: 27%" type="text" placeholder="검색어를 입력하세요" value="${searchKeyword }">
								<button class="btn btn-success" type="button" id="search-qna-list">검색</button>
							</div>
						</div>
						<!-- 페이지 하단 페이지네이션 -->
						<div class="row" id="qna-page-bar">
							<div class="col-12 mt-4 d-flex justify-content-center" id="paging-btn-group">
								<button class="btn btn-light" id="first-page" data-target=1>◀◀</button>
								<button class="btn btn-light" type="button" id="pre-page" data-target=${pageNo }>◀</button>
								<c:choose>
									<c:when test="${pageNo == 1 || pageNo == 2}">
										<c:forEach var="num" begin="${pagination.beginPage }" end="${pagination.endPage }">
											<button class="btn btn-light paging-num" data-target=${num }>${num }</button>
										</c:forEach>
									</c:when>
									<c:when test="${pageNo == totalPageCount -1}">
										<button type="button" class="btn btn-light paging-num" data-target=${pageNo-2 } >${pageNo-2 }</button>
										<button type="button" class="btn btn-light paging-num" data-target=${pageNo-1 } >${pageNo-1 }</button>
										<button type="button" class="btn btn-light paging-num" data-target=${pageNo } >${pageNo }</button>
										<button type="button" class="btn btn-light paging-num" data-target=${pageNo+1 } >${pageNo+1 }</button>
									</c:when>
									<c:when test="${pageNo >= totalPageCount}">
										<button type="button" class="btn btn-light paging-num" data-target=${pageNo-2 } >${pageNo-2 }</button>
										<button type="button" class="btn btn-light paging-num" data-target=${pageNo-1 } >${pageNo-1 }</button>
										<button type="button" class="btn btn-light paging-num" data-target=${pageNo } >${pageNo }</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="btn btn-light paging-num" data-target=${pageNo-2 }  >${pageNo-2 }</button>
										<button type="button" class="btn btn-light paging-num" data-target=${pageNo-1 } >${pageNo-1 }</button>
										<button type="button" class="btn btn-light paging-num" data-target=${pageNo } >${pageNo }</button>
										<button type="button" class="btn btn-light paging-num" data-target=${pageNo+1 } >${pageNo+1 }</button>
										<button type="button" class="btn btn-light paging-num" data-target=${pageNo+2 } >${pageNo+2 }</button>
									</c:otherwise>
								</c:choose>
								<button class="btn btn-light" style="color: black;" id="next-page" data-target=${pageNo }>▶</button>
								<button class="btn btn-light" style="color: black;" id="last-page" data-target=${totalPageCount }>▶▶</button>
							</div>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>	
	<!--  
	<div class="container-fluid" style="background-color: #f5f5f5; width: 100%;">
		<div class="row" style="height: 100px;">
			<div class="col-6">
				<div class="row">
					<div class="col-1"></div>
					<div class="col-1" style="margin-right: 10px;">
						<i class="fas fa-headphones fa-4x" style="margin-top: 15px;"></i>
					</div>
					<div class="col-3" style="margin-top: 25px;">
						<span><strong>고객센터 이용안내</strong></span><br/>
						<span>전화 : 000-000-0000</span>
					</div>
					<div class="col-" style="margin-top: 15px">
						<span><strong>이용시간</strong></span><br/>
						<span>평일 : 09:00 ~ 17:00(점심시간 13:00 ~ 14:00)</span><br/>
						<span>주말 : 09:00 ~ 13:00</span>
					</div>
				</div>
			</div>
			<div class="col-6">
				<div class="row">
					<div class="col-1" style="margin-right: 10px;">
						<i class="far fa-question-circle fa-4x" style="margin-top: 15px;" ></i>
					</div>
					<div class="col-10" style="margin-top: 15px;">
						<span style="margin-right: 10px;"><strong>1:1 문의</strong></span><button class="btn btn-success btn-sm">문의하기</button><br/>
						<strong>잠깐!</strong><span> 1:1 문의 전 자주하는 질문을 먼저 확인해주세요</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	-->
<%@ include file="../../common/footer.jsp" %>	
<%@ include file="qnaAddQuesModal.jsp" %>
<%@ include file="qnaModifyQuesModal.jsp" %>
<%@ include file="qnaAddAnswerModal.jsp" %>
<%@ include file="qnaModifyAnswerModal.jsp" %>
<div class="modal fade modal-center" tabindex="-1" role="dialog" id="detail-image-sizeUp">
	<div class="modal-dialog modal-fullsize modal-center" role="document">
		<div class="modal-content modal-fullsize">
		<!-- Modal body -->
		<div class="modal-body">
			<div class="row">
				<div class="col-12">
					<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators" id="image-sizeUp-indicators">
						</ol>
					<div class="carousel-inner" id="image-form">
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
</div>
</div>
<script type="text/javascript">
$(function() {
	
	// 현재 페이지에 해당하는 페이지번호에 표시
	$("#paging-btn-group .paging-num").each(function(index, element) {
		if ($("#pre-page").data('target') == $(element).data('target')) {
			$(element).css("background-color", "#C0C0C0")
			$(element).addClass("currentPage")
		}
	})
	
	// 분류별로 보기
	$("#qna-list-selectBox").on('change', function() {
		
		$("#pageNo").val('1');
		$("#qna-list-form").submit();
		
	})
	
	// 검색결과로 보기
	$("#search-qna-list").on('click', function() {
		
		$("#pageNo").val('1');
		$("#qna-list-form").submit();
	})
	
	// 갯수별로 보기
	$("#qna-list-numberToShow").on('change', function() {
		$("#pageNo").val('1');
		$("#qna-list-form").submit();
	})
	
	// 페이지 이동
	$(".paging-num").on('click', function() {
		var pageNo = $(this).data('target');
		
		$("#pageNo").val(pageNo);
		$("#qna-list-form").submit();
	})
	
	// 페이지번호가 1일 경우 이전페이지, 첫번째페이지 버튼 비활성화
	if ($("#pre-page").data('target') == 1) {
		$("#pre-page").attr("disabled", true);
		$("#first-page").attr("disabled", true);
	}
	
	// 마지막페이지일 경우 다음페이지, 맨뒤페이지 버튼 비활성화
	$("#paging-btn-group .paging-num").each(function(index, element) {
		if ($(element).hasClass('currentPage')) {
			if ($(element).data('target') == $("#last-page").data('target')) {
				$("#next-page").attr("disabled", true);
				$("#last-page").attr("disabled", true);
			}
		}
	})

	// 이전페이지 버튼
	$("#pre-page").on('click', function() {
		var nowPageNo = $(this).data('target')
		
		var pageNo = nowPageNo - 1;
		
		if (pageNo == 0) {
			pageNo = 1;
		}
		
		$("#pageNo").val(pageNo);
		$("#qna-list-form").submit();
	});
	
	// 다음페이지 버튼
	$("#next-page").on('click', function() {
		var nowPageNo = $(this).data('target')
		
		var pageNo = nowPageNo + 1;
		
		$("#pageNo").val(pageNo);
		$("#qna-list-form").submit();
		
	})
	
	// 마지막페이지 버튼
	$("#last-page").on('click', function() {
		var pageNo = $(this).data('target');
		
		$("#pageNo").val(pageNo);
		$("#notice-list-form").submit();
		
	});
	
	// 글이 존재하지 않으면 페이지바를 삭제
	if ($("#qna-empty").text() == '게시글이 존재하지 않습니다.') {
		$("#qna-page-bar").empty();
	}
	
	//현재 페이지의 URL주소를 가져온다.
	var URL = window.location.href;
	// URL에 qna가 포함되어있으면 배경색을 흰색으로 바꿔준다.
	if (URL.indexOf("qna") != -1) {
		$("#qna-list").css("background-color","white")
	}
	
	$(".answer-form").hide();
	
	$(".qna-title").on("click", function() {
		
		if ($(this).hasClass("lock")) {
			alert("비공개 문의내역은 작성자 본인만 확인하실 수 있습니다.")
		} else {
			if ($(this).hasClass("opened")) {
				$(this).parent().next().hide();
				$(this).removeClass("opened");
			} else {
				$(".answer-form").hide();
				$(this).parent().next().show();
				$(this).addClass("opened");
			}
		}
	})
	
	// qna 삭제
	$(".delete-question").on("click", function () {
		var qnaId = $(this).data("target")
		
		$.ajax({
			url: "deleteQuestion.do",
			data : {id: qnaId},
			type : "GET",
			success: function () {
				alert("삭제가 완료되었습니다.")
				location.reload();
			}
		})
	})
	
	
	$(".qna-title").on("click", function () {
 		var qnaId = $(this).attr("id")
 		
 		var addElement = "";
 		
		$currentQuestionForm = ($(this).parent().next().find(".question-form"))
		
		$.ajax({
			url: "getImages.do",
			data: {id: qnaId},
			type: "GET",
			success: function (data) {
				console.log(data)
				if (!data.images.length) {
					
					$currentQuestionForm.empty();
					
					addElement += '<div class="col-12 ml-5">'
					addElement += '<h4 style="word-break:break-all; width: 600px;" class="mt-3"><span>Q. </span>'+data.qna.questionTitle+'</h4>'
					addElement += '<h6 style="word-break:break-all; width: 600px;" class="mt-2">'+data.qna.questionContent+'</h6>'
					addElement += '</div>'
					
					$currentQuestionForm.append(addElement)
					
				} else if (data.images.length == 1) {
					
					$currentQuestionForm.empty();
					
					addElement += '<div class="col-3 mt-3 question-image-form" style="padding-right: 0; padding-left: 30px;" id="question-image-form">'
					addElement += '<img width="210px" height="50px" src="/resources/sample-images/'+data.images[0].imagePath+'" class="img-thumbnail question-image">'
					addElement += '<button class="btn btn-primary btn-sm mt-1 question-image-btn" data-toggle=modal data-target="#detail-image-sizeUp" style="margin-left: 68px;">크게보기</button>'
					addElement += '</div>'
					addElement += '<div class="col-9">'
					addElement += '<h4 style="word-break:break-all; width: 600px;" class="mt-3"><span>Q. </span>'+data.qna.questionTitle+'</h4>'
					addElement += '<h6 style="word-break:break-all; width: 600px;" class="mt-2">'+data.qna.questionContent+'</h6>'
					addElement += '</div>'
					
					$currentQuestionForm.append(addElement)
					
				} else if (data.images.length == 2) {
					
					$currentQuestionForm.empty();
					
					addElement += '<div class="col-3 mt-3 question-image-form" style="padding-right: 0; padding-left: 30px;" id="question-image-form">'
					addElement += '<img width="100px" height="50px" src="/resources/sample-images/'+data.images[0].imagePath+'" class="img-thumbnail question-image">'
					addElement += '<img width="100px" height="50px" src="/resources/sample-images/'+data.images[1].imagePath+'" class="img-thumbnail question-image">'
					addElement += '<button class="btn btn-primary btn-sm mt-1 question-image-btn" data-toggle=modal data-target="#detail-image-sizeUp" style="margin-left: 68px;">크게보기</button>'
					addElement += '</div>'
					addElement += '<div class="col-9">'
					addElement += '<h4 style="word-break:break-all; width: 600px;" class="mt-3"><span>Q. </span>'+data.qna.questionTitle+'</h4>'
					addElement += '<h6 style="word-break:break-all; width: 600px;" class="mt-2">'+data.qna.questionContent+'</h6>'
					addElement += '</div>'
					
					$currentQuestionForm.append(addElement)
					
				} else if (data.images.length == 3) {
					
					$currentQuestionForm.empty();
					
					addElement += '<div class="col-3 mt-3 question-image-form" style="padding-right: 0; padding-left: 30px;" id="question-image-form">'
					addElement += '<img width="70px" height="50px" src="/resources/sample-images/'+data.images[0].imagePath+'" class="img-thumbnail question-image">'
					addElement += '<img width="70px" height="50px" src="/resources/sample-images/'+data.images[1].imagePath+'" class="img-thumbnail question-image">'
					addElement += '<img width="70px" height="50px" src="/resources/sample-images/'+data.images[2].imagePath+'" class="img-thumbnail question-image">'
					addElement += '<button class="btn btn-primary btn-sm mt-1 question-image-btn" data-toggle=modal data-target="#detail-image-sizeUp" style="margin-left: 68px;">크게보기</button>'
					addElement += '</div>'
					addElement += '<div class="col-9">'
					addElement += '<h4 style="word-break:break-all; width: 600px;" class="mt-3"><span>Q. </span>'+data.qna.questionTitle+'</h4>'
					addElement += '<h6 style="word-break:break-all; width: 600px;" class="mt-2">'+data.qna.questionContent+'</h6>'
					addElement += '</div>'
					
					$currentQuestionForm.append(addElement)
					
				}
			}
		})
	})
	
	$(".question-form").on("click", ".question-image-btn", function (e) {
		e.preventDefault();
		
		var imageArray = [];
		var addElement1 = "";
		var addElement2 = "";
		
		$("#image-sizeUp-indicators").empty();
		$("#detail-image-sizeUp #image-form").empty();
		
		$(this).prevAll().each(function (index, element) {
			
			var imageName = $(element).attr('src').substring(25)
			imageArray.push(imageName)
		})
		
		if (imageArray.length == 1) {
			
			addElement2 += "<div class='carousel-item active'>"
			addElement2 += "<img class='d-block w-100' src='../../resources/sample-images/"+imageArray[0]+"'>"
			addElement2 += "</div>"
				
			$("#image-sizeUp-indicators").append(addElement1)
			$("#detail-image-sizeUp #image-form").append(addElement2)
			
		} else if (imageArray.length == 2) {
			
			addElement1 += "<li data-target='#carouselExampleIndicators' data-slide-to='0' class='active'></li>"
			addElement1 += "<li data-target='#carouselExampleIndicators' data-slide-to='1'></li>"
			
			addElement2 += "<div class='carousel-item active'>"
			addElement2 += "<img class='d-block w-100' src='../../resources/sample-images/"+imageArray[0]+"'>"
			addElement2 += "</div>"
			addElement2 += "<div class='carousel-item'>"
			addElement2 += "<img class='d-block w-100' src='../../resources/sample-images/"+imageArray[1]+"'>"
			addElement2 += "</div>"
			
			$("#image-sizeUp-indicators").append(addElement1)
			$("#detail-image-sizeUp #image-form").append(addElement2)
			
		} else if (imageArray.length == 3) {
			
			addElement1 += "<li data-target='#carouselExampleIndicators' data-slide-to='0' class='active'></li>"
			addElement1 += "<li data-target='#carouselExampleIndicators' data-slide-to='1'></li>"
			addElement1 += "<li data-target='#carouselExampleIndicators' data-slide-to='2'></li>"
			
			addElement2 += "<div class='carousel-item active'>"
			addElement2 += "<img class='d-block w-100' src='../../resources/sample-images/"+imageArray[0]+"'>"
			addElement2 += "</div>"
			addElement2 += "<div class='carousel-item'>"
			addElement2 += "<img class='d-block w-100' src='../../resources/sample-images/"+imageArray[1]+"'>"
			addElement2 += "</div>"
			addElement2 += "<div class='carousel-item'>"
			addElement2 += "<img class='d-block w-100' src='../../resources/sample-images/"+imageArray[2]+"'>"
			addElement2 += "</div>"
				
			$("#image-sizeUp-indicators").append(addElement1)
			$("#detail-image-sizeUp #image-form").append(addElement2)
			
		} 
	})
})
</script>
</body>
</html>