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
							<div class="col" id="notice-list"><a href="/notice/list.do?pageNo=1&rows=20&status=blank&keyword=blank">공지사항</a></div>
							<div class="col" id="QnA-list"><a href="/qna/list.do">QnA</a></div>
							<div class="col">자주하는질문</div>
							<div class="col">나의문의내역</div>
						</div>
					</div>
				</div>
				<div class="row mt-4 mb-3">
					<div class="col-6">
					<div class="txc-textbox">
					<!-- Single button -->
						<div id="example" class="btn-group">
							<button type="button" class="btn btn-default btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							 전체보기 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" id="category-new" href="javascript:void(0)">서비스 소식</a></li>
								<li><a class="dropdown-item" id="category-open" href="javascript:void(0)">서비스 오픈</a></li>
								<li><a class="dropdown-item" id="category-end" href="javascript:void(0)">서비스 종료</a></li>
								<li><a class="dropdown-item" id="category-info" href="javascript:void(0)">서비스 안내</a></li>
								<li><a class="dropdown-item" id="category-other" href="javascript:void(0)">기타</a></li>
								<li><a class="dropdown-item" id="category-all" href="javascript:void(0)">전체보기</a></li>
							</ul>
					</div>
					</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<table class="table table-bordered table-hover" style="text-align: center;">
							<colgroup>
								<col width="10%">
								<col width="15%">
								<col width="45%">
								<col width="10%">
								<col width="10%">
								<col width="10%">
							</colgroup>
							<thead class="table-dark">
								<tr style="background-color: black !important; color: white !important;">
									<th>No.</th>
									<th>분 류</th>
									<th style="text-align: left !important;"><span style="padding-left: 160px;">제</span><span style="padding-left: 130px;">목</span></th>
									<th>작 성 자</th>
									<th>조 회 수</th>
									<th>등 록 일</th>
								</tr>
							</thead>
							<tbody>
							<c:choose>
								<c:when test="${empty noticeList }">
									<tr>
										<td colspan="6" class="text-center">게시글이 존재하지 않습니다.</td>
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
											<c:choose>
												<c:when test="${empty notice.badge }">
													<td style="text-align: left; !important"><a href="/notice/detail.do?no=${notice.id }">
													<c:out value="${notice.title }"></c:out></a></td>
												</c:when>
												<c:when test="${notice.badge eq 0 }">
													<td style="text-align: left; !important">
														<span class="badge badge-danger">단독판매</span><a href="/notice/detail.do?no=${notice.id }">
														<c:out value="${notice.title }"></c:out></a>
													</td>	
												</c:when>
												<c:when test="${notice.badge eq 1 }">
													<td style="text-align: left; !important">
														<span class="badge badge-primary">새소식</span><a href="/notice/detail.do?no=${notice.id }">
														<c:out value="${notice.title }"></c:out></a>
													</td>	
												</c:when>
											</c:choose>
											<td>${notice.admin.id }</td>
											<td>조회수</td>
											<td><fmt:formatDate value="${notice.regDate }" pattern="yyyy-M-dd"/></td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
							</tbody>
						</table>
					</div>
				</div>
				<!-- 관리자로 접속했을 경우만 표시 -->
				<div class="row">
					<div class="col-12" align="right">
						<div><a href="/notice/add.do" class="btn btn-primary">공지등록</a></div>
					</div>
				</div>
				<!-- 페이지 하단 검색창 -->
				<div class="row">
					<div class="col-12 d-flex justify-content-center">
						<form class="form-inline" action="#">
							<input class="form-control mr-2" type="text" placeholder="검색어를 입력하세요">
							<button class="btn btn-success" type="button">검색</button>
						</form>
					</div>
				</div>
				<!-- 페이지 하단 페이지네이션 -->
				<div class="row">
					<div class="col-12 mt-5 d-flex justify-content-center">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#">◀◀</a></li>
							<li class="page-item"><a class="page-link" href="#">◀</a></li>
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<li class="page-item"><a class="page-link" href="#">▶</a></li>
							<li class="page-item"><a class="page-link" href="#">▶▶</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
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
</div>
<script type="text/javascript">
$(function() {
	
	$('#example .dropdown-menu li > a').bind('click',function (e) {
	    var html = $(this).html();
	    $('#example button.dropdown-toggle').html(html +' <span class="caret"></span>');
	});
	
	//현재 페이지의 URL주소를 가져온다.
	var URL = window.location.href;
	// URL에 notice가 포함되어있으면 배경색을 흰색으로 바꿔준다.
	if (URL.indexOf("notice") != -1) {
		$("#notice-list").css("background-color","white")
	}
})
</script>
</body>
</html>