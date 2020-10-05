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
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
<script type="text/javascript" src="/resources/js/manager/mateManager.js"></script>
<script type="text/javascript" src="/resources/js/jquery.MultiFile.min.js"></script>
<style>
  .selectable .ui-selecting { background: white  !important; }
  .selectable .ui-selected { background: white !important; color: white; }
</style>
</head>
<body>
	<div class="header">
		<%@ include file="../common/navi.jsp"%>
	</div>
	<div class="body">
		<div class="container-fluid" style="margin-top: 100px;">
			<div class="row">
				<div class="col-8" style="padding-left: 100px">
					<div class="row">
						<div class="col-12" >
							<div class="jumbotron" style="padding: 20px; width: 900px;">
								<div class="row">
									<div class="col-12">
										<div class="row">
											<div class="col-12">
												<table class="table table-bordered shadow-sm">
													<colgroup>
													<col width="10%"/>
													<col width="30%"/>
													<col width="30%"/>
													<col width="30%"/>
													</colgroup>
													<tbody id="performance-table" class="text-center">
														<tr>
															<td rowspan="4">
																<img id="pImg" src="/resources/sample-images/noimage.png" height="200px" class="rounded float-left" alt="" />
															</td>
														</tr>
														<tr>
															<td>공연이름
																<div id="pName" class="bg-primary text-white"></div>
															</td>
															<td>공연 시작일
																<div id="pStartDate" class="bg-primary text-white"></div>
															</td>
															<td>
															<span class="form-group">
																<label for="">날짜선택</label>
																<input class="form-control" type="date" id="show-date-selected"/>
															</span>
															</td>
														</tr>
														<tr>
															<td>공연카테고리
																<div id="pCat" class="bg-primary text-white"></div>
															</td>
															<td>공연종료일
																<div id="pEndDate" class="bg-primary text-white"></div>
															</td>
															<td>
															<div class="row">
															
																<div class="col-6">
																<label for="pStartTime">시작시간</label>
																<small><input type="text" id="pStartTime" class="form-control "/></small>
																</div>
																<div class="col-6">
																<label for="pEndTime">종료시간</label>
																<input type="text" id="pEndTime" class="form-control" readonly="readonly"/>
															</div>
																</div>
															</td>
														</tr>
														<tr>
															<td>공연 연령제한
																<div id="pAtho" class="bg-primary text-white"></div>
															</td>
															<td>공연러닝타임
																<div id="pRunningTime" class="bg-primary text-white"></div>
															</td>
															<td>쇼넘버(회차)
																<div id="pShowTime">
																	<select name="showtimeSelectBox" id="pShowtime-select" class="custom-select">
																		<option value="1">1</option>
																		<option value="2">2</option>
																		<option value="3">3</option>
																	</select>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<div class="col-12">
										<div class="row">
											<div class="col-4"></div>
										</div>
									</div>
								</div>
							
							</div>
						</div>
						<div class="col-12">
							<div class="jumbotron" style="width: 900px;">
							<!-- seat부분 -->
								<div class="row">
									<div class="col-12 text-center">
										전면부
									</div>
								</div>
								<div class="row">
									<div class="offset-3 col-6 offset-3 mt-4">
										<div class="row">
											<div id="R-seats1" class="selectable col-6 A"></div>
											<div id="R-seats2" class="selectable col-6 B"></div>
										</div>
									</div>
								</div>
								<br />
								<div class="row">
									<div class="col-12">
										<div class="row">
											<div id="S-seats1" class="selectable col-3 C"></div>
											<div id="S-seats2" class="selectable col-3 D"></div>
											<div id="S-seats3" class="selectable col-3 E"></div>
											<div id="S-seats4" class="selectable col-3 F"></div>
										</div>
									</div>
								</div>
								<br />
								<div class="row"> 
									<div class="col-12 mb-4">
										<div class="row">
											<div id="A-seats1" class="selectable col-3 G"></div>
											<div id="A-seats2" class="selectable col-3 H"></div>
											<div id="A-seats3" class="selectable col-3 I"></div>
											<div id="A-seats4" class="selectable col-3 J"></div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-12 text-center">
									 후면부
									</div>
								</div>
								<!-- seat부분 end-->
							</div>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div class="row">
						<div class="col-12">
							<div class="jumbotron" >
								<div class="row">
									<!-- 공연등록 -->
									<div class="col-12">
										<div class="input-group">
											<div class="input-group-prepend">
												<button type="button" data-toggle="modal" id="performance-list-modal-btn" 
												data-target="#performance-list-modal"  class="btn btn-outline-secondary">공연리스트</button>
											</div> <input type="text" class="form-control ui-widget" id="performance-search">
											<div class="input-group-append">
												<button class="btn btn-outline-secondary" id="p-search-btn" type="button">선택</button>
											</div>
										</div>
									</div>
									<!-- 공연등록 end -->
									<!-- 공연관리 -->
									<div class="col-12 mt-4">
										<div class="input-group">
											<div class="input-group-prepend">
												<label for="" class="input-group-text">
													공연이름
												</label>
											</div>
											<input type="text" class="form-control" readonly="readonly" />
											<div class="input-group-append">
												<button type="button" class="btn btn-outline-secondary">공연관리</button>
											</div>
										</div>
									</div>
									<!-- 공연관리 end -->
									
									<!-- 공연좌석수 -->
									<div class="col-12 mt-4">
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text">총 좌석수</span>
											</div>
											<input type="number" id="performance-total-seat"
												class="form-control text-right" readonly="readonly">
											<div class="input-group-append">
												<span class="input-group-text">석</span>
											</div>
										</div>
									</div>
									<!-- 공연좌석 수 end -->
									<!-- 등급 -->
									<div class="col-12 mt-4">
										<div class="input-group">
											<div class="input-group-prepend">
												<button class="btn btn-primary" type="button" id="R-change-btn">R석</button>
											</div>
											<input type="number" id="R-class" class="form-control" readonly="readonly" />
											<div class="input-group-prepend">
												<button class="btn btn-warning" type="button" id="S-change-btn">S석</button>
											</div>
											<input type="number" id="S-class" class="form-control" readonly="readonly" />
											<div class="input-group-prepend">
												<button class="btn btn-danger" type="button" id="A-change-btn">A석</button>
											</div>
											<input type="number" id="A-class" class="form-control" readonly="readonly" />
											<div class="input-group-prepend">
												<button class="btn btn-outline-secondary" type="button" id="N-change-btn">예약불가능</button>
											</div>
											<input type="number" id="no-class" class="form-control" readonly="readonly" />
											
										</div>
									</div>
									<!-- 등급 end -->
									<div class="col-12 mt-4">
										<div class="input-group">
											<div class="input-group-prepend">
												<label for="" class="input-group-text">공연가격</label>
											</div>
											<div class="input-group-prepend">
												<label for="" class="input-group-text">R석</label>
											</div>
											<input id="R-ticket-price" type="text" class="form-control" readonly="readonly" />
											<div class="input-group-prepend">
												<label for="" class="input-group-text">S석</label>
											</div>
											<input id="S-ticket-price" type="text" class="form-control" readonly="readonly"/>
											<div class="input-group-prepend">
												<label for="" class="input-group-text">A석</label>
											</div>
											<input id="A-ticket-price" type="text" class="form-control" readonly="readonly"/>
											
										</div>
									</div>
									<div class="col-12 mt-4">
										<div class="input-group">
											<div class="input-group-prepend">
												<label for="" class="input-group-text">메이트 인원수</label>
											</div>
											<select name="mate-select-val" id="mate-select-val" class="custom-select">
												<option value="2">2인</option>
												<option value="3">3인</option>
												<option value="4">4인</option>
											</select>
											<div class="input-group-append">
												<button type="button" id="auto-mate-selected-btn" class="btn btn-outline-secondary">자동배정</button>
											</div>
											<div class="input-group-append">
												<button type="button" id="rest-mate-selected-btn" class="btn btn-outline-secondary">리셋</button>
											</div>
											
										</div>
									</div>
									<div class="col-12 mt-4">
										<div class="input-group">
											<div class="input-group-prepend">
												<label for="" class="input-group-text">개설된 메이트 방 수</label>
											</div>
											<input type="number" class="form-control text-right"
												readonly="readonly" id="mate-room-cnt"/>
											<div class="input-group-append">
												<label for="" class="input-group-text">개</label>
											</div>
										</div>
									</div>
									<div class="col-12 mt-4">
										<div class="input-group">
											<div class="input-group-prepend">
												<label for="" class="input-group-text"> 선택된 좌석번호 </label>
											</div>
											<textarea rows="7" class="form-control" id="selected-seat-view" readonly="readonly"></textarea>
										</div>
									</div>
									<div class="col-12 mt-4 text-right">
										<button type="button" id="mate-all-submit-btn" class="btn btn-primary">등록</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
	<!-- 공연 리스트 모달 -->
	<div class="modal fade" id="performance-list-modal" tabindex="-1" aria-labelledby="performance-list-modal-label" aria-hidden="true">
  <div class="modal-dialog modal-xl modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">공연리스트</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table" id="performance-list-content">
        	<colgroup>
        		<col width="4%"/>
        		<col width="6%"/>
        		<col width="20%"/>
        		<col width="10%"/>
        		<col width="10%"/>
        		<col width="10%"/>
        		<col width="6%"/>
        		<col width="10%"/>
        		<col width="14%"/>
        		<col width="10%"/>
        	</colgroup>
        	<thead class="thead-dark">
        		<tr>
        			<th></th>
        			<th>번호</th>
        			<th>공연제목</th>
        			<th>카테고리</th>
        			<th>시작일</th>
        			<th>종료일</th>
        			<th>연령</th>
        			<th>러닝타임</th>
        			<th>장소</th>
        			<th>장르</th>
        		</tr>
        	</thead>
        	<tbody>
        	</tbody>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        <button type="button" id="list-content-choose-btn" class="btn btn-primary">선택</button>
      </div>
    </div>
  </div>
</div>
<!-- 공연 리스트 모달 -->
<!-- input hidden -->
<input type="hidden" id="hidden-performance-info-id" />
<input type="hidden" id="hidden-hall-id" />

 
</body>
</html>