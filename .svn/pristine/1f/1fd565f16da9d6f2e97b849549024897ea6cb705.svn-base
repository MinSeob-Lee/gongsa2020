<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
<script type="text/javascript" src="/resources/js/credit.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
</head>
<style>
div#R-seats1 button {
	background-color: #00FFFF;
	width: 30px;
	height: 35px;
}

div#R-seats2 button {
	background-color: #00FFFF;
	width: 30px;
	height: 35px;
}

div#S-seats1 button {
	background-color: #F3F781;
	width: 30px;
	height: 35px;
}

div#S-seats2 button {
	background-color: #F3F781;
	width: 30px;
	height: 35px;
}

div#S-seats3 button {
	background-color: #F3F781;
	width: 30px;
	height: 35px;
}

div#S-seats4 button {
	background-color: #F3F781;
	width: 30px;
	height: 35px;
}

div#A-seats1 button {
	background-color: #81F781;
	width: 30px;
	height: 35px;
}

div#A-seats2 button {
	background-color: #81F781;
	width: 30px;
	height: 35px;
}

div#A-seats3 button {
	background-color: #81F781;
	width: 30px;
	height: 35px;
}

div#A-seats4 button {
	background-color: #81F781;
	width: 30px;
	height: 35px;
}
</style>
<body>
	<div class="header">
		<%@ include file="../common/navi.jsp"%>
	</div>
	<div class="body" style="margin-top: 100px;">
		<div class="container-fluid" style="margin-bottom: -100px;">
			<div class="row">
				<div class="col-12">
					<div class="row">
						<div class="col-9">
							<div class="row">
								<div class="col-12">
								<!-- 상단 메뉴바 -->
									<div class="row">
										<div class="col-4" id="step1"
											style="background-color: #FF0000; color: white;">
											<div>step1</div>
											<span>관람일/회차</span>
										</div>
										<div class="col-2" id="step2">
											<div>step2</div>
											<span>결제등급선택</span>
										</div>
										<div class="col-2" id="step3">
											<div>step3</div>
											<span>할인/쿠폰</span>
										</div>
										<div class="col-2" id="step4">
											<div>step4</div>
											<span>수령방법</span>
										</div>
										<div class="col-2" id="step5">
											<div>step5</div>
											<span>결제방법</span>
										</div>
									</div>
								</div>
								<!-- 풀페이지 시작 -->
								<div class="col-12">
									<div id="fullpage">
										<div class="section fp-auto-height" data-anchor="section1">
											<div style="height: 890px;">
											<!-- 슬라이드 1 : 공연날짜 및 회차 선택 -->
												<div class="slide" data-anchor="slide1" id="slide1">
													<div class="row">
														<div class="col-6 text-center">
															<div class="card">
																<div class="card-body">
																	<span>관람일 선택</span>
																</div>
															</div>
															<div class="row">
																<div class="offset-4 col-5 offset-3">
																	<input type="text" class="selector" placeholder="날짜선택"
																		id="pickdate" /> <a class="input-button"
																		title="toggle" data-toggle><i
																		class="icon-calendar" id="calendar"></i></a>
																</div>
															</div>

														</div>
														<div class="col-6 text-center">
															<div class="card">
																<div class="card-body">
																	<span>회차 선택</span>
																</div>
															</div>
															<div class="text-left">
																<span><strong>선택날짜 : </strong></span> <span
																	id="performanceDate"></span>
															</div>
															<div class="row text-left" style="height: 70%">
																<div class="col-6">
																	<div class="card">
																		<div class="card-header">
																			<div>회차 선택</div>
																		</div>
																		<div class="card-body">
																			<div>
																				<table class="table">
																					<tbody id="performanceShow">
																					</tbody>
																				</table>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col-6">
																	<div class="card">
																		<div class="card-header">
																			<div>좌석등급/잔여석</div>
																		</div>
																		<div class="card-body" id="seatRate"></div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-12">
															<table class="table-bordered" style="width: 100%;">
																<colgroup>
																	<col width="10%" />
																	<col width="90%" />
																</colgroup>
																<tbody>
																	<tr>
																		<th class="text-center">유</th>
																		<td>- 안내되어 있는 잔여석은 결제 진행 중인 좌석을 포함하고 있어 예매 가능 좌석과 다를 수 있습니다.</td>
																	</tr>
																	<tr>
																		<th class="text-center">의</th>
																		<td>- 할인은 자동선택 되지 않으니, 적용 받고자 하는 할인이 있는 경우 직접 선택해주시기 바랍니다.</td>
																	</tr>
																	<tr>
																		<th class="text-center">사</th>
																		<td>- 장애인, 국가유공자, 학생 할인 등 증빙서류가 필요한 경우 현장수령만 가능하며, 현장에서 증빙서류 미지참 시 차액 지불하셔야 합니다.</td>
																	</tr>
																	<tr>
																		<th class="text-center">항</th>
																		<td>- 관람 당일 공연 예매 시에는 변경/취소/환불이 불가합니다.</td>
																	</tr>
																	<tr>
																		<th></th>
																		<td>- 경우에 따라 ATM 기기에서 가상계좌 입금이 안 될 수 있으니 가급적 인터넷/폰뱅킹 등을 이용해주시기 바랍니다.</td>
																	</tr>
																	<tr>
																		<th></th>
																		<td>- 예매 취소 시 예매수수료는 예매 당일 밤 12시 이전까지 환불되며, 그 이후 기간에는 환불되지 않습니다.</td>
																	</tr>
																	<tr>
																		<th></th>
																		<td>- 예매 취소 시점에 따라 취소수수료가 부과될 수 있습니다. 예매 후 취소마감시간과 함께 취소수수료를 꼭 확인해주시기 바랍니다.</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
												<!-- 슬라이드 2 : 좌석현황 보기 및 좌석등급 선택 -->
												<div class="slide" data-anchor="slide2" id="slide2">
													<div class="row">
														<div class="col-12">
															<div class="card">
																<div class="card-body text-center">
																	<span>좌석 현황</span>
																</div>
															</div>
															<div class="row">
																<div class="col-12">
																	<div class="card">
																		<div class="card-header text-center">
																			<span style="font-size: 50px;"><strong>STAGE</strong></span>
																		</div>
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="offset-3 col-6 offset-3">
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
																<div class="col-12">
																	<div class="row">
																		<div id="A-seats1" class="col-3"></div>
																		<div id="A-seats2" class="col-3"></div>
																		<div id="A-seats3" class="col-3"></div>
																		<div id="A-seats4" class="col-3"></div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<!-- 슬라이드 3 : 쿠폰 및 포인트 등 할인 사용 -->
												<div class="slide" data-anchor="slide3" id="slide3">
													<div class="row">
														<div class="col-12">
															<div class="card">
																<div class="card-body">쿠폰 선택</div>
															</div>
															<table class="table-bordered text-center"
																id="table-coupon" style="width: 100%; height: 100%">
																<colgroup>
																	<col width="30%" />
																	<col width="30%" />
																	<col width="30%" />
																</colgroup>
																<thead>
																	<tr>
																		<th>쿠폰명</th>
																		<th>할인금액</th>
																		<th>사용</th>
																	</tr>
																</thead>
																<tbody>
																	<c:forEach items="${LOGIN_USER.coupons }" var="coupon">
																		<tr>
																			<td>${coupon.name }</td>
																			<td><fmt:formatNumber value="${coupon.value }"
																					type="number" maxFractionDigits="3" /> 																					
																					<c:choose>
																						<c:when  test="${coupon.type eq 'per' }"> %</c:when>
																						<c:otherwise> 원</c:otherwise>
																					</c:choose></td>																																										
																			<td><input type="radio"
																				style="width: 20px; height: 20px;"
																				value="${coupon.value }" name="coupon-check" /></td>
																		</tr>
																	</c:forEach>
																	<tr>
																		<th colspan="2">사용안함</th>
																		<td><input type="radio" style="width: 20px; height: 20px;" value="0" name="coupon-check" checked="checked" /></td>
																	</tr>
																</tbody>
															</table>
															<div class="card">
																<div class="card-body">포인트 사용</div>
															</div>
															<div class="row">
																<div class="col-3">
																	<div class="card">
																		<div class="card-body">
																			<span><strong>포인트</strong></span>
																		</div>
																	</div>
																</div>
																<div class="col-3">
																	<div class="card">
																		<div class="card-body">
																			<span>소유 총 포인트</span> <span id="user-point"><fmt:formatNumber
																					value="${LOGIN_USER.point }" type="number"
																					maxFractionDigits="3"/></span><span>원</span>
																		</div>
																	</div>
																</div>
																<div class="col-3">
																	<div class="row">
																		<div class="col-1">
																			<input type="checkbox" id="point-allin"
																				style="width: 30px; height: 30px;" />
																		</div>
																		<div class="col-11">
																			<div class="card">
																				<div class="card-body">
																					<span>전액사용 (총</span> <span id="allin-point">0</span> <span>원)</span>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col-3">
																	<input type="number" id="self-point" placeholder="직접입력" />
																</div>
															</div>
														</div>
													</div>
												</div>
												<!-- 슬라이드 4 : 수령방법 -->
												<div class="slide" data-anchor="slide4" id="slide4">
													<div class="row">
														<div class="col-12">
															<div class="card">
																<div class="card-body">수령방법</div>
															</div>
															<div class="row">
																<div class="col-2">
																	<div class="card">
																		<div class="card-body">
																			<span>수령방법 선택</span>
																		</div>
																	</div>
																</div>
																<div class="col-10">
																	<div class="card">
																		<div class="card-body">
																			<input type="radio"
																				style="width: 15px; height: 15px;" checked="checked"
																				disabled /> 현장수령
																		</div>
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-4">
																	<table class="table" id="receive-type">
																		<tbody>
																			<tr>
																				<th><input type="radio" name="receiveType" value="sms" />
																					SMS</th>
																				<td><input type="radio" name="receiveType" value="kakao" />
																					카카오톡</td>
																				<td><input type="radio" name="receiveType" value="email" />
																					이메일</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
															<div class="row">
																<div class="col-12">
																	<div class="card">
																		<div class="card-body">
																			* 주의 사항 * 부정확한 정보 입력으로 인한 문제 발생 시 예스24는 책임을 지지 않습니다.
																			<br /> 1) 배송 선택 시 티켓 수령자의 배송지 정보를 정확히 입력해주시기 바랍니다. <br />
																			2) 티켓은 유가증권으로 본인에게 직접 전달해야하며, 분실된 티켓은 재발권 되지 않습니다. <br />
																			3) 일괄배송의 경우 정해진 날짜에 티켓 배송이 시작되며, 주소 수정은 일괄배송일 2일 전까지
																			가능합니다. <br /> 4) 예매 티켓 배송은 예매완료일, 혹은 일괄배송일로부터
																			4~5일(영업일 기준) 이내 수령 가능합니다. <br /> 5) 긴급연락처는 공연 취소와 같은
																			유사 시 안내 받으실 연락처이므로 정확히 입력해주시기 바랍니다. <br /> 6) 이메일 정보
																			미 입력 시 예매 관련 안내 메일을 받을 수 없으니 이메일 받기를 원하시는 경우 마이페이지에서
																			회원정보를 수정해주시기 바랍니다.
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<!-- 슬라이드 5 : 결제방법 선택 및 약관동의 -->
												<div class="slide" data-anchor="slide5" id="slide5">
													<div class="row">
														<div class="col-12">
															<div class="card">
																<div class="card-body">결제 방법</div>
															</div>
															<div class="row">
																<div class="col-2">
																	<span>결제방법 선택</span>
																</div>
																<div class="col-10" id="pay-method">
																	<input type="radio" name="payMethod" value="카드결제"
																		id="creditcard" checked="checked" /> 신용카드 <input
																		type="radio" name="payMethod" value="현금결제" id="check" />
																	무통장입금 <select name="bank" id="payradio" disabled>
																		<option value="국민은행">국민은행</option>
																		<option value="신한은행">신한은행</option>
																		<option value="농협은행">농협은행</option>
																		<option value="우리은행">우리은행</option>
																	</select>
																</div>
															</div>
															<div class="row">
																<div class="col-12" style="width: 100%;">
																	<span style="color: red;">취소 가능 마감 시간 : 2020년
																		08월 20일 17시까지</span>
																</div>
															</div>
															<div class="row">
																<div class="col-12">
																	<table class="table table-borderd" style="width: 100%;">
																		<colgroup>
																			<col width="20%" />
																			<col width="20%" />
																			<col width="60%" />
																		</colgroup>
																		<thead>
																			<tr>
																				<th>내용</th>
																				<th>취소수수료</th>
																				<th>비고</th>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td>예매 후 7일 이내</td>
																				<td>없음</td>
																				<td rowspan="5">
																					<p>
																						- 취소 시 예매수수료는 예매 당일 밤 12시 이전까지만 환불됩니다. <br /> -
																						취소 시 예매수수료는 예매 당일 밤 12시 이전까지만 환불됩니다. <br /> - 취소
																						시 예매수수료는 예매 당일 밤 12시 이전까지만 환불됩니다. <br /> - 취소 시
																						예매수수료는 예매 당일 밤 12시 이전까지만 환불됩니다. <br /> - 취소 시
																						예매수수료는 예매 당일 밤 12시 이전까지만 환불됩니다.
																					</p>
																				</td>
																			</tr>
																			<tr>
																				<td>예매 후 8일 ~ 관람일 10일 전까지</td>
																				<td>
																					<p>뮤지컬, 콘서트, 클래식 등: 장당 4,000원/</p>
																				</td>
																			</tr>
																			<tr>
																				<td>예매 후 7일 이내</td>
																				<td>없음</td>
																			</tr>
																			<tr>
																				<td>예매 후 7일 이내</td>
																				<td>없음</td>
																			</tr>
																			<tr>
																				<td>예매 후 7일 이내</td>
																				<td>없음</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
															<div class="row">
																<div class="col-6 text-right">
																	<input type="checkbox" id="cancel-check" /> 취소수수료 및 취소기한을 확인하였습니다.
																</div>
																<div class="col-6">
																	<input type="checkbox" id="third-check" /> 제 3자 정보제공 내용에 동의합니다.
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
						<!-- 우측 공연 정보 및 현재 결제 진행 상황창 -->
						<div class="col-3" style="height: 890px;">
							<div class="row">
								<div class="col-12">
									<table class="table-bordered" style="margin-bottom: 10px;">
										<tbody>
											<tr>
												<th rowspan="3"><img alt="sample-image"
													src="/resources/sample-images/${performanceDto.imagePath }"
													style="width: 150px; height: 200px;"></th>
												<td>[${performanceDto.category}]
													${performanceDto.title}</td>
											</tr>
											<tr>
												<td><fmt:formatDate
														value="${performanceDto.startDate }" pattern="yyyy-MM-dd" />
													~ <br />
												<fmt:formatDate value="${performanceDto.endDate }"
														pattern="yyyy-MM-dd" /></td>
											</tr>
											<tr>
												<td>${performanceDto.hallinfo.name }</td>
											</tr>
										</tbody>
									</table>
									<table class="table-bordered"
										style="width: 270px; height: 200px;">
										<colgroup>
											<col width="40%" />
											<col width="60%" />
										</colgroup>
										<tbody>
											<tr>
												<th class="text-center">날짜</th>
												<td id="showDate"></td>
											</tr>
											<tr>
												<th class="text-center">시간</th>
												<td id="showTime"></td>
											</tr>
											<tr>
												<th class="text-center">매수</th>
												<td>1매</td>
											</tr>
											<tr>
												<th class="text-center">좌석</th>
												<td>미정</td>
											</tr>
										</tbody>
									</table>
									<table class="table-bordered" id="table-paystatus"
										style="width: 270px; height: 300px; margin-top: 10px;">
										<colgroup>
											<col width="40%" />
											<col width="60%" />
										</colgroup>
										<tbody id="pay-status">
											<tr>
												<th>결제내역</th>
												<td class="text-right">
													<span>0</span> <span>원</span>
												</td>
											</tr>
											<tr>
												<th>티켓금액</th>
												<td class="text-right">
													<span id="ticket-price">0</span> <span>원</span>
												</td>
											</tr>
											<tr>
												<th>예매수수료</th>
												<td class="text-right">1,000 원</td>
											</tr>
											<tr>
												<th>총 금액(+)</th>
												<td class="text-right">
													<span id="total-price">0</span> <span>원</span>
												</td>
											</tr>
											<tr>
												<th>할인쿠폰</th>
												<td class="text-right">
													<span id="coupon">0</span> <span>원</span>
												</td>
											</tr>
											<tr>
												<th>포인트머니</th>
												<td class="text-right">
													<span id="point">0</span> <span>원</span>
												</td>
											</tr>
											<tr>
												<th>총할인금액(-)</th>
												<td class="text-right">
													<span id="total-discount">0</span> <span>원</span>
												</td>
											</tr>
										</tbody>
										<tbody id="seat-status" style="display: none;">
											<tr>
												<th class="text-center" style="background-color: #00FFFF;">R석</th>
												<td class="text-center"><input type="radio"
													name="seatGrade" value=""
													style="width: 25px; height: 25px; border: 10px;"
													id="r-seat"></td>
											</tr>
											<tr>
												<th class="text-center" style="background-color: #F3F781;">S석</th>
												<td class="text-center"><input type="radio"
													name="seatGrade" value=""
													style="width: 25px; height: 25px; border: 10px;"
													id="s-seat"></td>
											</tr>
											<tr>
												<th class="text-center" style="background-color: #81F781;">A석</th>
												<td class="text-center"><input type="radio"
													name="seatGrade" value=""
													style="width: 25px; height: 25px; border: 10px;"
													id="a-seat"></td>
											</tr>
										</tbody>
									</table>
									<br />
									<table style="width: 270px;">
										<tbody>
											<tr>
												<th>최종결제금액</th>
												<td>
													<span id="total-bill"></span> <span>원</span>
												</td>
											</tr>
										</tbody>
									</table>
									<br />
									<div id="all-btns">
										<button id="prevslide" class="btn btn-secondary"
											style="width: 125px;" disabled>이전</button>
										<button id="nextslide" class="btn btn-primary"
											style="width: 125px;">다음</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- DB에 전달해줄 히든 폼 -->
		<form:form class="reserve-pay-form" method="post" action="add.do" id="reserve-pay-form" modelAttribute="paymentForm">
			<div class="form-group">
				<form:input type="hidden" path="userId" class="form-control" name="userId" value="${LOGIN_USER.id }" />
			</div>
			<div class="form-group">
				<form:input type="hidden" path="performanceId" class="form-control" name="performanceId" id="performance-id" value="" />
			</div>
			<div class="form-group">
				<form:input type="hidden" path="pay" class="form-control" name="pay" id="reserve-pay" value="" />
			</div>
			<div class="form-group">
				<form:input type="hidden" path="method" class="form-control" name="method" id="reserve-method" value="" />
			</div>
			<div class="form-group">
				<form:input type="hidden" path="payMethodReal" class="form-control" name="payMethodReal" id="pay-method-Real" value="" />
			</div>
			<div class="form-group">
				<form:input type="hidden" path="usedPoint" class="form-control" name="usedPoint" id="reserve-usedPoint" value="0" />
			</div>
			<div class="form-group">
				<form:input type="hidden" path="seatRate" class="form-control" name="seatRate" id="reserve-seatRate" value="" />
			</div>
		</form:form>
		
		<input type="hidden" value="${LOGIN_USER.point }" id="user-point-real"/>
		<input type="hidden" id="r-seat-price" />
		<input type="hidden" id="s-seat-price" />
		<input type="hidden" id="a-seat-price" />
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.8.9/jquery.fullPage.min.js"></script>
	<script type="text/javascript">	
	
		$(document).ready(
				
				
				function() {					
					var currentSlideNo = 1;
					
					$('#fullpage').fullpage(
							{
								//options here
								slidesNavigation : false,
								autoScrolling : false,
								navigation : false,
								controlArrows : false,
								keyboardScrolling : true,
								loopHorizontal : false,
								navigationPosition : 'right',
								sectionsColor : [ '#ffffff', '#ffffff',
										'#ffffff', '#ffffff', '#ffffff' ],
								afterSlideLoad: function(section, origin, destination, direction) {

											if (destination == 'slide1') {
												$('#seat-status').css('display', 'none');
												$('#pay-status').css('display', '');
												$('#ticket-price').text(0);
												$('#coupon').text(0);
												$('#total-discount').text(0);
												$('#total-price').text(0);
												$('#prevslide').prop('disabled', true);
												$('#step2').animate({backgroundColor : 'white'});
												$('#step2').animate({color : 'black'});
												$('#step1').css('background-color','#FF0000');
												$('#step1').css('color','white');
												$('#step1').prop('class', 'col-4');
												$('#step2').prop('class', 'col-2');												
											}
												
											if (destination == 'slide2') {
												$('#pay-status').css('display', 'none');
												$('#seat-status').css('display', '');
												$('#prevslide').prop('disabled', false);
												$('#coupon').text(0);
												$('#table-coupon tbody :radio').prop('checked', false);
												$('#total-discount').text(0);
												$('#step1').animate({backgroundColor : 'white'});
												$('#step1').animate({color : 'black'});
												$('#step2').animate({backgroundColor : '#FF0000'}, 500);
												$('#step2').animate({color : 'white'}, 500);
												$('#step3').animate({backgroundColor : 'white'});
												$('#step3').animate({color : 'black'});
												$('#step1').prop('class', 'col-2');
												$('#step2').prop('class', 'col-4');
												$('#step3').prop('class', 'col-2');
												$("#r-seat").val($("#r-seat-price").val());
												$("#s-seat").val($("#s-seat-price").val());
												$("#a-seat").val($("#a-seat-price").val());																							
											}
											
											if (destination == 'slide3') {
												$('#seat-status').css('display', 'none');
												$('#pay-status').css('display', '');
												$('#step2').animate({backgroundColor : 'white'});
												$('#step2').animate({color : 'black'});
												$('#step3').animate({backgroundColor : '#FF0000'}, 500);
												$('#step3').animate({color : 'white'}, 500);
												$('#step4').animate({backgroundColor : 'white'});
												$('#step4').animate({color : 'black'});
												$('#step2').prop('class', 'col-2');
												$('#step3').prop('class', 'col-4');
												$('#step4').prop('class', 'col-2');
											}
											
											if (destination == 'slide4') {
												$('#step3').animate({backgroundColor : 'white'});
												$('#step3').animate({color : 'black'});
												$('#step4').animate({backgroundColor : '#FF0000'}, 500);
												$('#step4').animate({color : 'white'}, 500);
												$('#step5').animate({backgroundColor : 'white'});
												$('#step5').animate({color : 'black'});
												$('#step3').prop('class', 'col-2');
												$('#step4').prop('class', 'col-4');
												$('#step5').prop('class', 'col-2');
												$('#charge').attr('id', 'nextslide').text('다음').removeClass('btn-info').addClass('btn-primary');
											}
											
											if (destination == 'slide5') {
												$('#step4').animate({backgroundColor : 'white'});
												$('#step4').animate({color : 'black'});
												$('#step5').animate({backgroundColor : '#FF0000'}, 500);
												$('#step5').animate({color : 'white'}, 500);
												$('#step4').prop('class', 'col-2');
												$('#step5').prop('class', 'col-4');
												$('#nextslide').attr('id', 'charge').text('결제').removeClass('btn-primary').addClass('btn-info');
												
												// hidden에 사용한 포인트 저장
												$('#reserve-usedPoint').val($('#point').val()*-1);
												
												$('#all-btns').on('click','#charge',function() {
													var payRadio = $('#payradio').val();
													
													if ($('#check').is(':checked') == true) {														
														if ($('#payRadio').val() == '') {
															alert("은행을 선택해주세요.");
															return;
														}
													}
													
													if ($('#cancel-check').is(":checked") == false) {
														alert("취소 및 취소수수료 기한 동의란에 체크해주세요.");
														return;
													}
													
													if ($('#third-check').is(":checked") == false) {
														alert("제 3자 정보제공 내용 동의란에 체크해주세요.");
														return;
													}
																										
													$('#reserve-pay-form').submit();
												})												
											}
											
											$('input[name=payMethod]').click(function(){												
												if($('#check').is(':checked')){
												    $('#payradio').prop('disabled', false);
												} else {
													$('#payradio').prop('disabled', true);
												}
											});											
								}																
							});	
					
					$('#nextslide').click(function() {
						
						var showDate = $('#showDate').val();
						var receiveType = $('#reserve-method').val();						

							if (!showDate) {
								alert("공연 날짜를 선택해주세요.");
								currentSlideNo = 1;
								return;
							} 
						
						if (currentSlideNo == 2) {
							if (!$('input:radio[name="seatGrade"]').is(':checked')) {
								alert("좌석 등급을 선택해주세요.");
								currentSlideNo = 2;
								return;
							}						
						}		
						
						if (currentSlideNo == 4) {							
							if (!receiveType) {
								alert("세부 수령방법을 선택해주세요");
								currentSlideNo = 4;
								return;
							}
						}
						var totalBill = $('#total-bill').val();
						$('#reserve-pay').val(totalBill);
						
						currentSlideNo++;
						$.fn.fullpage.moveSlideRight();							
					});
					
					$('#prevslide').click(function() {
						currentSlideNo--;
						$.fn.fullpage.moveSlideLeft();
					});					
				});
		
		$(".selector").flatpickr({ 
			dateFormat: "Y-m-d",
			minDate: '<fmt:formatDate value="${performanceDto.startDate}" pattern="yyyy-MM-dd" />',
			maxDate: '<fmt:formatDate value="${performanceDto.endDate}" pattern="yyyy-MM-dd" />',
			inline: true,
			onChange: function(selectedDate, selectedDateString, instance) {
				$.ajax({
					type:"GET",
					url:"performanceSchedule.do",
					data: {no:'${performanceDto.performanceId}', date:selectedDateString},
					dataType:"json",
					success:function(performanceSchedules) {
						var performanceShow = $('#performanceShow')
						performanceShow.empty();
						var performanceDate = $('#performanceDate')
						
						for (var i=0; i<performanceSchedules.length; i++) {
							//$('.performanceShow').
								var rows = '<tr>'
								rows += '<td > <a href="#" data-no="'+performanceSchedules[i].id+'">['+performanceSchedules[i].showNumber+']회</a></td>'
								rows += '<td>'+performanceSchedules[i].showTime+'</td>'
								rows += '</tr>'
								
								performanceShow.append(rows);
								performanceDate.text(performanceSchedules[i].showDate);								
						}
					}
				})	
			}
		});
				
		$("#performanceShow").on('click', 'a', function(event) {
			event.preventDefault();
			var performanceMainId = $(this).data("no");
			$('#performance-id').val(performanceMainId);
			var performanceDate = $('#performanceDate').text();
			$.ajax({
				type:"GET",
				url:"performanceMain.do",
				data:{no:performanceMainId},
				dataType:"json",
				success:function(performanceDto) {
					var showDate = $('#showDate');
					var showTime = $('#showTime');
					var seatRate = $('#seatRate');
					showDate.empty();
					showTime.empty();
					seatRate.empty();
					var schedule = performanceDto.schedule[0]
					var seats = performanceDto.seatPrice
					showDate.append(schedule.showDate);
					showDate.val(schedule.showDate);
					showTime.append("["+schedule.showNumber+"]"+"회"+" "+schedule.showTime);
					var rows = new Array()
					for (var i=0; i<seats.length; i++) {
						var row = '<div>'
							row += '<span>'+seats[i].seatRate+"석"+'</span>'
							row += '<span>'+seats[i].price+"원"+"(잔여: 96 석)"+'</span>'
							row += '</div>';
							
						rows[i] = row;
						
						if (seats[i].seatRate == 'R') {
							$('#r-seat-price').val(seats[i].price);
						} else if (seats[i].seatRate == 'S'){
							$('#s-seat-price').val(seats[i].price);
						} else {
							$('#a-seat-price').val(seats[i].price);
						}						
					}					
					seatRate.append(rows[1]);
                    seatRate.append(rows[2]);
                    seatRate.append(rows[0]);
				}
			})
		})
		
		$('input[name="seatGrade"]').on('change', function() {
			var ticketPrice = $(this).val();
			var fees = 1000;
			var totalPrice = Number(ticketPrice) + Number(fees);
			var seatGrade = $('input[name="seatGrade"]');
			
			if($(this).is(':checked')) {
				$('#ticket-price').empty().val(ticketPrice).prepend(ticketPrice);
				$('#total-price').empty().val(totalPrice).prepend(totalPrice);
				$('#total-bill').empty().val(totalPrice).prepend(totalPrice);
			}
			var checkedRadio = $('input[name=seatGrade]:radio:checked').attr('id');
			var seatRate = '';
			if (checkedRadio == 'r-seat') {
				seatRate = 'R';
			} else if (checkedRadio == 's-seat'){
				seatRate = 'S';
			} else {
				seatRate = 'A';
			}
			$('#reserve-seatRate').val(seatRate);			
		});
		
		var calcBill = function(){
			var ticketPrice = $('#ticket-price').val()? $('#ticket-price').val()*1 : 0;
			var fees = 1000;
			var point = $('#point').val() ? $('#point').val() * 1 : 0;
			var couponValue = $('#coupon').val()?$('#coupon').val() * 1 : 0;
			var total = 0;

			if(couponValue > 100){
				total = ticketPrice - point - couponValue + fees
			}else if(couponValue > 0){
				total = ticketPrice - point - (ticketPrice * couponValue / 100) + fees
			} else {
				total = ticketPrice - point - couponValue + fees
			}

			$('#total-bill').empty();
			$('#total-bill').val(total);
			$('#total-bill').prepend(total);
		};
		
		$('#table-coupon tbody :radio').on('click', function() {
			var ticketPrice = $('#ticket-price').val();
			var fees = 1000;
			var totalPrice = Number(ticketPrice) + Number(fees);
			var couponValue = $(this).val();
			var usePoint = 0;
			var discountPrice = couponValue + usePoint;
			var totalBill = totalPrice - discountPrice;
			
			var couponShow = $('#coupon');
			var totalDiscount = $('#total-discount');
			
			if($(this).prop('checked')) {			
				couponShow.empty();
				totalDiscount.empty();
				$('#coupon').val(couponValue);
				couponShow.append(Math.floor(couponValue));
				totalDiscount.append(Math.floor(discountPrice));
			}
			calcBill()
			// document.queryselector("#discountResult").value = discountPrice;
		});
		
		$('#point-allin').on('change', function() {
			var $allIn = $('#allin-point');
			var $pointShow = $('#point');
			var userPoint = $('#user-point-real').val() * 1;
			var totalPrice = $('#total-price').val() * 1;
			var totalBill = $('#total-bill').val() * 1;
			var coupon = (($('#coupon').val() == '') ? 0 : $('#coupon').val()) * 1;	
			
			if ($(this).prop('checked')) {
				$('#self-point').prop('disabled', true);
				$allIn.empty();
				$pointShow.empty();
				if (totalBill >= userPoint) {
					$allIn.append(userPoint);
					$pointShow.empty();
					$pointShow.prepend(userPoint);
					$pointShow.val(userPoint);
					var discountPrice = coupon + userPoint;
					$('#total-discount').empty();
					$('#total-discount').prepend(Math.floor(discountPrice));
				} else {
					$allIn.append(totalBill);
					$pointShow.append(totalBill);
					var discountPrice = coupon + userPoint;
					$('#total-discount').empty();
					$('#total-discount').prepend(Math.floor(discountPrice));
				}
			} else {
				var discountPrice = coupon;
				$('#self-point').prop('disabled', false);
				$allIn.empty();
				$pointShow.empty();
				$allIn.text(0);
				$pointShow.text(0);
				$pointShow.val('');
				$('#total-discount').empty();
				// $('#total-discount').prepend(Math.floor(discountPrice));			
			}			
			calcBill()
		});
		
		$('#self-point').on('keyup', function() {
			$('#point-allin').prop('disabled', true);
			var $pointShow = $('#point');
			var userPoint = $('#user-point-real').val() * 1;
			var selfPoint = $('#self-point').val() * 1;
			var totalPrice = $('#total-price').val();
			var totalBill = $('#total-bill').val();
			var coupon = (($('#coupon').val() == '') ? 0 : $('#coupon').val()) * 1;
			
			if (selfPoint > userPoint) {
				$('#self-point').val(userPoint);
				$pointShow.empty();
				$pointShow.val(userPoint);
				$pointShow.append(userPoint);
				var discountPrice = Number(coupon) + Number(userPoint);
				$('#total-discount').empty();
				$('#total-discount').prepend(Math.floor(discountPrice));
			} else {
				var selfPointType = $('#self-point').val();
				$pointShow.empty();
				$pointShow.val(selfPointType);
				$pointShow.append(selfPointType);
				var discountPrice = Number(coupon) + Number(selfPointType);
				$('#total-discount').empty();
				$('#total-discount').prepend(Math.floor(discountPrice));		
			}
			
			calcBill()
			
			if ($('#self-point').val() == '') {
				$('#point-allin').prop('disabled', false);
			}
		});

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
		
		// hidden 폼에 들어갈 값들
		var totalBill = $('#total-bill').val();
		$('#reserve-pay').val(totalBill);
		
		$('#receive-type tbody :radio').on('click', function() {			
			var receiveType = $(this).val();
			$('#reserve-method').val(receiveType);
		});
			
		//hidden 에 결제 방법 저장
		$('#pay-method-Real').val($('input[name=payMethod]').val());
			
		$('input[name=payMethod]:radio').on('click', function() {
			var methodType = $(this).val();
			$('#pay-method-Real').val(methodType);
		});
		
		$('#payradio').on('click', function() {
			var selectedBank = $(this).val();
			$('#payradio').val(selectedBank);
		});
		
</script>
</body>
</html>