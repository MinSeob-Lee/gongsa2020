<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
<script src="//cdn.ckeditor.com/4.14.1/basic/ckeditor.js"></script>
<style type="text/css">
#notice-category {
	background-color: #C0C0C0;
    transition: all 0.5s;
    transition-timing-function: ease;
}
#notice-category .col:hover{
    transition: all 0.5s;
    transition-timing-function:ease;
    background-color: white;
    cursor: pointer;
}
#notice-category .col {
	font-size: 25px;
	padding-top: 15px;
	padding-bottom: 15px;
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
				<div class="row mb-3">
					<div class="col-12">
						<strong><span style="font-size: 25px;">고객지원센터</span></strong>
						<p id="modal-open-checked1" hidden="" title="${openModal }"></p>
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-12">
						<div class="row category" id="notice-category" align="center">
							<div class="col" id="notice-list"><a href="/notice/list.do?pageNo=1&rows=20&status=blank&keyword=blank">공지사항</a></div>
							<div class="col" id="QnA-list"><a href="/qna/list.do">QnA</a></div>
							<div class="col" id="">자주하는질문</div>
							<div class="col" id="">나의문의내역</div>
						</div>
					</div>
				</div>
				<form action="add.do" method="post" enctype="multipart/form-data">
					<div class="row">
						<div class="col-12 mb-1">
							<strong><span>분류를 선택해주세요</span></strong>(필수)
						</div>
					</div>
					<div class="row">
						<div class="col-12 mb-2">
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="customRadio" name="category" value="서비스소식">
								<label class="custom-control-label" for="customRadio">서비스소식</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="customRadio2" name="category" value="서비스안내">
								<label class="custom-control-label" for="customRadio2">서비스안내</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="customRadio3" name="category" value="서비스오픈">
								<label class="custom-control-label" for="customRadio3">서비스오픈</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="customRadio4" name="category" value="서비스종료">
								<label class="custom-control-label" for="customRadio4">서비스종료</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="customRadio5" name="category" value="기타">
								<label class="custom-control-label" for="customRadio5">기타</label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 mb-1">
							<strong><span>뱃지를 선택해주세요</span></strong>(선택)
						</div>
					</div>
					<div class="row">
						<div class="col-12 mb-2">
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="customRadio6" name="badge" value=1>
								<label class="custom-control-label" for="customRadio6">새소식</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="customRadio7" name="badge" value=0>
								<label class="custom-control-label" for="customRadio7">단독판매</label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-3 form-group">
							<strong><label>제목</label></strong>(필수)
							<input class="form-control" type="text" name="title" />
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="row">
								<div class="col-12">
									<strong><label>내용</label></strong>(필수)
								</div>
							</div>
							<div class="row">
								<div class="col-10 form-group">
									<textarea class="form-control" id="notice-textarea" name="content" rows="40" cols=""></textarea>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-3">
							<div class="row">
								<div class="col-12" style="margin-left: 14px;">
									<label>이미지 첨부</label><br>
								</div>
							</div>
							<div class="row" id="selection-image">
								<div class="col-12"> <!-- <a href="/notice/displayImages.do"></a> -->
									<button type="button" class="btn btn-light" data-toggle="modal" data-target="#modal-image-add-form" 
									id="search-photo"><i class="far fa-plus-square fa-6x"></i></button>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-8">
						</div>
						<div class="col-1">
							<div class="row">
								<div class="col-12" align="center">
									<a href="/notice/list.do"><i class="fas fa-stream fa-2x" style="color: black;"></i></a>
								</div>
							</div>
							<div class="row">
								<div class="col-12" align="center">
									<span><strong>목록</strong></span>
								</div>
							</div>
						</div>
						<div class="col-1">
							<button type="submit" class="btn btn-primary">등록</button>
						</div>
						<div class="col-1">
							<a href="/notice/list.do" class="btn btn-danger">취소</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
<%@ include file="noticeSearchModal.jsp" %>
</div>
<script type="text/javascript">
$(function() {
	
	CKEDITOR.replace('notice-textarea');
	
	//현재 페이지의 URL주소를 가져온다.
	var URL = window.location.href;
	// URL에 notice가 포함되어있으면 배경색을 흰색으로 바꿔준다.
	if (URL.indexOf("notice") != -1) {
		$("#notice-list").css("background-color","white")
	}
	
	// 모달창을 생성할 때 선택된 이미지가 없게한다.
	$("#search-photo").on("click", function() {
		$(".modal-body img").css("background-color", "");
	})
	
	// 모달창에서 공지사항에 추가 할 이미지를 선택할 수 있다.
	$(".modal-body img").on("click", function() {
		$(".modal-body img").css("background-color", "white");
		$(this).css("background-color", "black");
		
		$(".modal-body img").removeClass("selected-image")
		$(this).addClass("selected-image")
	});
	
	
	$("#btn-confirm").on("click", function() {
		// 선택한 이미지의 id값을 가져올 수 있다.
		var selectImgId = $(".modal-body .selected-image").attr("id");
		// 선택한 이미지의 경로를 가져올 수 있다.
		var selectImgSrc = $(".modal-body .selected-image").attr("src");
		
		// 모달창의 확인버튼을 클릭했을때 사진을 선택하지않은 경우 사진을 선택하게한다.
		var count = 0;
		$(".modal-body img").each(function() {
			if ($(this).hasClass("selected-image")) {
				count++;
			}
		})
		if (!count) {
			alert("사진을 선택해주세요");
			return false;
		} else {
			// 기존에 있던 이미지추가버튼을 제거하고 선택된 이미지를 넣는다.
			$("#selection-image").empty();
			// 이미지추가버튼을 제거하고 선택된 이미지를 넣는다.
			var addElement = "";
			addElement += "<div class='col-12'>";
			addElement += "<img src='"+selectImgSrc+"' name='image' style='height:200px;' class='img-thumbnail'>"
			addElement += "<input type='hidden' name='imagePath' value='"+selectImgSrc+"'>"
			addElement += "</div>";
			$("#selection-image").append(addElement);
		}
	})
	
	var modalOpenCheck = $("#modal-open-checked1").attr("title");
	
	if (modalOpenCheck == 'open') {
		$(window).on('load', function() {
			$("#modal-image-add-form").modal("show");
		})
	}
})
	
</script>
</body>
</html>