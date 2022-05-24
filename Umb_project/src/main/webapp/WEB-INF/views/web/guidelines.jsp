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
    <div id="pricing" class="pricing-tables">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 offset-lg-2">
            <div
              class="section-heading wow fadeInDown mapheader"
              data-wow-duration="1s"
              data-wow-delay="0.5s"
            >
              <h4><em>UM-CYCLE</em> 이용방법</h4>
              <img src="resources/images/heading-line-dec.png" alt="" />
              <p class="manual-p">
                애플리케이션을 이용하여 쉽고 간편하게 우산을 대여할 수 있습니다.
              </p>
            </div>
          </div>
          <!-- sercion-heading end -->

          <!-- content -->
          <div
            id="carouselExampleControlsNoTouching"
            class="carousel slide wow fadeInLeft"
            data-wow-duration="1s"
            data-wow-delay="1s"
            data-bs-touch="false"
            data-bs-interval="false"
          >
            <div class="carousel-indicators">
              <button
                type="button"
                data-bs-target="#carouselExampleControlsNoTouching"
                data-bs-slide-to="0"
                class="active"
                aria-current="true"
                aria-label="Slide 1"
              ></button>
              <button
                type="button"
                data-bs-target="#carouselExampleControlsNoTouching"
                data-bs-slide-to="1"
                aria-label="Slide 2"
              ></button>
              <button
                type="button"
                data-bs-target="#carouselExampleControlsNoTouching"
                data-bs-slide-to="2"
                aria-label="Slide 3"
              ></button>
              <button
                type="button"
                data-bs-target="#carouselExampleControlsNoTouching"
                data-bs-slide-to="3"
                aria-label="Slide 4"
              ></button>
              <button
                type="button"
                data-bs-target="#carouselExampleControlsNoTouching"
                data-bs-slide-to="4"
                aria-label="Slide 5"
              ></button>
              <button
                type="button"
                data-bs-target="#carouselExampleControlsNoTouching"
                data-bs-slide-to="5"
                aria-label="Slide 6"
              ></button>
              <button
                type="button"
                data-bs-target="#carouselExampleControlsNoTouching"
                data-bs-slide-to="6"
                aria-label="Slide 7"
              ></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img
                  src="./resources/images/carousel/01.png"
                  class="d-block w-100"
                  alt="testbg01"
                />
                <div class="carousel-caption d-md-block">
                  <h5>보관함 찾기</h5>
                  <p>지도에서 주변에 있는 보관함을 검색합니다.<br /></p>
                </div>
              </div>
              <div class="carousel-item">
                <img
                  src="./resources/images/carousel/02.png"
                  class="d-block w-100"
                  alt="testbg02"
                />
                <div class="carousel-caption d-md-block">
                  <h5>QR코드 스캔하기</h5>
                  <p>
                    UmCycle 애플리케이션에서 보관함의 QR 코드를 스캔합니다.<br />
                  </p>
                </div>
              </div>

              <div class="carousel-item">
                <img
                  src="./resources/images/carousel/03.png"
                  class="d-block w-100"
                  alt="testbg03"
                />
                <div class="carousel-caption d-md-block">
                  <h5>우산 대여하기</h5>
                  <p>
                    보관함의 잠금장치가 열리면 우산을 골라 대여합니다.<br />
                  </p>
                </div>
              </div>

              <div class="carousel-item">
                <img
                  src="./resources/images/carousel/04.png"
                  class="d-block w-100"
                  alt="testbg03"
                />
                <div class="carousel-caption d-md-block">
                  <h5>파손 확인하기</h5>
                  <p>우산을 가지고 가기 전 파손 여부를 확인해주세요.<br /></p>
                </div>
              </div>

              <div class="carousel-item">
                <img
                  src="./resources/images/carousel/05.png"
                  class="d-block w-100"
                  alt="testbg03"
                />
                <div class="carousel-caption d-md-block">
                  <h5>파손 신고하기</h5>
                  <p>
                    만약 우산이 파손되었다면 파손 신고 후 파손 우산을
                    반납해주세요. <br />파손 신고 시 다른 우산을 재대여할 수
                    있습니다.
                  </p>
                </div>
              </div>

              <div class="carousel-item">
                <img
                  src="./resources/images/carousel/06.png"
                  class="d-block w-100"
                  alt="testbg03"
                />
                <div class="carousel-caption d-md-block">
                  <h5>우산 사용 요금</h5>
                  <p>
                    우산 대여 비용은 1일(24시간)에 800원이며, <br />대여비는
                    반납 시에 등록된 결제정보에서 자동결제 됩니다.
                  </p>
                </div>
              </div>

              <div class="carousel-item">
                <img
                  src="./resources/images/carousel/07.png"
                  class="d-block w-100"
                  alt="testbg03"
                />
                <div class="carousel-caption d-md-block">
                  <h5>우산 반납하기</h5>
                  <p>
                    반납 시에는 별도의 QR 스캔 과정 없이 <br />보관함에 우산을
                    돌려두는 것만으로 반납을 완료할 수 있습니다.
                  </p>
                </div>
              </div>
            </div>
            <button
              class="carousel-control-prev"
              type="button"
              data-bs-target="#carouselExampleControlsNoTouching"
              data-bs-slide="prev"
            >
              <span
                class="carousel-control-prev-icon"
                aria-hidden="true"
              ></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button
              class="carousel-control-next"
              type="button"
              data-bs-target="#carouselExampleControlsNoTouching"
              data-bs-slide="next"
            >
              <span
                class="carousel-control-next-icon"
                aria-hidden="true"
              ></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
          <!-- content end -->
        </div>
      </div>
    </div>
    <!-- Scripts -->
    <script src="resources/jquery/jquery.min.js"></script>
    <script src="resources/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/owl-carousel.js"></script>
    <script src="resources/js/animation.js"></script>
    <script src="resources/js/imagesloaded.js"></script>
    <script src="resources/js/popup.js"></script>
    <script src="resources/js/custom.js"></script>
  </body>
</html>
