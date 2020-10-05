<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
										<!-- 메이트 방 타이틀 -->
										<c:if test="${not empty mateInfo }">
										<c:forEach begin="1" end="1" var="mate" items="${mateInfo }">
											<span style="display: none;cursor: pointer; " id="mate-card-left"><i class="fas fa-chevron-left"></i></span>
											<span class="h1 font-weight-bold text-warning">${mate.performance.title }</span>
										</c:forEach>
										</c:if>
										<!-- 메이트방 타이틀 -->
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
							<!-- 메이트 티켓, 참여한 메이트 방이 있을 시에  -->
							<c:if test="${mate ne null}">
										<tr>
											<td class="table-secondary">
											<div class="item">
												<c:forEach var="schedule" items="${mate.performance.schedule }" >
													<div class="item-right">
														<h3 class="text-danger font-weight-bold text-center">${mate.seatRate }<span>석</span></h3>
														<h2 class="num">
														<fmt:formatDate value="${schedule.showDate }" pattern="MM/dd" />
														</h2>
														<p class="day"><span>
														<fmt:formatDate value="${schedule.showDate }" pattern="E"/>
														</span>요일
														</p>
														<div class="text-center">
															<button class="btn btn-primary mt-2" style="width: 130px;">좌석미리보기</button>
															<a href="matedetail.do?pid=${mate.performance.id }&mnum=${mate.id}" class="btn btn-warning show-mate-btn mt-2" style="width: 130px;" type="button">들어가기</a>
														</div>
														<div class="mt-3"></div>
														<span class="up-border"></span> <span class="down-border"></span>
													</div>
												</c:forEach>
													<!-- end item-right -->
		
													<div class="item-left">
														<div class="row">
															<div class="col-12">
																<div>
																	<h2 class="title" style="display: inline-block;">${mate.category }</h2>
																	 <span class="badge badge-info">${mate.status }</span>
																</div>
																<div class="event text-primary text-truncate mt-2">
																<c:forEach items="${mate.mateTags }" var="tag">
																	<span>${tag.tagName } ,</span>
																</c:forEach>
																</div>
																<div class="mt-5 text-muted	"
																	style="border-bottom: 1px solid gray;">
																	<i class="fas fa-flag"></i> 인원 
																	<c:choose>
																		<c:when test="${not empty mate.mateMembers }" >
																			<c:forEach items="${mate.mateMembers }" varStatus="status">
																				<c:if test="${status.last }">
																					<span id="mate-mem-now-count" class="ml-2">${status.count }</span>
																				</c:if>	
																			</c:forEach>
																		</c:when>
																		<c:otherwise>
																			<span id="mate-mem-now-count" class="ml-2">0</span>
																		</c:otherwise>
																	</c:choose>
																	<span>/</span> <span id="mate-mem-now-count">${mate.groupsize }</span>
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
																				<span class="text-primary">${user.id } /</span>
																				</c:forEach>
																			</c:otherwise>
																		</c:choose>
																	</div>
																	<div></div>
																</div>
																<div class="fix"></div>
																<div class="loc">
																	<div class="text-muted">
																		<c:set var="seatGroup" value="${mate.seatGroup }" />
																		<i class="fas fa-couch"></i> 좌석번호 : 
																		<span>${seatGroup }</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- end item-right -->
												</div>
											</td>
										</tr>
								</c:if>
								<!-- 메이트 티켓, 참여한 메이트 방이 있을 시에  -->
								<!-- 메이트 티켓, 참여한 메이트 방이 없을 시에 -->
								<c:if test="${not empty mateList }">
								<c:forEach items="${mateList }" var="mate">
									<c:if test="${mate.id ne mateUser.mate.id }">
										<tr>
											<td class="table-secondary">
											<div class="item">
												<c:forEach var="schedule" items="${mate.performance.schedule }" >
													<div class="item-right">
														<h3 class="text-danger font-weight-bold text-center">${mate.seatRate }<span>석</span></h3>
														<h2 class="num">
														<fmt:formatDate value="${schedule.showDate }" pattern="MM/dd" />
														</h2>
														<p class="day"><span>
														<fmt:formatDate value="${schedule.showDate }" pattern="E"/>
														</span>요일
														</p>
														<div class="text-center">
															<button class="btn btn-primary mt-2" style="width: 130px;">좌석미리보기</button>
														<c:choose>
															<c:when test="${LOGIN_USER.id eq mateUser.user.id && mate.id eq mateUser.mate.id }">
																<a href="matedetail.do?pid=${mate.performance.id }&mnum=${mate.id}" 
																class="btn btn-warning show-mate-btn mt-2" style="width: 130px;" type="button">들어가기</a>
															</c:when>
															<c:otherwise>
																<button class="btn btn-primary add-mate-btn mt-2" data-mnum=${mate.id } data-pid=${mate.performance.id } 
																	${empty mateUser.mate ? "" : "disabled" }
																style="width: 130px;" type="button">참가하기</button>
															</c:otherwise>
														</c:choose>
														</div>
														<div class="mt-3"></div>
														<span class="up-border"></span> <span class="down-border"></span>
													</div>
												</c:forEach>
													<!-- end item-right -->
		
													<div class="item-left">
														<div class="row">
															<div class="col-12">
																<div>
																	<h2 class="title" style="display: inline-block;">${mate.category }</h2>
																	 <span class="badge badge-info">${mate.status }</span>
																</div>
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
																					<span id="mate-mem-now-count" class="ml-2">${status.count }</span>
																				</c:if>	
																			</c:forEach>
																		</c:when>
																		<c:otherwise>
																			<span id="mate-mem-now-count" class="ml-2">0</span>
																		</c:otherwise>
																	</c:choose>
																	<span>/</span> <span id="mate-mem-now-count">${mate.groupsize }</span>
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
																				<span class="text-primary">${user.id } /</span>
																				</c:forEach>
																			</c:otherwise>
																		</c:choose>
																	</div>
																	<div></div>
																</div>
																<div class="fix"></div>
																<div class="loc">
																	<div class="text-muted">
																		<c:set var="seatGroup" value="${mate.seatGroup }" />
																		<i class="fas fa-couch"></i> 좌석번호 : 
																		<span>${seatGroup}</span>
																	</div>
																</div>
															</div>
		
														</div>
													</div>
		
													<!-- end item-right -->
												</div>
											</td>
										</tr>
										</c:if>
								</c:forEach>
								</c:if>
								<!-- 메이트 티켓, 참여한 메이트 방이 없을 시에 -->
								<tfoot  style="background-color: #353535" class="text-white">
									<tr>
									<td>
										<nav>
											<ul class="pagination justify-content-center mt-3">
											
											<c:if test="${pagination.pageNo > 1 }">
												<li class="page-item"><button class="page-link"	id="mate-search-page-before"
													type="button" tabindex="-1" aria-disabled="true">이전</button></li>
											</c:if>
											<c:choose>
												<c:when test="${not empty mateList }">
													<c:forEach begin="${pagination.beginPage }" end="${pagination.endPage }" var="page">
														<li class="page-item ${pagination.pageNo eq page ? 'active' : ' ' }"><button class="page-link text-dark mate-search-page" type="button" data-page="${page }">${page }</button></li>
													</c:forEach>
												</c:when>
												<c:otherwise>
														<li class="page-item"><button class="page-link text-dark mate-search-page" type="button" data-page="1">1</button></li>
												</c:otherwise>
											</c:choose>
											
											<c:if test="${pagination.pageNo < pagination.totalPages }">
												<li class="page-item"><button class="page-link text-dark" id="mate-search-page-after" type="button">다음</button></li>
											</c:if>	
											
											</ul>
										</nav>
									</td>
								</tr>
								</tfoot>

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
	<c:if test="${not empty mateInfo }">
	<c:forEach begin="1" end="1" var="mate" items="${mateInfo }">
			<div id="card-x-btn" class="text-right m-2 text-white" style="position: absolute; z-index: 20; cursor: pointer;">
				<i class="far fa-times-circle fa-2x"></i>	
			</div>
		<div class='image'
			style='background-image: url("/resources/sample-images/${mate.performance.imagePath }")'>
		</div>

		<div class='wave'></div>
		<div class='wave'></div>
		<div class='wave'></div>

		<div class='info'>
				<form:form method="post" action="mate.do" id="mate-search-form"  modelAttribute="mateSearchForm">
			<div class="row mt-4">
				<div class="col-12 mt-4">
					<h4 style="display: inline-block;">
						${mate.performance.title }
					</h4>
					<small class="text-info"><span class="ml-2">개설</span> <span>${mateCount }</span> <span>개</span>
					</small>
				</div>
				<div class="col-12">
					<span>모집중 :</span><span><strong> <c:out value="${MateProgressCount }"/></strong></span>
					<span>빈방 : </span><span><strong><c:out value="${MateEmptyCount }" /></strong> </span>
					<span>모집완료 : </span><span><strong><c:out value="${MateCompleteCount }" /></strong> </span>
				</div>
				<div class="col-12 mt-1">
					<div class="input-group">
						<div class="input-group-prepend">
							<label class="input-group-text" for="inputGroupSelect01">카테고리</label>
						</div>
						<form:select class="custom-select" name="category" path="categoryId">
							<form:option value="0">전체</form:option>
							<c:forEach items="${category }" var="cat">
								<form:option path="categoryId" value="${cat.id }">${cat.category }</form:option>
							</c:forEach>
						</form:select>
					</div>
				</div>
				<div class="col-12 mt-2">
					<div class="input-group">
						<div class="input-group-prepend">
							<label for="groupsize" class="input-group-text">모집인원</label>
						</div>
						<form:select id="groupsize" name="groupsize" path="groupsize" class="custom-select">
							<form:option value="0">전체</form:option>
							<form:option value="2" >2인방</form:option>
							<form:option value="3" >3인방</form:option>
							<form:option value="4" >4인방</form:option>
							<form:option value="5" >5인방</form:option>
						</form:select>
					</div>
					<div class="form-control mt-1">
						<span class="h5">모집중</span> <form:checkbox
							class="input-control" id="isFull" value="Y" path="isFull" 
							checked="${mateSearchForm.isFull eq null ? '': 'checked' }"/>
					</div>
					<div class="form-control mt-1">
						<span class="h5">빈방</span> <form:checkbox id="isEmpty" checked="${mateSearchForm.isEmpty eq null ? '': 'checked' }" path="isEmpty"
							class="input-control"  value="Y" />
					</div>
					<form:input type="hidden" path="pid" name="pid" value="${mateUser.performance.id }" />
					<form:input type="hidden" path="pageNo" name="pageNo" id="pageNo" value="${pagination.pageNo }"/>
					<div class="mt-1">
						<button type="submit" class="btn btn-primary btn-lg btn-block">찾기</button>
					</div>
				</div>
			</div>
				</form:form>
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