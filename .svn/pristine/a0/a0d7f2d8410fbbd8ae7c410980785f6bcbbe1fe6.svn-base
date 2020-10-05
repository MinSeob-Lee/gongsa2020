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
							<div class="col" id="qna-list"><a href="/qna/list.do">QnA</a></div>
							<div class="col">자주하는질문</div>
							<div class="col">나의문의내역</div>
						</div>
					</div>
				</div>
				<div class="row mt-4 mb-3">
					<div class="col-6">
						<div class="dropdown">
							<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown">분 류</button>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">분류</a>
								<a class="dropdown-item" href="#">예매/취소</a>
								<a class="dropdown-item" href="#">메이트</a>
								<a class="dropdown-item" href="#">이벤트</a>
								<a class="dropdown-item" href="#">기타</a>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<table class="table table-bordered table-hover" id="qna-main-table">
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
									<th style="text-align: left !important;">제 목</th>
									<th>작성자</th>
									<th>조회수</th>
									<th>등록일</th>
								</tr>
							</thead>
							<tbody id="qna-main-tbody">
								<tr id="qna-1">
									<td>1</td>
									<td>예매/취소</td>
									<td style="text-align: left !important;" class="title" id="qna-title">예매는 어떻게 하나요?
									<span><i class="fas fa-lock fa-1x"></i></span></td>
									<td>관리자</td>
									<td>1</td>
									<td>2020.08.08</td>
								</tr>
								<tr>
									<td>2</td>
									<td>이벤트</td>
									<td style="text-align: left !important; ">이벤트가 적용되지 않습니다.
									<span><i class="fas fa-unlock fa-1x"></i></span></td>
									<td>관리자</td>
									<td>1</td>
									<td>2020.08.08</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- 페이지 우측 하단 QnA등록버튼 -->
				<div class="row">
					<div class="col-12" align="right">
						<div><button type="button" class="btn btn-primary" id="add-question"
						data-toggle="modal" data-target="#modal-add-question-form">문의하기</button></div>
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
<!-- The Modal -->
	<form action="add.do" method="post">
		<div class="modal fade" id="modal-add-question-form" data-backdrop="static" >
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
				<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">문의하기</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
						<!-- Modal body -->
					<div class="modal-body">
						<div class="row">
							<div class="col-12 mb-1">
								<strong><span>문의유형</span></strong>
							</div>
						</div>
						<div class="row">
							<div class="col-12 mb-2">
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input" id="customRadio" name="category" value="서비스소식">
									<label class="custom-control-label" for="customRadio">예매/취소</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input" id="customRadio2" name="category" value="서비스안내">
									<label class="custom-control-label" for="customRadio2">메이트</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input" id="customRadio3" name="category" value="서비스오픈">
									<label class="custom-control-label" for="customRadio3">이벤트</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input" id="customRadio4" name="category" value="서비스종료">
									<label class="custom-control-label" for="customRadio4">기타</label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<strong><label>제목</label></strong>
									<input type="text" name="title" class="form-control" placeholder="제목을 입력해주세요">
								</div>
								<div class="form-group">
									<strong><label>내용</label></strong>
									<textarea rows="5" cols="" name="content" class="form-control" placeholder="내용을 입력해주세요"></textarea>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input" id="customRadio5" name="opened" value="true">
									<label class="custom-control-label" for="customRadio5">공개</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input" id="customRadio6" name="opened" value="false">
									<label class="custom-control-label" for="customRadio6">비공개</label>
								</div>
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-12">
								<div class="row" id="selection-image">
									<div class="col-2">
										<button type="button" class="btn btn-light" data-toggle="modal" data-target="#modal-image-add-form" 
										id="search-photo"><i class="far fa-plus-square fa-4x"></i></button>
									</div>
								</div>
								<div class="row">
									<div class="col-2" style="padding-left: 25px;">
										<label>사진첨부</label>
									</div>
								</div>
							</div>
						</div>
					</div>
						<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-dark btn-lg" id="">등록</button>
						<button type="button" class="btn btn-light btn-lg" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	<div class="modal fade" id="modal-image-add-form" data-backdrop="static">
		<div class="modal-dialog modal-content modal-xl modal-dialog-scrollable" >
			<div class="modal-content ">
				<div class="modal-header">
					<h3 class="modal-title">사진검색하기</h3>
					<button type="button" class="close"  data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-header">
					<div class="from-group">
						<input type="text" class="form-control" placeholder="검색어를 입력하세요">
					</div>
				</div>
				<div class="modal-body">
					<div class="row">
					<c:forEach begin="1" end="15" var="item">
						<div class="col-4 mb-5">
							<img src="../resources/sample-images/image1.jpg" id="image${item }" style="height: 200px;" class="img-thumbnail scale">
						</div>
					</c:forEach>						
					</div>
				</div>
				<div class="modal-footer"></div>
				<div class="row">
					<div class="col-4"></div>
					<div class="col-2">
						<button type="button" class="btn btn-dark btn-lg" data-dismiss="modal" id="btn-confirm">확인</button>
					</div>
					<div class="col-1"></div>
					<div class="col-2">
						<button type="button" class="btn btn-light btn-lg" data-dismiss="modal">닫기</button>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
$(function() {
	
	$("#answer-form").hide();
	
//현재 페이지의 URL주소를 가져온다.
	var URL = window.location.href;
	// URL에 qna가 포함되어있으면 배경색을 흰색으로 바꿔준다.
	if (URL.indexOf("qna") != -1) {
		$("#qna-list").css("background-color","white")
	}
	
	/*
	$(".title").click(function() {
		// addAnswer += "<img style='float: left;' class='thumbnail-img ml-3 mr-3' width='100px' height='100px;' src='../resources/sample-images/image1.jpg'>";
		// addAnswer += "<img style='float: left;' class='thumbnail-img ml-3 mr-3' width='100px' height='100px;' src='../resources/sample-images/image1.jpg'>";		
		// addAnswer += "<h6 class='mt-2'><span id='question-content'>답변이 없습니다.</span></h6>";
	});
	*/
	
	$("#qna-main-table").on("click","#qna-title", function() {
		
		// $("#qna-main-table #answer-form").empty();
		
		var addAnswer = "";
		addAnswer += "<tr id='answer-form'>";
		addAnswer += "<td colspan='6' id='answer-form'><div class='row'><div class='col-12'><div class='box au' style='width: 90%; height: 120px; margin-left: 100px; float: left; overflow: auto; background-color: #C0C0C0;'>";
		addAnswer += "<h4 class='mt-3 ml-3'><span>Q. </span><span id='question-title'> 예매는 어떻게 하나요?</span></h4>";
		addAnswer += "<h6 class='mt-2 ml-5'><span id='question-content'>예매는 어떻게 하나요?</span></h6>";
		addAnswer += "<hr class='one' color='black' width='900px;' style='border: thin soild'>"
		addAnswer += "</div></div></div>";
		addAnswer += "<div class='box au' style='width: 90%; height: 80px; margin-left: 100px; float: left; overflow: auto; background-color: #C0C0C0;'>";
		addAnswer += "<h4 class='ml-3'><span>A. </span><span id='question-title'> 답변이 없습니다.</span></h4>";
		addAnswer += "</div></td>";
		addAnswer += "</tr>";
		
		if ($("#answer-form").hasClass("display")) {
			$("#answer-form").css("display", "none");
			$("#answer-form").removeClass("display");
		} else {
			$("#qna-1").after(addAnswer);
			$("#answer-form").addClass("display");
			$("#answer-form").css("display","");
		}
	})
})
</script>
</body>
</html>