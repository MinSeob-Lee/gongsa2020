<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="custom-top">
		<div class="container custom-top-container">
			<div class="row">
				<div class="col-12 mt-4">
					<div class="h1 font-weight-bold text-white mt-3">
					<c:if test="${topName ne null }">
						<span>${topName eq "performance" ? '공연관리' : '' }</span>
						<span>${topName eq "user" ? '고객관리' : '' }</span>
						<span>${topName eq "mate" ? '메이트관리' : '' }</span>
						<span>${topName eq "notice" ? '공지사항관리' : '' }</span>
						<span>${topName eq "qna" ? 'QnA관리' : '' }</span>
						<span>${topName eq "sales" ? '매출관리' : '' }</span>
					
					</c:if>
					
					</div>
				</div>
			</div>
		</div>
	</div>