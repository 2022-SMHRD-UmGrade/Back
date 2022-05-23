<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet"
    />

    <title>UM-CYCLE</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Additional CSS Files -->
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
      integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="resources/css/templatemo-chain-app-dev.css" />
    <link rel="stylesheet" href="resources/css/animated.css" />
    <link rel="stylesheet" href="resources/css/owl.css" />
  </head>

  <body>
    <!-- ***** Preloader Start ***** -->
    <div id="js-preloader" class="js-preloader">
      <div class="preloader-inner">
        <span class="dot"></span>
        <div class="dots">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
    </div>
    <!-- ***** Preloader End ***** -->

    <!-- header -->
    <!-- <div id="header"></div> -->
    <div id="header"><%@ include file="/WEB-INF/views/web/header.jsp" %></div>
    


    <!-- main -->
    <div id="main"><%@ include file="/WEB-INF/views/web/main.jsp" %></div>

    <!-- service -->
    <div id="service"><%@ include file="/WEB-INF/views/web/service.jsp" %></div>
    <!-- faq -->
    <!-- <div id="faq"></div> -->
    <%-- <%@ include file="/WEB-INF/views/web/faq.jsp" %> --%>
    <div id="clients" class="the-clients">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 offset-lg-2">
            <div class="section-heading wow fadeInDown mapheader"
            data-wow-duration="1s"
            data-wow-delay="0.5s">
              <h4>자주 묻는 <em>질문</em></h4>
              <img src="resources/images/heading-line-dec.png" alt="" />
            </div> 
            <!-- title end -->
            
            <!-- accordion -->
            <div class="accordion accordion-flush wow fadeInDown" 
            id="accordionFlushExample" 
            data-wow-duration="1s"
            data-wow-delay="1s">
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingOne">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                    UmCycle은 어떤 서비스인가요?
                  </button>
                </h2>
                <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" >
                  <div class="accordion-body">우천 시 우산을 대여할 수 있는 우산 공유 서비스입니다. <br>지하철역과 학원가 등 유동 인구가 많은 장소에 UmCycle 보관함이 설치되어 있으므로 필요시 보관함에서 우산을 대여한 뒤, 사용하지 않을 시 반납할 수 있습니다.</div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingTwo">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                    어디에 설치되어 있나요?
                  </button>
                </h2>
                <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" >
                  <div class="accordion-body">지하철역, 학교/학원가 등에 설치되어 있으며 상세 위치는 웹 페이지의 설치장소나 어플의 '보관함 찾기'에서 확인할 수 있습니다.</div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingThree">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                    UmCycle 이용 요금은?
                  </button>
                </h2>
                <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" >
                  <div class="accordion-body">기본 대여금은 800원이며, 24시간을 초과할 때마다 800원이 추가로 소요됩니다.</div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingFour">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                    우산을 어떻게 대여하나요?
                  </button>
                </h2>
                <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" >
                  <div class="accordion-body">① 어플에 로그인한 뒤 결제 방법을 등록합니다.<br>
② 우산을 대여할 보관함을 찾아 어플에서 QR코드를 스캔합니다.<br>
③ 보관함의 잠금장치가 열리면 보관함에서 우산을 꺼내 대여합니다.<br><br>
자세한 사항은 어플의 '서비스 안내'를 확인해 주세요.</div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingFive">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
                    대여한 우산은 어떻게 반납하나요?
                  </button>
                </h2>
                <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" >
                  <div class="accordion-body">대여한 보관함이 아니어도 UmCycle 보관함이 있다면 어디서나 편리하게 반납할 수 있습니다.<br>
반납 시에는 별도의 QR 스캔 과정 없이, 보관함에 우산을 다시 돌려두는 것만으로 우산을 반납할 수 있습니다.</div>
                </div>
              </div>
              
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingSix">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false" aria-controls="flush-collapseSix">
                    결제는 어떻게 하나요?
                  </button>
                </h2>
                <div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix" >
                  <div class="accordion-body">어플 마이페이지의 '결제관리'에서 결제 시 사용할 카드를 등록하면 반납 시에 자동으로 결제됩니다.</div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingSeven">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSeven" aria-expanded="false" aria-controls="flush-collapseSeven">
                    우산 반납 확인은 어떻게 하나요?
                  </button>
                </h2>
                <div id="flush-collapseSeven" class="accordion-collapse collapse" aria-labelledby="flush-headingSeven" >
                  <div class="accordion-body">보관함에 우산을 반납할 때 기본적으로 자동 반납 처리가 되나, 어플 마이페이지의 이용내역에서 반납 여부를 확인할 수 있습니다. <br>(반납 완료 시 반납 날짜와 장소를 확인할 수 있습니다)</div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingEight">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseEight" aria-expanded="false" aria-controls="flush-collapseEight">
                    우산이 파손되었습니다.
                  </button>
                </h2>
                <div id="flush-collapseEight" class="accordion-collapse collapse" aria-labelledby="flush-headingEight" >
                  <div class="accordion-body">보관함에 부착된 파손 버튼을 누르거나, 어플의 고객센터에서 우산 파손에 대한 신고 후 파손 우산은 보관함에 반납해 주세요. <br>파손 우산 반납 시 즉시 재대여가 가능합니다.</div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingNine">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseNine" aria-expanded="false" aria-controls="flush-collapseNine">
                    우산을 분실했습니다.
                  </button>
                </h2>
                <div id="flush-collapseNine" class="accordion-collapse collapse" aria-labelledby="flush-headingNine" >
                  <div class="accordion-body">어플의 고객센터에서 우산 분실에 대해 신고해주세요.</div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingTen">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTen" aria-expanded="false" aria-controls="flush-collapseTen">
                    서비스를 탈퇴하고 싶습니다.
                  </button>
                </h2>
                <div id="flush-collapseEleven" class="accordion-collapse collapse" aria-labelledby="flush-headingEleven" >
                  <div class="accordion-body">어플 마이페이지의 '정보수정' 하단의 '탈퇴하기'에서 탈퇴하실 수 있습니다. <br>서비스를 이용 중일 경우 탈퇴가 불가능하므로 대여하신 우산이 있다면 반납하신 뒤 진행해주세요.</div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingEleven">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseEleven" aria-expanded="false" aria-controls="flush-collapseEleven">
                    우산 기부는 어떻게 하나요?
                  </button>
                </h2>
                <div id="flush-collapseEleven" class="accordion-collapse collapse" aria-labelledby="flush-headingEleven" >
                  <div class="accordion-body">추후 서비스 예정 중인 사항으로, UmCycle 보관함에 사용하지 않는 우산을 기부한 뒤 공유 커뮤니티에 인증할 경우 서비스 이용 시 사용할 수 있는 포인트를 리워드로 제공할 예정입니다. <br>(포인트를 사용하여 우산을 대여하거나, 폐우산을 UpCycling해 만든 상품을 구매할 수 있습니다)</div>
                </div>
              </div>
              
              
            </div>

            <!-- accordion end -->
          </div>
          </div>
        </div>
      </div>

    <!-- guidelines -->
    <div id="guidelines"><%@ include file="/WEB-INF/views/web/guidelines.jsp" %></div>

    <!-- footer -->
    <div id="footer"><%@ include file="/WEB-INF/views/web/footer.jsp" %></div>

    <!-- Scripts -->
    <script src="resources/jquery/jquery.min.js"></script>
    <script src="resources/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/owl-carousel.js"></script>
    <script src="resources/js/animation.js"></script>
    <script src="resources/js/imagesloaded.js"></script>
    <script src="resources/js/popup.js"></script>
    <script src="resources/js/custom.js"></script>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
   
  </body>
</html>
