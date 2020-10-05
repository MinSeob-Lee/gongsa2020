<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 답변등록하기 모달창 -->
	<form action="addanswer.do" method="post">
		<div class="modal fade" id="modal-add-answer-form" data-backdrop="static" >
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
				<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">답변하기</h4>
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
							<input type="hidden" name="qnaId" id="answer-qna-id" value="">
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input answer-category" id="customRadio7" name="qnaCategory" value="0">
									<label class="custom-control-label" for="customRadio7">예매/취소</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input answer-category" id="customRadio8" name="qnaCategory" value="1">
									<label class="custom-control-label" for="customRadio8">메이트</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input answer-category" id="customRadio9" name="qnaCategory" value="3">
									<label class="custom-control-label" for="customRadio9">이벤트</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input answer-category" id="customRadio10" name="qnaCategory" value="2">
									<label class="custom-control-label" for="customRadio10">기타</label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<strong><label>문의제목</label></strong>
									<input type="text" id="qnaTitle" class="form-control" value="" readonly="readonly">
								</div>
								<div class="form-group">
									<strong><label>문의내용</label></strong>
									<textarea rows="5" cols="" id="qnaContent" class="form-control" readonly="readonly"></textarea>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<strong><label>답변제목</label></strong>
									<input type="text" name="answerTitle" id="answerTitle" class="form-control" placeholder="제목을 입력해주세요" value="">
								</div>
								<div class="form-group">
									<strong><label>답변내용</label></strong>
									<textarea rows="5" cols="" name="answerContent" id="answerContent" class="form-control" placeholder="내용을 입력해주세요"></textarea>
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
$(".answer-add-admin").on("click", function () {
	
	var qnaId = $(this).attr("id");
	
	$("#answer-qna-id").val(qnaId);
	
	$.ajax({
		url: "questionDetail.do",
		data: {id: qnaId},
		type: "GET",
		success: function (data) {
			
			$("#modal-add-answer-form .answer-category").each(function () {
				if($(this).val() == data.category) {
					$(this).prop("checked", true)
				} else {
					$(this).prop("disabled", "true");
				}
			})
			
			$("#modal-add-answer-form #qnaTitle").val(data.questionTitle);
			$("#modal-add-answer-form #qnaContent").val(data.questionContent);
			
		}
	})
})
</script>
</body>
</html>