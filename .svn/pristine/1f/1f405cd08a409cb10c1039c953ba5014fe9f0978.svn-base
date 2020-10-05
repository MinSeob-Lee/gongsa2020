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
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
<script type="text/javascript" src="/resources/js/manager/mateManager.js"></script>

</head>
<body>
	<div class="header">
		<%@ include file="../common/navi.jsp"%>
	</div>
	<div class="body">
		<div class="container-fluid" style="margin-top: 100px; height: 800px;">
			<div class="row">
				<div class="col-8">
					<div class="row">
						<div class="col-12" >
							<div class="jumbotron" style="padding: 20px;">
								<div class="row">
									<div class="col-12">
										<div class="row">
											<div class="col-12">
												<table class="table table-bordered" style="background-color: red; ">
													<colgroup>
													<col width="10%"/>
													<col width="30%"/>
													<col width="30%"/>
													<col width="30%"/>
													</colgroup>
													<tbody>
														<tr>
															<td rowspan="4">
																<img src="/resources/sample-images/movie_image.jpg" height="200px" class="rounded float-left" alt="" />
															</td>
														</tr>
														<tr>
															<td>공연이름</td>
															<td>공연 시작일</td>
															<td>날짜선택 : 공연날짜</td>
														</tr>
														<tr>
															<td>공연카테고리</td>
															<td>공연종료일</td>
															<td>시작시간, 종료시간</td>
														</tr>
														<tr>
															<td>공연 연령제한</td>
															<td>공연러닝타임</td>
															<td>쇼넘버(회차)</td>
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
							<div class="jumbotron">
							<!-- seat부분 -->
								<div class="row">
									<div class="col-12 text-center">
										전면부
									</div>
								</div>
								<div class="row">
									<div class="offset-3 col-6 offset-3 mt-4">
										<div class="row">
											<div id="R-seats1" class="col-6"></div>
											<div id="R-seats2" class="col-6"></div>
										</div>
									</div>
								</div>
								<br />
								<div class="row">
									<div class="col-12">
										<div class="row">
											<div id="S-seats1" class="col-3"></div>
											<div id="S-seats2" class="col-3"></div>
											<div id="S-seats3" class="col-3"></div>
											<div id="S-seats4" class="col-3"></div>
										</div>
									</div>
								</div>
								<br />
								<div class="row">
									<div class="col-12 mb-4">
										<div class="row">
											<div id="A-seats1" class="col-3"></div>
											<div id="A-seats2" class="col-3"></div>
											<div id="A-seats3" class="col-3"></div>
											<div id="A-seats4" class="col-3"></div>
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
				<div class="col-4 mt-5" style="height: 600px;">
					<div class="row">
						<div class="col-12">
							<div class="jumbotron">
								<div class="row">
									<!-- 공연등록 -->
									<div class="col-12">
										<div class="input-group">
											<div class="input-group-prepend">
												<label class="input-group-text" for="inputGroupSelect01">조건선택</label>
											</div>
											<select class="custom-select" id="inputGroupSelect01">
												<option value="category" selected>카테고리</option>
												<option value="name">공연이름</option>
											</select> <input type="text" class="form-control ui-widget" id="performance-search">
											<div class="input-group-append">
												<button class="btn btn-outline-secondary" type="button">검색</button>
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
											<input type="number" aria-label="First name"
												class="form-control text-right">
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
												<label for="" class="input-group-text">R석</label>
											</div>
											<input type="number" class="form-control" />
											<div class="input-group-append">
												<button class="btn btn-outline-secondary">선택</button>
											</div>
											<div class="input-group-prepend">
												<label for="" class="input-group-text">S석</label>
											</div>
											<input type="number" class="form-control" />
											<div class="input-group-append">
												<button class="btn btn-outline-secondary">선택</button>
											</div>
											<div class="input-group-prepend">
												<label for="" class="input-group-text">A석</label>
											</div>
											<input type="number" class="form-control" />
											<div class="input-group-append">
												<button class="btn btn-outline-secondary">선택</button>
											</div>
										
										</div>
									</div>
									<!-- 등급 end -->
									<div class="col-12 mt-4">
										<div class="input-group">
											<div class="input-group-prepend">
												<label for="" class="input-group-text">제한인원수</label>
											</div>
											<input type="number" class="form-control" />
											<div class="input-group-append">
												<button class="btn btn-outline-secondary" type="button">선택</button>
											</div>
											<select name="" id="" class="custom-select">
												<option value="2">2인</option>
												<option value="3">3인</option>
												<option value="4">4인</option>
												<option value="5">5인</option>
											</select>
											<div class="input-group-append">
												<button class="btn btn-outline-secondary">자동배정</button>
											</div>
										</div>
									</div>
									<div class="col-12 mt-4">
										<div class="input-group">
											<div class="input-group-prepend">
												<label for="" class="input-group-text">개설된 메이트 방 수</label>
											</div>
											<input type="number" class="form-control text-right"
												readonly="readonly" />
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
											<input type="text" class="form-control" readonly="readonly" />
										</div>
									</div>
									<div class="col-12 mt-4">
										<div class="input-group">
											<div class="input-group-prepend">
												<div class="input-group-text">
													<input type="radio" class="input-control"
														value="isPromotion" name="isPromotion" />
												</div>
											</div>
											<label for="" class="input-group-text"> 프로모션 적용</label>
											<div class="input-group-append">
												<div class="input-group-text">
													<input type="radio" class="input-control"
														value="isPromotion" name="isPromotion"/>
												</div>
 											</div>
											<label for="" class="input-group-text" > 프로모션 적용안함</label>
											<div class="input-group-append">
												<input type="text" class="form-control" />
												<button class="btn btn-outline-secondary"><i class="fas fa-search"></i></button>
											</div>
										</div>
									</div>
									<div class="col-12 mt-4">
										<div class="input-group">
											<div class="input-group-prepend">
												<label for="" class="input-group-text">프로모션 이름</label>
											</div>
											<input type="text" class="form-control" readonly="readonly"/>
											<div class="input-group-append">
												<button class="btn btn-outline-secondary">확정</button>
											</div>
										</div>
									</div>
									<div class="col-12 mt-4">
										<div class="input-group">
											<div class="input-group-prepend">
											<label for="" class="input-group-text">
													등급
												</label>
											</div>
												<select name="" id="" class="custom-select">
													<option value="S">S석</option>
													<option value="R">R석</option>
													<option value="A">A석</option>
												</select>
											<div class="input-group-prepend">
												<label for="" class="input-group-text">
													공연가격
												</label>
											</div>
											<input type="number" class="form-control" />
											<div class="input-group-append">
												<label for="" class="input-group-text">
													원
												</label>
											</div>
										</div>
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
	
<script type="text/javascript">
$(function(){
	var rseats1 = $('#R-seats1');
	var rseats2 = $('#R-seats2');
	var sseats1 = $('#S-seats1');
	var sseats2 = $('#S-seats2');
	var sseats3 = $('#S-seats3');
	var sseats4 = $('#S-seats4');
	var aseats1 = $('#A-seats1');
	var aseats2 = $('#A-seats2');
	var aseats3 = $('#A-seats3');
	var aseats4 = $('#A-seats4');
	
	var possibleSeats = ['available', 'reserved'];
	
	var randomSeat = () => possibleSeats[Math.floor(Math.random() * possibleSeats.length)];
	
	createSeat(rseats1);
	createSeat(rseats2);
	createSeat(sseats1);
	createSeat(sseats2);
	createSeat(sseats3);
	createSeat(sseats4);
	createSeat(aseats1);
	createSeat(aseats2);
	createSeat(aseats3);
	createSeat(aseats4);
	
	function createSeat($div){
		
		for (var i=0;i<4;i++) {
			for (var j=0;j<12;j++) {
				var seat = document.createElement('button');
				seat.setAttribute("class","col-sm-1 btn btn-sm btn-outline-secondary")
				var possibleSeat = randomSeat();
				seat.innerHTML = `
				    <svg class="${possibleSeat}" width="5" height="5">
				      <use href="#${possibleSeat}"></use>
				    </svg>
				    `;				    
				$div.append(seat);					
			}
		}
	}
})
</script>	
</body>
</html>