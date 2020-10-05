<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>같이 보자! 공공연한사이</title>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"/>
    <link rel="stylesheet" href="/resources/css/style.css"/>
    <link rel="stylesheet" href="/resources/css/card.css"/>
    <link rel="stylesheet" href="/resources/css/mypage.css"/>
    <link rel="stylesheet" href="/resources/css/ticket.css"/>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.4.4/umd/popper.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.color.js"></script>
    <script type="text/javascript" src="/resources/js/custom.js"></script>
    <script type="text/javascript" src="/resources/js/mypage/mymateroom.js"></script>
    <style>
        .card-body {
            background-color: #ddd;
        }

        .item {
            width: 98%
        }
    </style>
</head>
<body>
<div class="header">
    <%@ include file="../common/navi.jsp" %>
</div>
<div class="body mt-5">
    <div class="container-fluid mb-4">
        <div class="row">
            <%@ include file="./mypagemenubar.jsp" %>
            <div class="col-8 mt-4">
                <div class="container">
                    <%@ include file="./mypageheader.jsp" %>
                    <div class="mypage-card-header mt-3 ">
                        <div class="row">
                            <div class="col-12">
                                <h2 class="font-weight-bold">내 메이트 보기</h2>
                                <div class="card mt-3">
                                    <div class="card-body" id="my-mategroup-list">

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
        <%@ include file="../common/footer.jsp" %>
    </div>
</div>
</body>
</html>