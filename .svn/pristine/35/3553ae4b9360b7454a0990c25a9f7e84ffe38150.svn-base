<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="modal" id="modal-image-add-form" data-backdrop="static" >
	<div class="modal-dialog modal-content modal-xl modal-dialog-scrollable" >
		<div class="modal-content ">
			<div class="modal-header">
				<h3 class="modal-title">사진검색하기</h3>
				<button type="button" class="close"  data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-header">
				<div class="row">
					<div class="col-12">
						<div class="from-group" id="notice-image-add-form">
							<div class="mb-3">
								<strong><label>검색하기</label></strong>
								<input type="text" class="form-control" placeholder="검색어를 입력하세요">
							</div>
							<form action="/notice/addImage.do" method="post" enctype="multipart/form-data">
							<input type="hidden" name="category" value="notice">
								<div id="notice-image-add">
									<strong><label>파일찾기</label></strong>
									<input type="file" class="form-control mb-1" name="upfile">
									<button type="submit" class="btn btn-success">사진추가하기</button>
								</div>
							</form>								
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="form-group">
						</div>
					</div>
				</div>
			</div>
			<div class="modal-body">
				<div class="row">
				<c:forEach begin="1" end="1" var="item">
					<div class="col-4 mb-5">
						<img src="../resources/sample-images/image1.jpg" id="image${item }" style="height: 200px;" class="img-thumbnail scale">
					</div>
				</c:forEach>						
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				<button type="submit" class="btn btn-primary" data-dismiss="modal" id="btn-confirm">사진등록하기</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>