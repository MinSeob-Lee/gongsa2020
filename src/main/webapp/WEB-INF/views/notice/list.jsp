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



a {
	text-decoration: none !important;
	color: black;
}
a:hover {
	font-weight: bold;
	color: black;
}
</style>
</head>
<body>
<div class="header">
<%@ include file="../common/navi.jsp" %>
</div>
<div class="body" style="margin-top: 100px;">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="row">
					<div class="col-12">
						<div class="row category" id="category" align="center">
							<div class="col" id="notice-list"><a href="/notice/list.do">공지사항</a></div>
							<div class="col" id="QnA-list"><a href="/qna/list.do">QnA</a></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<form id="notice-list-form" class="form-group" method="get" action="/notice/list.do">
						<input type="hidden" name="pageNo" id="pageNo">
						<div class="row mt-4 mb-3">
							<div class="col-6">
								<div class="txc-textbox">
								<!-- Single button -->
									<div id="notice-category-select" class="btn-group">
										<select class="form-control" id="notice-list-selectBox" style="width: 130px;" name="status">
											<option value="전체" ${nowStatus eq '전체' ? 'selected' : '' }> 전체보기</option>
											<option value="0" ${nowStatus eq '0' ? 'selected' : '' }> 서비스소식</option>
											<option value="1" ${nowStatus eq '1' ? 'selected' : '' }> 서비스오픈</option>
											<option value="3" ${nowStatus eq '3' ? 'selected' : '' }> 서비스안내</option>
											<option value="2" ${nowStatus eq '2' ? 'selected' : '' }> 서비스종료</option>
											<option value="4" ${nowStatus eq '4' ? 'selected' : '' }> 기타</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-6">
								<div class="row">
									<div class="col-12" align="right">
										<select class="form-control" id="notice-list-numberToShow" style="width: 140px;" name="rows">
											<option value="10" ${rows eq '10' ? 'selected' : '' }> 10개씩 보기</option>
											<option value="20" ${rows eq '20' ? 'selected' : '' }> 20개씩 보기</option>
											<option value="50" ${rows eq '50' ? 'selected' : '' }> 50개씩 보기</option>
											<option value="100" ${rows eq '100' ? 'selected' : '' }> 100개씩 보기</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-12">
								<table class="table table-bordered table-hover" style="text-align: center;">
									<colgroup>
										<c:if test="${!user.admin }">
											<col width="10%">
											<col width="15%">
											<col width="45%">
											<col width="10%">
											<col width="10%">
											<col width="10%">
										</c:if>
										<c:if test="${user.admin }">
											<col width="8%">
											<col width="10%">
											<col width="40%">
											<col width="8%">
											<col width="8%">
											<col width="9%">
											<col width="8%">
											<col width="8%">
										</c:if>
									</colgroup>
									<thead class="table-dark">
										<tr style="background-color: black !important; color: white !important;">
											<c:choose>
												<c:when test="${!user.admin }">
													<th>No.</th>
													<th>분 류</th>
													<th style="text-align: left !important;"><span style="padding-left: 160px;">제</span><span style="padding-left: 130px;">목</span></th>
													<th>작 성 자</th>
													<th>조 회 수</th>
													<th>등 록 일</th>
												</c:when>
												<c:when test="${user.admin }">
													<c:choose>
														<c:when test="${empty noticeList }">
															<th>No.</th>
															<th>분 류</th>
															<th style="text-align: left !important;"><span style="padding-left: 160px;">제</span><span style="padding-left: 130px;">목</span></th>
															<th>작 성 자</th>
															<th>조 회 수</th>
															<th>등 록 일</th>
														</c:when>
														<c:otherwise>
															<th>No.</th>
															<th>분 류</th>
															<th style="text-align: left !important;"><span style="padding-left: 160px;">제</span><span style="padding-left: 130px;">목</span></th>
															<th>작 성 자</th>
															<th>조 회 수</th>
															<th>등 록 일</th>
															<th></th>
															<th></th>
														</c:otherwise>
													</c:choose>
												</c:when>
											</c:choose>										
										</tr>
									</thead>
									<tbody>
									<c:if test="${!user.admin }">
										<c:choose>
											<c:when test="${empty noticeList }">
												<tr>
													<td colspan="6" class="text-center" id="notice-empty">게시글이 존재하지 않습니다.</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach var="notice" items="${noticeList }">
													<tr>
														<td>${notice.id }</td>
														<td>
															<c:choose>
																<c:when test="${notice.category eq '0' }">
																	서비스소식
																</c:when>
																<c:when test="${notice.category eq '1' }">
																	서비스오픈
																</c:when>
																<c:when test="${notice.category eq '2' }">
																	서비스종료
																</c:when>
																<c:when test="${notice.category eq '3' }">
																	서비스안내
																</c:when>
																<c:when test="${notice.category eq '4' }">
																	기 타
																</c:when>
															</c:choose>
														</td>
														<td style="text-align: left; !important">
														<c:choose>
															<c:when test="${notice.badge eq 0 }">
																<a href="/notice/detail.do?no=${notice.id }">
																<c:out value="${notice.title }"></c:out></a>
															</c:when>
															<c:when test="${notice.badge eq 1 }">
																<span class="badge badge-danger">단독판매</span><a href="/notice/detail.do?no=${notice.id }">
																<c:out value="${notice.title }"></c:out></a>
															</c:when>
															<c:when test="${notice.badge eq 2 }">
																<span class="badge badge-primary">새소식</span><a href="/notice/detail.do?no=${notice.id }">
																<c:out value="${notice.title }"></c:out></a>
															</c:when>
														</c:choose>
														</td>
														<td>${notice.admin.id }</td>
														<td>${notice.hits }</td>
														<td><fmt:formatDate value="${notice.regDate }" pattern="yyyy-M-dd"/></td>
													</tr>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</c:if>
									<c:if test="${user.admin }">
										<c:choose>
											<c:when test="${empty noticeList }">
												<tr>
													<td colspan="6" class="text-center" id="notice-empty">게시글이 존재하지 않습니다.</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach var="notice" items="${noticeList }">
													<tr>
														<td>${notice.id }</td>
														<td>
															<c:choose>
																<c:when test="${notice.category eq '0' }">
																	서비스소식
																</c:when>
																<c:when test="${notice.category eq '1' }">
																	서비스오픈
																</c:when>
																<c:when test="${notice.category eq '2' }">
																	서비스종료
																</c:when>
																<c:when test="${notice.category eq '3' }">
																	서비스안내
																</c:when>
																<c:when test="${notice.category eq '4' }">
																	기 타
																</c:when>
															</c:choose>
														</td>
														<td style="text-align: left; !important">
														<c:choose>
															<c:when test="${notice.badge eq 0 }">
																<a href="/notice/detail.do?no=${notice.id }">
																<c:out value="${notice.title }"></c:out></a>
															</c:when>
															<c:when test="${notice.badge eq 1 }">
																<span class="badge badge-danger">단독판매</span><a href="/notice/detail.do?no=${notice.id }">
																<c:out value="${notice.title }"></c:out></a>
															</c:when>
															<c:when test="${notice.badge eq 2 }">
																<span class="badge badge-primary">새소식</span><a href="/notice/detail.do?no=${notice.id }">
																<c:out value="${notice.title }"></c:out></a>
															</c:when>
														</c:choose>
														</td>
														<td>${notice.admin.id }</td>
														<td>${notice.hits }</td>
														<td><fmt:formatDate value="${notice.regDate }" pattern="yyyy-M-dd"/></td>
														<td><a type="button" class="btn btn-success btn-sm" href="/notice/modify.do?no=${notice.id }">수정</a></td>
														<td><button type="button" class="btn btn-danger btn-sm notice-delete" data-target="${notice.id }" id="notice-delete">삭제</button></td>
													</tr>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</c:if>
									</tbody>
								</table>
							</div>
						</div>
						<c:if test="${user.admin }">
							<div class="row">
								<div class="col-12" align="right">
									<div><a href="/notice/add.do" class="btn btn-primary">공지등록</a></div>
								</div>
							</div>
						</c:if>
						<!-- 페이지 하단 검색창 -->
						<div class="row" id="notice-search-bar">
							<div class="col-12 d-flex justify-content-center">
								<input class="form-control mr-2" name="keyword" style="width: 27%;" type="text" placeholder="검색어를 입력하세요" value="${searchKeyword }">
								<button class="btn btn-success" type="button" id="search-notice-list">검색</button>
							</div>
						</div>
						<!-- 페이지 하단 페이지네이션 -->
						<div class="row" id="notice-page-bar">
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
									<c:when test="${pageNo == totalPageCount}">
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
						<span>평일 : 09:00 ~ 17:00 (점심시간 13:00 ~ 14:00)</span><br/>
						<span>주말 : 09:00 ~ 13:00</span>
					</div>
				</div>
			</div>
			<div class="col-6">
				<div class="row">
					<div class="col-1" style="margin-right: 10px;">
						<i class="far fa-question-circle fa-4x" style="margin-top: 15px;"></i>
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
 <%@ include file="../common/footer.jsp" %>	
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
	$("#notice-list-selectBox").on('change', function() {
		
		$("#pageNo").val('1');
		$("#notice-list-form").submit();
		
	})
	
	// 검색결과로 보기
	$("#search-notice-list").on('click', function() {
		
		$("#pageNo").val('1');
		$("#notice-list-form").submit();
	})
	
	// 갯수별로 보기
	$("#notice-list-numberToShow").on('change', function() {
		$("#pageNo").val('1');
		$("#notice-list-form").submit();
	})
	
	// 페이지 이동
	$(".paging-num").on('click', function() {
		var pageNo = $(this).data('target');
		
		$("#pageNo").val(pageNo);
		$("#notice-list-form").submit();
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
		$("#notice-list-form").submit();
	});
	
	// 다음페이지 버튼
	$("#next-page").on('click', function() {
		var nowPageNo = $(this).data('target')
		
		var pageNo = nowPageNo + 1;
		
		$("#pageNo").val(pageNo);
		$("#notice-list-form").submit();
		
	})
	
	// 마지막페이지 버튼
	$("#last-page").on('click', function() {
		var pageNo = $(this).data('target');
		
		$("#pageNo").val(pageNo);
		$("#notice-list-form").submit();
		
	});
	
	// 글이 존재하지 않으면 페이지바를 삭제
	if ($("#notice-empty").text() == '게시글이 존재하지 않습니다.') {
		$("#notice-page-bar").empty();
	}
	
	//현재 페이지의 URL주소를 가져온다.
	var URL = window.location.href;
	// URL에 notice가 포함되어있으면 배경색을 흰색으로 바꿔준다.
	if (URL.indexOf("notice") != -1) {
		$("#notice-list").css("background-color","white")
	}
	
	// 공지사항 삭제
	$(".notice-delete").on('click', function (event) {
		
		event.preventDefault();
		
		var currentNoticeId = $(this).data('target');
		
		$.ajax({
			type: "GET",
			url:"delete.do",
			datatype:"text",
			data: {id: currentNoticeId},
			success: function () {
				alert("삭제가 완료되었습니다.");
				location.reload();
			}
		})
	})
})
</script>
</body>
</html>