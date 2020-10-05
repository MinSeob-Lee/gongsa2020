<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 문의하기 모달창 -->
	<form action="addqna.do" method="post" enctype="multipart/form-data">
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
						<input type="hidden" name="imgCategory" value="qna">
						<div class="row">
							<div class="col-12 mb-2">
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input question-category" id="customRadio" name="qnaCategory" value="0">
									<label class="custom-control-label" for="customRadio">예매/취소</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input question-category" id="customRadio2" name="qnaCategory" value="1">
									<label class="custom-control-label" for="customRadio2">메이트</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input question-category" id="customRadio3" name="qnaCategory" value="3">
									<label class="custom-control-label" for="customRadio3">이벤트</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input question-category" id="customRadio4" name="qnaCategory" value="2">
									<label class="custom-control-label" for="customRadio4">기타</label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<strong><label>제목</label></strong>
									<input type="text" name="qnaTitle" id="qnaTitle-add-ques" class="form-control" placeholder="제목을 입력해주세요">
								</div>
								<div class="form-group">
									<strong><label>내용</label></strong>
									<textarea rows="5" cols="" name="qnaContent" id="qnaContent-add-ques" class="form-control" placeholder="내용을 입력해주세요"></textarea>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input question-opened" id="customRadio5" name="qnaOpened" value="true">
									<label class="custom-control-label" for="customRadio5">공개</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input question-opened" id="customRadio6" name="qnaOpened" value="false">
									<label class="custom-control-label" for="customRadio6">비공개</label>
								</div>
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-12">
								<div class="row">
									<div class="col-6">
										<label style="font-size: medium; font-weight: bold;" >사진첨부하기</label><span style="font-size: small;"> (최대 3장까지 가능합니다.)</span>
									</div>
								</div>
								<div class="row" id="selection-image">
									<div class="col-2 mb-3">
										<input type="file" id="upfile-inputBox" multiple="multiple" name="uploadFiles">
									</div>
								</div>
								<div class="row">
									<div class="col-12">
										<div class="imgs_wrap" id="image-form" style="width: 800px;">
											<img id="img" >
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
						<!-- Modal footer -->
					<div class="modal-footer">
						<button type="submit" class="btn btn-dark btn-lg">등록</button>
						<button type="button" class="btn btn-light btn-lg" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	</form>
<script type="text/javascript">
//이미지 정보들을 담을 배열
var sel_files = [];
// 문의하기버튼을 클릭했을 시 내용 초기화
$("#add-question").on("click", function () {
	
	$("#customRadio").prop("checked", false)
	$("#customRadio2").prop("checked", false)
	$("#customRadio3").prop("checked", false)
	$("#customRadio4").prop("checked", false)
	
	$("#qnaTitle-add-ques").val('')
	$("#qnaContent-add-ques").val('')
	
	$("#customRadio5").prop("checked", false)
	$("#customRadio6").prop("checked", false)
	
	$("#upfile-inputBox").empty();
	$("#image-form").empty();
	sel_files = [];
})

// 업로드할 사진파일 미리보기
$("#upfile-inputBox").on('change', function (e) {
	
	// 이미지 정보들을 초기화
	sel_files = [];
	
	$(".imgs_wrap").empty();
	
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	
	filesArr.forEach(function (f, index) {
		
		if (index > 2) {
			alert("사진은 최대 3개까지 업로드 가능합니다.")
			sel_files.splice(2, sel_files.length);
			return;
		} 
		
		sel_files.push(f);
		var reader = new FileReader();
		reader.onload = function (e) {
			var html = "<a href=\"javascript:void(0);\" id=\"img_id_"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' data-target='"+index+"' style='width:180px;' class='mr-3 selProductFile img-thumbnail' title='Click to remove'></a>";
			$(".imgs_wrap").append(html);
		}
		reader.readAsDataURL(f);
	})
})
</script>
</body>
</html>