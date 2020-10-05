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

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.4.4/umd/popper.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.color.js"></script>
    <script type="text/javascript" src="/resources/js/custom.js"></script>
    <script type="text/javascript" src="/resources/js/mypage/myprofile.js"></script>

    <style>
        #mypage-card .card:hover {
            background-color: #FFF;
            color: #000;
        }

        #mypage-card .card-body:hover {
            background-color: #FFF;
            color: #000;
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
                    <div class="mypage-card-header mt-3">
                        <div class="row">
                            <div class="col-12">
                                <h2 class="font-weight-bold">내 상세 정보</h2>
                            </div>
                        </div>
                    </div>
                    <div class="card mt-3" id="mypage-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-3">
                                    <img class="rounded float-left" id="user-image"
                                         style="width: 200px; height: 200px;"
                                         src="/resources/sample-images/movie_image.jpg" alt="...">
                                </div>
                                <div class="col-6">
                                    <div class="row">
                                        <div class="col-12">
                                            <h1><span id="nickname">user nickname</span>님</h1>
                                        </div>
                                        <div class="col-12">
                                            <h4>가입일 : <span id="reg-date"></span></h4>
                                        </div>
                                        <div class="col-12">
                                            <h4>회원등급 : <span id="grade"></span></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="col-12">
                                <h4> 자기소개</h4>
                                <div class="card mt-3">
                                    <div class="row">
                                        <div class="card-body">

                                            <div class=row>
                                                <div class="col-12" id="intro-tags">
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-2 offset-10">
                                                    <button class="btn btn-outline-secondary" data-intro-update="">
                                                        추가/삭제
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="col-12">
                                <h4 id="interest-header"> 관심분야</h4>
                                <div class="card mt-3">
                                    <div class="row">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-2">공연장르</div>
                                                <div class="col-10" id="interest-genre"></div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-2">아티스트</div>
                                                <div class="col-10" id="interest-artist"></div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-2">공연분류</div>
                                                <div class="col-10" id="interest-category"></div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-2">공연이름</div>
                                                <div class="col-10" id="interest-performance"></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-2 offset-10">
                                                    <button class="btn btn-outline-secondary" data-interest-upate="">
                                                        추가/삭제
                                                    </button>
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
    </div>
    <div class="footer">
        <%@ include file="../common/footer.jsp" %>
    </div>
</div>
</body>
</html>