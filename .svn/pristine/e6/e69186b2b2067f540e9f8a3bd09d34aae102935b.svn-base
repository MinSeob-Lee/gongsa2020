<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="modal fade" id="performance-list-modal" tabindex="-1" aria-labelledby="performance-list-modal-label" aria-hidden="true">
	<div class="modal-dialog modal-xl modal-dialog-scrollable">
		<div class="modal-content">

			<div class="modal-header">

				<h5 class="modal-title" id="exampleModalLabel">공연리스트</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<table class="table" id="performance-list-content">
					<colgroup>
						<col width="4%" />
						<col width="6%" />
						<col width="20%" />
						<col width="10%" />
						<col width="10%" />
						<col width="10%" />
						<col width="6%" />
						<col width="10%" />
						<col width="14%" />
						<col width="10%" />
					</colgroup>
					<thead class="thead-dark">
						<tr>
							<th></th>
							<th>번호</th>
							<th>공연제목</th>
							<th>카테고리</th>
							<th>시작일</th>
							<th>종료일</th>
							<th>장소</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" id="cancel-btn" class="btn btn-secondary" data-dismiss="modal">취소</button>
				<button type="button" id="list-content-choose-btn" class="btn btn-primary">선택</button>
			</div>
		</div>
	</div>
</div>
<input type="hidden" id="performance-content"/>
<script type="text/javascript">
$(function() {

	//공연 모달 리스트 컨텐츠
	var $tbody = $('#performance-list-content tbody');
	var $tr = $('#performance-list-content tbody tr');

	$('#apimodal').click(function() {
		$.ajax({
			url : '/manager/apijson.do',
			dataType : 'json',
			success : function(data) {
				var performanceList = data.data;
				for ( var i in performanceList) {
					var pNo = performanceList[i].seq;
					var pTitle = performanceList[i].title;
					var pCat = performanceList[i].realmName;
					var pStart = performanceList[i].startDate;
					var pEnd = performanceList[i].endDate;
					var pRate = performanceList[i].rating;
					//var pTime = performanceList[i].runningTime;
					//var pProvider = performanceList[i].provider;
					var pHall = performanceList[i].place;
					var pGenreArray = performanceList[i].genres;
					var pGenre = '';
					
					for ( var j in pGenreArray) {
						pGenre += pGenreArray[j]
								+ '/'
					}

					var rows = '<tr>';
					rows += '<td><input type="radio" name="performance-radio" data-seq='+pNo+' data-title='+ pTitle.replace(/\s/g,'') +' data-category='+pCat+' data-startDate='+pStart+' data-endDate='+pEnd+' data-hallName='+pHall+'/></td>'
					rows += '<td>' + pNo + '</td>'
					rows += '<td>' + pTitle + '</td>'
					rows += '<td>' + pCat + '</td>'
					rows += '<td>' + pStart + '</td>'
					rows += '<td>' + pEnd + '</td>'
					//rows += '<td>' + pRate + '</td>'
					//rows += '<td>' + pTime + '</td>'
					rows += '<td>' + pHall + '</td>'
					//rows += '<td>' + pGenre + '</td></tr>'

					$tbody.append(rows);

				}
			}
		})
	});
	
	$('#performance-list-modal tbody').on('click',$('input[name=performance-radio]'), function(){
		var seq = $('input[name=performance-radio]:checked').data('seq');
		
		$.ajax({
			url:"/manager/apidatadetail.do",
			data:{
				"seq":seq	
			},
			dataType:'json',
			success:function(data) {
				console.log(data.contents1);
				$('#performance-content').val(data.contents1);
			}
		})
	})
	
	$('#list-content-choose-btn').click(function() {
		var $checkedRadio = $('input[name=performance-radio]:checked')
		var title = $checkedRadio.data('title');
		var seq = $checkedRadio.data('seq');
		
		$('#performance-expain').text(htmlencode(removeTag($('#performance-content').val())));
		$('#performanceName').val(title);
		$('.modal-backdrop').remove();
		$('#performance-list-modal').modal('hide');
	});
})
function removeTag( html ) {
     return html.replace(/(<([^>]+)>)/gi, "");
}
function htmlencode(str) {
    return str.replace(/[&<>"']/g, function($0) {
        return "&" + {"&":"amp", "<":"lt", ">":"gt", '"':"quot", "'":"#39"}[$0] + ";";
    });
}
</script>
			