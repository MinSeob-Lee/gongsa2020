<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 문의 수정하기 모달창  -->
	<form action="modifyquestion.do" method="post" enctype="multipart/form-data">
		<div class="modal fade" id="modal-modify-question-form" data-backdrop="static" >
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
							<input type="hidden" name="qnaId" id="question-qna-id" value="">
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input question-category-modify" id="customRadio15" name="qnaCategory" value="0">
									<label class="custom-control-label" for="customRadio15">예매/취소</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input question-category-modify" id="customRadio16" name="qnaCategory" value="1">
									<label class="custom-control-label" for="customRadio16">메이트</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input question-category-modify" id="customRadio17" name="qnaCategory" value="3">
									<label class="custom-control-label" for="customRadio17">이벤트</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input question-category-modify" id="customRadio18" name="qnaCategory" value="2">
									<label class="custom-control-label" for="customRadio18">기타</label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<strong><label>제목</label></strong>
									<input type="text" id="qnaTitle-modify-user" name="qnaTitle" class="form-control" placeholder="제목을 입력해주세요">
								</div>
								<div class="form-group">
									<strong><label>내용</label></strong>
									<textarea rows="5" cols="" id="qnaContent-modify-user" name="qnaContent" class="form-control" placeholder="내용을 입력해주세요"></textarea>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input question-opened-modify" id="customRadio19" name="qnaOpened" value="true">
									<label class="custom-control-label" for="customRadio19">공개</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input question-opened-modify" id="customRadio20" name="qnaOpened" value="false">
									<label class="custom-control-label" for="customRadio20">비공개</label>
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
										<input type="file" id="upfile-inputBox-modify" multiple="multiple" name="uploadFiles">
									</div>
								</div>
								<div class="row">
									<div class="col-12">
										<div class="imgs_wrap_modify" id="image-form" style="width: 800px;">
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
$(".modify-question").on("click", function () {
	qnaId = $(this).attr("id");
	
	$("#question-qna-id").val(qnaId);
	
	$.ajax({
		url: "questionDetail.do",
		data: {id: qnaId},
		type: "GET",
		success: function (data) {
			
			$("#modal-modify-question-form .question-category-modify").each(function () {
				if ($(this).val() == data.category) {
					$(this).prop("checked", true)
				}
			})
			
			$("#modal-modify-question-form #qnaTitle-modify-user").val(data.questionTitle);
			$("#modal-modify-question-form #qnaContent-modify-user").val(data.questionContent);
			
			if(data.opened) {
				$("#customRadio19").prop("checked", true)
			} else {
				$("#customRadio20").prop("checked", true);
			}
		}
	})
})
// 이미지 정보들을 담을 배열
var sel_files_modify = [];
// 업로드할 사진파일 미리보기
$("#upfile-inputBox-modify").on('change', function (e) {
	// 이미지 정보들을 초기화
	sel_files_modify = [];
	$(".imgs_wrap_modify").empty();
	
	var modifyFiles = e.target.files;
	var modifyFilesArr = Array.prototype.slice.call(modifyFiles);
	
	modifyFilesArr.forEach(function (f, index) {
		
		if (index > 2) {
			alert("사진은 최대 3개까지 업로드 가능합니다.")
			sel_files.splice(2, sel_files.length);
			return;
		} 
		
		sel_files_modify.push(f);
		var reader = new FileReader();
		reader.onload = function (e) {
			var addElement = "<a href=\"javascript:void(0);\" id=\"img_id_"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' data-target='"+index+"' style='width:180px;' class='mr-3 selProductFile img-thumbnail' title='Click to remove'></a>";
			$(".imgs_wrap_modify").append(addElement);
		}
		reader.readAsDataURL(f);
	})
})
</script>
</body>
</html>