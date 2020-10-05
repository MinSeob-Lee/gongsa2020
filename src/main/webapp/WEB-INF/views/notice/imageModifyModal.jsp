<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.emoticon:hover {
	cursor: pointer;
}

#select-emoticon-form i {
	font-size: 80px;
}
#preview-image{
	cursor: pointer;
}
.transition {
	transition: 0.3s;
	transition-timing-function: linear;
}
</style>
</head>
<body>
<div class="modal" id="modal-image-modify-form" data-backdrop="static" >
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
								<strong>검색하기</strong>
								<input type="text" id="search-photo-modal" class="form-control" placeholder="검색어를 입력하세요">
							</div>
							<form action="/notice/addImage.do" method="post" enctype="multipart/form-data">
							<input type="hidden" name="category" id="image-add-category" value="notice">
								<div id="notice-image-add">
									<strong>파일찾기</strong>
									<input type="file" class="multi form-control" maxlength="5" multiple="multiple" name="upfiles" id="upfile-inputBox">
									<button type="button" id="image-add-btn" class="btn btn-success">사진추가하기</button>
								</div>
							</form>
						</div>
					</div>	
				</div>
				<div style="width: 50px;"></div>
				<div class="row">
					<div class="col-12">
						<div class="imgs_wrap" id="image-form" style="width: 800px;">
							<img id="img" >
						</div>
					</div>
				</div>
			</div>
			<div class="modal-body open-image-modal">
				<div class="row" id="image-list-notice-modal">
					<div class="col-12 mb-5">
						
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" id="image-btn-confirm">사진등록하기</button>
			</div>
		</div>
	</div>
</div>

<div class="modal" id="modal-emoticon-add-form">
	<div class="modal-dialog modal-xl">
		<div class="modal-content">
		  <!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">이모티콘 선택하기</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<!-- Modal body -->
			<div class="modal-body">
					<i class="fas fa-bell" id="fas fa-bell"></i>
					<i class="fas fa-exclamation-triangle" id="fas fa-exclamation-triangle"></i>
					<i class="fas fa-beer" id="fas fa-beer"></i>
					<i class="fas fa-users" id="fas fa-users"></i>
					<i class="fas fa-star" id="fas fa-star"></i>
					<i class="far fa-star" id="far fa-star"></i>
					<i class="fas fa-thumbs-up" id="fas fa-thumbs-up"></i>
					<i class="far fa-thumbs-up" id="far fa-thumbs-up"></i>
			</div>
			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" id="emoticon-btn-confirm">등록하기</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
$(function() {
	
	$("#modal-emoticon-add-form .modal-body i").each(function (index, element) {
		$(element).addClass("fa-5x");
		$(element).addClass("img-thumbnail");
		$(element).addClass("emoticon");
		$(element).addClass("scale");
		$(element).css("border", "thick");
	})
	
	// 이모티콘추가버튼을 클릭했을 때 선택된 이모티콘이 없게한다.
	$("#select-emoticon").on('click', function () {
		$("#modal-emoticon-add-form .modal-body i").css("border-style", "none");
	})
	
	$(".emoticon").on('click', function() {
		
		$("#modal-emoticon-add-form .modal-body i").removeClass("selected-emoticon");
		$("#modal-emoticon-add-form .modal-body i").css("border-style", "none");
		
		$(this).css("border-style", "solid");
		$(this).addClass("selected-emoticon");
		
	})
	
	// 이모티콘추가모달창의 확인버튼을 클릭했을때 
	$("#emoticon-btn-confirm").on('click', function () {
		var count = 0;
		$("#modal-emoticon-add-form .modal-body i").each(function(index, element) {
			if ($(element).hasClass("selected-emoticon")) {
				count++
				var findElement = element
			}
		})
		if (!count) {
			alert("이모티콘을 선택해주세요");
			return false;
		} else {
			$("#modal-emoticon-add-form .modal-body i").each(function(index, element) {
				if ($(element).hasClass("selected-emoticon")) {
					$("#select-emoticon-form").empty();
					
					var findEmoticon = $(element).attr("id");
					
					var addElement = "";
					addElement += "<div class='col-12'>";
					addElement += "<i class='"+findEmoticon+"'></i>";
					addElement += "<input type='hidden' name='mainEmoticon' value='"+findEmoticon+"'>"
					addElement += "</div>"
					addElement += "<div class='row'>"
					addElement += "<div class='col-12'>"
					addElement += '<button type="button" style="margin-top: 7px; margin-left: 10px;" class="btn btn-success" id="modify-title-imoticon"'
					addElement += 'data-toggle="modal" data-target="#modal-emoticon-add-form">변경하기</button>'
					addElement += "</div>"
					addElement += "</div>"
					$("#select-emoticon-form").append(addElement);
					
				}
			})
		}
	});
	
	// 모달창에서 공지사항에 추가 할 이미지를 선택할 수 있다.
	var selectImgGroup = [];
	$("#image-btn-confirm").on("click", function() {
		imageCount = 0;
		
		selectImgGroup = [];
		
		$(".selected-image").each(function () {
			selectImgGroup.push($(this).attr("src"));
		})
		
		// 모달창의 확인버튼을 클릭했을때 사진을 선택하지않은 경우 사진을 선택하게한다.
		var count = 0;
		$(".open-image-modal img").each(function() {
			if ($(this).hasClass("selected-image")) {
				count++;
			}
		})
		if (!count) {
			alert("사진을 선택해주세요");
			return false;
		} else {
			if (selectImgGroup.length == 1) {
				// 기존에 있던 이미지추가버튼을 제거하고 선택된 이미지를 넣는다.
				$("#selection-image").empty();
				// 이미지추가버튼을 제거하고 선택된 이미지를 넣는다.
				var addElement = "";
				addElement += "<div class='col-12' style='margin-top: 20px;'>";
				addElement += "<img src='"+selectImgGroup[0]+"' name='image' width='250px' height='220px' style='border:2px solid white' title='크게보기'>"
				addElement += "<input type='hidden' name='imagePath' value='"+selectImgGroup[0]+"'>"
				addElement += "</div>"
				addElement += "<div class='row'>"
				addElement += "<div class='col-12'>"
				addElement += '<button type="button" style="margin-top: 7px; margin-left: 100px;" class="btn btn-success" id="modify-title-image"'
				addElement += 'data-toggle="modal" data-target="#modal-image-modify-form">변경하기</button>'
				addElement += "</div>"
				addElement += "</div>"
				$("#selection-image").append(addElement);
			} else if (selectImgGroup.length == 2) {
				$("#selection-image").empty();
				var addElement = "";
				addElement += "<div class='col-12' style='margin-top: 80px;'>";
				addElement += "<img src='"+selectImgGroup[0]+"' name='image' width='120px' height='110px' style='border:2px solid white' title='크게보기'>"
				addElement += "<img src='"+selectImgGroup[1]+"' name='image' width='120px' height='110px' style='border:2px solid white' title='크게보기'>"
				addElement += "<input type='hidden' name='imagePath' value='"+selectImgGroup[0]+"'>"
				addElement += "<input type='hidden' name='imagePath' value='"+selectImgGroup[1]+"'>"
				addElement += "</div>"
				addElement += "<div class='row'>"
				addElement += "<div class='col-12'>"
				addElement += '<button type="button" style="margin-top: 7px; margin-left: 100px;" class="btn btn-success" id="modify-title-image"'
				addElement += 'data-toggle="modal" data-target="#modal-image-modify-form">변경하기</button>'
				addElement += "</div>"
				addElement += "</div>"
				$("#selection-image").append(addElement);
			} else if (selectImgGroup.length == 3) {
				$("#selection-image").empty();
				var addElement = "";
				addElement += "<div class='col-12' style='margin-top: 20px;'>";
				addElement += "<img src='"+selectImgGroup[0]+"' name='image' width='120px' height='110px' style='border:2px solid white' title='크게보기'>"
				addElement += "<img src='"+selectImgGroup[1]+"' name='image' width='120px' height='110px' style='border:2px solid white' title='크게보기'>"
				addElement += "<img src='"+selectImgGroup[2]+"' name='image' width='120px' height='110px' style='border:2px solid white' title='크게보기'>"
				addElement += "<input type='hidden' name='imagePath' value='"+selectImgGroup[0]+"'>"
				addElement += "<input type='hidden' name='imagePath' value='"+selectImgGroup[1]+"'>"
				addElement += "<input type='hidden' name='imagePath' value='"+selectImgGroup[2]+"'>"
				addElement += "</div>"
				addElement += "<div class='row'>"
				addElement += "<div class='col-12'>"
				addElement += '<button type="button" style="margin-top: 7px; margin-left: 100px;" class="btn btn-success" id="modify-title-image"'
				addElement += 'data-toggle="modal" data-target="#modal-image-modify-form">변경하기</button>'
				addElement += "</div>"
				addElement += "</div>"
				$("#selection-image").append(addElement);
			} else if (selectImgGroup.length == 4) {
				$("#selection-image").empty();
				var addElement = "";
				addElement += "<div class='col-12' style='margin-top: 20px;'>";
				addElement += "<img src='"+selectImgGroup[0]+"' name='image' width='120px' height='110px' style='border:2px solid white' title='크게보기'>"
				addElement += "<img src='"+selectImgGroup[1]+"' name='image' width='120px' height='110px' style='border:2px solid white' title='크게보기'>"
				addElement += "<img src='"+selectImgGroup[2]+"' name='image' width='120px' height='110px' style='border:2px solid white' title='크게보기'>"
				addElement += "<img src='"+selectImgGroup[3]+"' name='image' width='120px' height='110px' style='border:2px solid white' title='크게보기'>"
				addElement += "<input type='hidden' name='imagePath' value='"+selectImgGroup[0]+"'>"
				addElement += "<input type='hidden' name='imagePath' value='"+selectImgGroup[1]+"'>"
				addElement += "<input type='hidden' name='imagePath' value='"+selectImgGroup[2]+"'>"
				addElement += "<input type='hidden' name='imagePath' value='"+selectImgGroup[3]+"'>"
				addElement += "</div>"
				addElement += "<div class='row'>"
				addElement += "<div class='col-12'>"
				addElement += '<button type="button" style="margin-top: 7px; margin-left: 100px;" class="btn btn-success" id="modify-title-image"'
				addElement += 'data-toggle="modal" data-target="#modal-image-modify-form">변경하기</button>'
				addElement += "</div>"
				addElement += "</div>"
				$("#selection-image").append(addElement);
			}
		}
	});
	// 이미지 정보들을 담을 배열
	var sel_files = [];
	// 업로드할 사진파일 미리보기
	$("#upfile-inputBox").on('change', function (e) {
		
		// 이미지 정보들을 초기화
		sel_files = [];
		
		$(".imgs_wrap").empty();
		
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function (f, index) {
			
			if (index > 7) {
				alert("사진은 최대 8개까지 업로드 가능합니다.")
				sel_files.splice(8, sel_files.length);
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
	
	$(".imgs_wrap").on("click", ".img-thumbnail", function () {
		var index = $(this).data('target')
		
		sel_files.splice(index, 1);
		
		$(this).parent().remove();
		
	})
	
	// 이미지 추가
	$("#image-add-btn").on("click", function() {
		
		var data = new FormData()
		
		var category = $("#image-add-category").val();
		data.append("cate", category)
		
		for (var index in sel_files) {
			data.append("myFile", sel_files[index])
		}
		
		var imagePaths = new Array();
		
		$.ajax({
			type: "POST",
			enctype: "multipart/form-data",
			cache: false,
			contentType: false,
			processData: false,
			data: data,
			url: "addImage.do",
			dataType: "json",
			success: function (data) {
				
				$(".modal-body img").css("background-color", "");
				$("#search-photo-modal").val("")
				$("#upfile-inputBox").val("");
				$(".imgs_wrap").empty();
				
				data.forEach(function (element) {
					imagePaths.push(element.imagePath);
				})
				
				$("#image-list-notice-modal").empty();
				
				var addElement = "";
				addElement += "<div class='col-12 mb-5' id='image-list-search-image'>";
				addElement += "</div>"
				
				$("#image-list-notice-modal").append(addElement);
				
				for (var i=0; i<imagePaths.length; i++) {
					var addElement = "";
					addElement = "<img src='../resources/sample-images/"+imagePaths[i]+"' style='height: 200px; width: 200px;' class='img-thumbnail scale'>"
					
					$("#image-list-search-image").append(addElement);
					
				}
				
			}
		})
	})

	$("#search-photo-modal").on("keyup", function () {
		
		var searchKeyword = $(this).val();
		
		var imagePaths = new Array();
		
		$.ajax({
			type: "GET",
			url:"getImagesByKeyword.do",
			data: {keyword: searchKeyword},
			dataType: "json",
			success: function (data) {
				data.forEach(function (element) {
					imagePaths.push(element.imagePath);
				})
				
				if (!imagePaths[0]) {
					$("#image-list-notice-modal").empty();
					var addElement = "";
					addElement += "<div class='ml-3'>검색결과가 없습니다.</div>"
					$("#image-list-notice-modal").append(addElement);
					return false;
				}
				
				$("#image-list-notice-modal").empty();
				
				var addElement = "";
				addElement += "<div class='col-12 mb-5' id='image-list-search-image'>";
				addElement += "</div>"
				
				$("#image-list-notice-modal").append(addElement);
				
				for (var i=0; i<imagePaths.length; i++) {
					var addElement = "";
					addElement = "<img src='../resources/sample-images/"+imagePaths[i]+"' style='height: 200px; width: 200px;' class='img-thumbnail scale'>"
					
					$("#image-list-search-image").append(addElement);
					
				}
			}
		})
	})
	
	var imageCount = 0;
	var selectedImgArray = [];
	$(".open-image-modal").on("click", ".img-thumbnail", function() {
		
		if ($(this).hasClass("selected-image")) {
			$(this).removeClass("selected-image")
			$(this).css("background-color", "white");
			imageCount--			
		} else {
			if (imageCount > 3) {
				alert("사진은 4장까지 등록할 수 있습니다.")
				$(this).removeClass("selected-image")
				$(this).css("background-color", "white");
				return;
			}	
			$(this).css("background-color", "red");
			$(this).addClass("selected-image");
			imageCount++
		}
		
		selectImgGroup = [];
		
		$(".selected-image").each(function () {
			selectImgGroup.push($(this).attr("src"));
		})
		
		for (var i=0; i<selectImgGroup.length; i++) {
			for (var j=i+1; j<=selectImgGroup.length; j++) {
				if (selectImgGroup[i] == selectImgGroup[j]) {
					alert("이름이 같은 파일은 업로드할 수 없습니다.")
 					$(this).removeClass("selected-image")
 					$(this).css("background-color", "white")
 					imageCount--;
					return false;
					}
				}
			}
	});
	
	$("#image-btn-close").on("click", function () {
		imageCount = 0;
	})
	
	// 모달창을 생성할 때 선택된 이미지가 없게한다.
	$("#selection-image").on("click", "#modify-title-image", function() {
		$(".modal-body img").css("background-color", "");
		$("#search-photo-modal").val("")
		$("#upfile-inputBox").val("");
		$(".imgs_wrap").empty();
		
		var imagePaths = new Array();
		
		$.ajax({
			url: "getImages.do",
			type: "GET",
			dataType: "json",
			success: function (data) {
				data.forEach(function (element) {
					imagePaths.push(element.imagePath);
				})
				
				$("#image-list-notice-modal").empty();
				
				var addElement = "";
				addElement += "<div class='col-12 mb-5' id='image-list-search-image'>";
				addElement += "</div>"
				
				$("#image-list-notice-modal").append(addElement);
				
				for (var i=0; i<imagePaths.length; i++) {
					var addElement = "";
					addElement = "<img src='../resources/sample-images/"+imagePaths[i]+"' style='height: 200px; width: 200px;' class='img-thumbnail scale'>"
					
					$("#image-list-search-image").append(addElement);
					
				}
			}
		})
		
	})
	
})
	
</script>
</body>
</html>