<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>같이 보자! 공공연한사이</title>
<link rel="stylesheet" href="/resources/css/jquery.fullPage.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.css">
<link rel="stylesheet" href="/resources/bootstrap-datepicker/css/bootstrap-datepicker.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet" href="/resources/css/manager.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script src="/resources/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="/resources/bootstrap-datepicker/locales/bootstrap-datepicker.ko.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
</head>
<body>
<div class="page-wrapper chiller-theme toggled">
  <%@ include file="../manager/common/managernavi.jsp" %>
  <!-- sidebar-wrapper  -->
 <div class="page-content">
 <div class="container">
<div class="container-fluid">
	<div class="row">
		<div class="col-12 mt-5 mb-5">
			<div class="display-4 text-center">고객리스트</div>
		</div>
		<div class="col-12 mt-3">
			<div class="row"> 
				<div class="col-2" >
					<table class="table table-bordered" >
						<tbody>
							<tr style="background-color: orange">
								<th style="color: white; font-size: 20px;">회원관리</th>
							</tr>
							<tr >
								<th><a href="adminProfile.do" style="color: #766C58">최근가입 일자 순</a></th>
							</tr>
							<tr>
								<th><a href="adminProfile.do?sort=like" style="color: #766C58">좋아요 많은 순</a></th>
							</tr>
							<tr>
								<th><a href="adminProfile.do?query=birth" style="color: #766C58">이 달의 생일 고객</a></th>
							</tr>
							<tr>
								<th><a href="adminProfile.do?query=del" style="color: #766C58">탈퇴한 고객</a></th>
							</tr>
						</tbody>
					</table>	
				</div>
			<div class="col-10">
				<table class="table">
						<thead class="thead-dark" style="background-color: orange; color: white">
							<tr>
								<td>no.</td>
								<td>회원ID</td>
								<td>닉네임</td>
								<td>가입일자</td>
								<td>좋아요</td>
								<td></td>
							</tr>
						</thead>
						<tbody style="border-bottom: 1px solid gray ;">
						<c:choose>
							<c:when test="${empty users }">
								<tr>
									<td colspan="5" class="text-center">회원이 존재하지 않습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="userDto" items="${users }">
									<tr>
										<td>11</td>
										<td>${userDto.id }</td>
										<td>${userDto.nickname }</td>
										<td>${userDto.regDate }</td>
										<td>${userDto.getlike }</td>
										<td><button class="btn btn-secondary btn-sm userBtn"  data-userId="${userDto.id }" 
										style="margin-left: 15px; background-color: orange">상세보기</button></td>
									</tr>
								</c:forEach>
							</c:otherwise>	
						</c:choose>	
						</tbody>
				</table>	
			</div>
		</div>
		</div>
		
		<div>
			<input type="text" id="search-user-id" placeholder="search" style="margin-left: 500px; margin-top: 20px;">
			<button class="btn btn-outline-secondary btn-sm" style="margin-left: 5px; margin-bottom: 5px;" id="btn-search-user">검색</button>
		</div>
	</div>
	
	<div>
		<ul class="pagination pagination-sm pagination-secondary" style="margin-left: 500px; margin-top: 20px;">
			<c:if test="${pagination.pageNo > 1 }" >
				<c:url var="prev" value="/adminProfile.do">
					<c:param name="pageNo" value="${pagination.pageNo -1}"/>
					<c:if test="${not empty param.sort }">
						<c:param name="sort" value="${param.sort }" />
					</c:if>
					<c:if test="${not empty param.query }">
						<c:param name="query" value="${param.query }" />
					</c:if>
				</c:url>
		  		<li class="page-item"><a class="page-link" href="${prev }">이전</a></li>
		  	</c:if>
		  	<c:forEach begin="${pagination.beginPage }" end="${pagination.endPage }" var="page">
		  		<c:url var="link" value="/adminProfile.do">
					<c:param name="pageNo" value="${page}"/>
					<c:if test="${not empty param.sort }">
						<c:param name="sort" value="${param.sort }" />
					</c:if>
					<c:if test="${not empty param.query }">
						<c:param name="query" value="${param.query }" />
					</c:if>
				</c:url>
		  		<li class="page-item ${pagination.pageNo eq page ? 'active': '' }"><a class="page-link" href="${link }">${page }</a></li>
			</c:forEach>
			
			<c:if test="${pagination.pageNo < pagination.totalPages }"> 
				<c:url var="next" value="/adminProfile.do">
					<c:param name="pageNo" value="${pagination.pageNo +1}"/>
					<c:if test="${not empty param.sort }">
						<c:param name="sort" value="${param.sort }" />
					</c:if>
					<c:if test="${not empty param.query }">
						<c:param name="query" value="${param.query }" />
					</c:if>
				</c:url> 
		  		<li class="page-item"><a class="page-link" href="${next }">다음</a></li>
			</c:if>	
		</ul>
	</div>		
	
</div>


<!-- Modal -->
<div class="modal fade" id="userDetailModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">사용자 상세정보</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" >
		<div class="row">
			<div class="col-12">
				<table class="table table-bordered" style="color: gray">
					<tr>
						<td style="background-color: #F5F5DC; color: #444444"><strong>ID</strong></td>
						<td><span id="id"></span></td>
						<td style="background-color: #F5F5DC; color: #444444"><strong>닉네임</strong></td>
						<td><span id="nickname"></span></td>
						
						
					</tr>
					<tr>
						<td style="background-color: #F5F5DC; color: #444444"><strong>성별</strong></td>
						<td><span id="gender"></span></td>
						<td style="background-color: #F5F5DC; color: #444444"><strong>생년월일</strong></td>
						<td><span id="birthday"></span></td>
					</tr>
					<tr>
						<td style="background-color: #F5F5DC; color: #444444"><strong>TEL</strong></td>
						<td><span id="tel"></span></td>
						<td style="background-color: #F5F5DC; color: #444444"><strong>Email</strong></td>
						<td><span id="email"></span></td>
					</tr>
					<tr>
						<td style="background-color: #F5F5DC; color: #444444"><strong>소지 포인트</strong></td>
						<td><span id="totalPoint"></span></td>
						<td style="background-color: #F5F5DC; color: #444444"><strong>받은 좋아요</strong></td>
						<td><span id="getlike"></span></td>
					</tr>
				<!-- 		
					<tr>
						<td>보유 뱃지</td>
						<td></td>
						<td>받은 신고</td>
						<td></td>
					</tr>
				 -->	
					<tr>
						<td style="background-color: #F5F5DC; color: #444444"><strong>주소</strong></td>
						<td colspan="3"><span id="address"></span></td>
					</tr>
				</table>
			</div>
		</div>     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
</div>
</div>
</div>



</body>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">


$(function(){
	
		function showUserDetail(userid) {
			
			$.ajax({
				url:'/adminProfileDetail.do',
				type:'POST',
				data:{
					"id":userid
				},
				dateType:"json",
				success:function(data){
					if (data == "") {
						alert("회원정보가 존재하지 않습니다.");
						return false;
					}
					
					$('#id').text(userid)
					$('#nickname').text(data.nickname)
					$('#gender').text(data.gender)
					$('#birthday').text(data.birthday)
					$('#email').text(data.email)
					$('#tel').text(data.tel)
					$('#getlike').text(data.getlike)
					$('#regDate').text(data.regDate)
					$('#totalPoint').text(data.totalPoint)
					
					var address = (data.postalCode) + (data.sido) + (data.sigungu) + (data.addr)
					
					$('#address').text(address)
				
					$("#userDetailModal").modal("show");
				
				}
			
			})
			
		}
	
		// 검색버튼 클릭시 입력필드에 입력된 아이디로 조회해서 모달창 표시하기
		$("#btn-search-user").click(function(){
			var userid = $("#search-user-id").val()
			if (userid == "") {
				alert("아이디를 입력하세요")
				return false;
			} 
			showUserDetail(userid);
			$("#search-user-id").val("")
			
		})
		
		// 상세보기 버튼 클릭시 아이디 조회해서 모달창 표시하기
		$('.userBtn').click(function(){
			var userid = $(this).data('userid')
			showUserDetail(userid);
			
		})
})

</script>

</html>















