<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>같이 보자! 공공연한사이</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<link rel="stylesheet" href="/resources/css/manager.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
<script type="text/javascript"
	src="/resources/js/manager/mateManager.js"></script>
<script type="text/javascript"
	src="/resources/js/manager/mateManagerList.js"></script>

</head>
<body>
	<c:set var="topName" value="mate" />
	<%@ include file="../manager/common/managerTop.jsp"%>
	<div class="page-wrapper chiller-theme toggled">
		<%@ include file="../manager/common/managernavi.jsp"%>
		<div class="page-content">
			<div class="container-fluid">
				<div class="container">
					<div class="row">
						<div class="col-12 mt-5 p-3 text-center ">
							<h1>메이트 리스트</h1>
							<hr />
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<table class="table" id="matelist-table">
								<thead class="text-center">
									<tr>
										<th>P.ID</th>
										<th>공연</th>
										<th>카테고리</th>
										<th>공연일자</th>
										<th>공연시간</th>
										<th>회차</th>
										<th>R석</th>
										<th>S석</th>
										<th>A석</th>
										<th>메이트방 수</th>
										<th>수정</th>
										<th>삭제</th>
										<th>상세</th>
									</tr>
								</thead>
								<tbody class="text-center mb-4">
								</tbody>
								<tfoot class="mx-auto">
									<tr>
										<td colspan="13"></td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="mate-detail-modal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">메이트 상세정보</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<table id="mate-detail-table" class="table table-bordered" style="border: 1px solid gray">
						<tbody>
							<tr>
								<td colspan="2" rowspan="5">
									<img style="width: 260px;" id="pImg" class="img-thumbnail" src="" alt="" />
								</td>
								<td>공연명
									<div id="pName"></div>
								</td>
								<td>카테고리
								<div id="pCat"></div>
								</td>
							</tr>
							<tr>
								<td>공연일자
									<div  id="pDate"></div>
								</td>
								<td>공연시간
									<div  id="pTime"></div>
								</td>
							</tr>
							<tr>
								<td>회차</td>
								<td id="pNum"></td>
							</tr>
							<tr>
								<td>총 좌석수</td>
								<td id="totalSeats"></td>
							</tr>
							<tr>
								<td>총 메이트 수</td>
								<td id="totalMates"></td>
							</tr>
							<tr>
								<td rowspan="3">R석</td>
								<td>빈방
									<span id="mate-R-empty"></span></td>
								<td rowspan="3">
									<div id="rGroupSize">
									</div>
								</td>
								<td>카테고리별
								</td>
							</tr>
							<tr>
								<td>모집중
									<span id="mate-R-progress"></span>
								</td>
								<td rowspan="8">
									<div id="mate-category">
										
									</div>
								</td>
							</tr>
							<tr>
								<td>모집완료
									<span id="mate-R-complete"></span>
								</td>
							</tr>
							<tr>
								<td rowspan="3">S석</td>
								<td>빈방
									<span id="mate-S-empty"></span>
								</td>
								<td rowspan="3">
									<div id="sGroupSize">
									</div>
								</td>
							</tr>
							<tr>
								<td>모집중
									<span id="mate-S-progress"></span>
								</td>
							</tr>
							<tr>
								<td>모집완료
									<span id="mate-S-complete"></span>
								</td>
							</tr>
							<tr>
								<td rowspan="3">A석</td>
								<td>빈방
									<span id="mate-A-empty"></span>
								</td>
								<td rowspan="3">
									<div id="aGroupSize">
									</div>
								</td>
							</tr>
							<tr>
								<td>모집중
									<span id="mate-A-progress"></span>
								</td>
							</tr>
							<tr>
								<td>모집완료
									<span id="mate-A-complete"></span>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary">수정</button>
				</div>
			</div>
		</div>
	</div>
<div id="loading" style="display: none;">
	<img src="/resources/logo/loading.gif" alt="" style="position: absolute; top: 600px; left: 800px"/>
</div>
</body>
</html>