<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
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
<link rel="stylesheet" href="/resources/css/card.css" />
<link rel="stylesheet" href="/resources/css/ticket.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
<script type="text/javascript" src="/resources/js/matelist.js"></script>

</head>
<style>
</style>
<body>
	<div class="header">
		<%@ include file="../common/navi.jsp"%>
	</div>
	<div class="body" style="margin-top:70px; background-color: rgba(0,0,0,0.6);">
		<div class="container">
			<div class="row">
				<div class="offset-4 col-8">
					<div class="col-12">
						<table class="table table-bordered mt-3">
							<thead style="background-color: #353535" class="text-white">
								<tr>
									<th>
										<div class="h2 mt-2 text-center">
										<c:if test="${not empty mateList }">
										<c:forEach begin="1" end="1" var="mate" items="${mateList }">
											<span style="display: none;cursor: pointer; " id="mate-card-left"><i class="fas fa-chevron-left"></i></span>
											<span class="h1 font-weight-bold text-warning">${mate.performance.title }</span>
										</c:forEach>
										</c:if>
										</div>
										<div class="h1 text-center font-italic mt-5">
											
											<span style="border: 1px solid white; padding: 1rem;">PERFORMANCE WITH MATE</span>
										</div>
										<div class="h4 text-center mt-5 text-monospace font-weight-bold">
											공연을 함께볼 메이트를 선택하세요
										</div>
									</th>
								</tr>
							</thead>
							<tbody>
							<c:if test="${not empty mateList }">
							<c:forEach items="${mateList }" var="mate">
								<tr>
									<td class="table-secondary">
									<div class="item">
										<c:forEach var="schedule" items="${mate.performance.schedule }" >
											<div class="item-right">
												<h2 class="num">
												<fmt:formatDate value="${schedule.showDate }" pattern="MM/dd" />
												</h2>
												<p class="day"><span>
												<fmt:formatDate value="${schedule.showDate }" pattern="E"/>
												</span>요일
												</p>
												<div class="text-center">
													<button class="btn btn-primary mt-2" style="width: 130px;">좌석미리보기</button>
													<a href="addMate.do?mnum=${mate.id }&pid=${mate.performance.id}" class="btn btn-primary mt-2" style="width: 130px;">참가</a>
													<button class="btn btn-primary add-mate-btn" data-mnum=${mate.id } data-pid=${mate.performance.id } type="button">참가2</button>
												</div>
												<div class="mt-3"></div>
												<span class="up-border"></span> <span class="down-border"></span>
											</div>
										</c:forEach>
											<!-- end item-right -->

											<div class="item-left">
												<div class="row">
													<div class="col-12">
														<h2 class="title">${mate.category }</h2>
														<div class="event text-primary text-truncate mt-2">
														<c:forEach items="${mate.mateTags }" var="tag">
															<span>${tag.tagName }</span>
														</c:forEach>
														</div>
														<div class="mt-5 text-muted	"
															style="border-bottom: 1px solid gray;">
															<i class="fas fa-flag"></i> 인원 
															<c:choose>
																<c:when test="${not empty mate.mateMembers }" >
																	<c:forEach items="${mate.mateMembers }" varStatus="status">
																		<c:if test="${status.last }">
																			<span class="ml-2">${status.count }</span>
																		</c:if>	
																	</c:forEach>
																</c:when>
																<c:otherwise>
																	<span class="ml-2">0</span>
																</c:otherwise>
															</c:choose>
															<span>/</span> <span>${mate.groupsize }</span>
														</div>
														<div style="border-bottom: 1px solid gray;">
															<div class="text-muted">
																<i class="fas fa-user-friends"></i> 참여자 : 
																<c:choose>
																	<c:when test="${empty mate.mateMembers }">
																		<span class="text-info">참여한 메이트가 없습니다</span>
																	</c:when>
																	<c:otherwise>
																		<c:forEach items="${mate.mateMembers }" var="user">
																		<span>${user.id }</span>
																		</c:forEach>
																	</c:otherwise>
																</c:choose>
															</div>
															<div></div>
														</div>
														<div class="fix"></div>
														<div class="loc">
															<div class="text-muted">
																<i class="fas fa-couch"></i> 좌석번호 : <span>H1</span> <span>H2</span>
																<span>H3</span>
															</div>
														</div>
													</div>

												</div>
											</div>

											<!-- end item-right -->
										</div>
									</td>
								</tr>
								</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
			<div class="footer" style="background-color: #fff !important;">
				<%@ include file="../common/footer.jsp" %>
			</div>
	</div>
	<!-- 해당 공연의 정보가 있는 카드 -->
	<div id="mate-override-card" class='music-card playing'>
	<c:if test="${not empty mateList }">
	<c:forEach begin="1" end="1" var="mate" items="${mateList }">
			<div id="card-x-btn" class="text-right m-2 text-white" style="position: absolute; z-index: 20; cursor: pointer;">
				<i class="far fa-times-circle fa-2x"></i>	
			</div>
		<div class='image'
			style='background-image: url("${mate.performance.imagePath }")'>
		</div>

		<div class='wave'></div>
		<div class='wave'></div>
		<div class='wave'></div>

		<div class='info'>
			<div class="row mt-4">
				<div class="col-12">
					<h4 style="display: inline-block;">
						<span>${mate.seatRate }</span>석 메이트방
					</h4>
					<small><span class="ml-2">개설</span> <span>${mateCount }</span> <span>개</span>
					</small>
				</div>
				<form method="post">
				<div class="col-12">
					<div class="input-group">
						<div class="input-group-prepend">
							<label class="input-group-text" for="inputGroupSelect01">카테고리</label>
						</div>
						<select class="custom-select" id="inputGroupSelect01">
							<option selected>카테고리를 선택하세요</option>
								<c:forEach items="${category }" var="cat">
									<option value="${cat.id }">${cat.category }</option>
								</c:forEach>
						</select>
					</div>
				</div>
				<div class="col-12 mt-2">
					<div class="form-control">
						<span class="h5">2인방</span> <input type="checkbox"
							class="input-control" checked="checked" />
					</div>
					<div class="form-control mt-1">
						<span class="h5">3인방</span> <input type="checkbox"
							class="input-control" checked="checked" />
					</div>
					<div class="form-control mt-1">
						<span class="h5">모집중</span> <input type="checkbox"
							class="input-control" checked="checked" />
					</div>
					<div class="form-control mt-1">
						<span class="h5">빈방</span> <input type="checkbox"
							class="input-control" checked="checked" />
					</div>
					<div class="mt-1">
						<button type="button" class="btn btn-primary btn-lg btn-block">찾기</button>
					</div>
				</div>
				</form>
			</div>
		</div>
	</c:forEach>
	</c:if>
	</div>
	
	<div>
	</div>
	<!-- 해당 공연의 정보가 있는 카드 end -->
	<script type="text/javascript">
	 	$('#card-x-btn').click(function(){
	 		$('#mate-override-card').hide();
	 		$('#mate-card-left').show();
	 	});
	 	$('#mate-card-left').click(function(){
	 		$('#mate-override-card').show();
	 		$('#mate-card-left').hide();
	 	});
	</script>
</body>
</html>