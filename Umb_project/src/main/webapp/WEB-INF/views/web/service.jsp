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
    <div id="services" class="services section">
        <div class="container">
          <div class="service-row">
            <div class="col-lg-8 offset-lg-2">
              <div
                class="section-heading wow fadeInDown"
                data-wow-duration="1s"
                data-wow-delay="0.5s"
              >
                <h4> <em>UM-CYCLE</em>의 특징</h4>
                <img src="resources/images/heading-line-dec.png" alt="" />
                <!-- <p>
                  If you need the greatest collection of HTML templates for your
                  business, please visit
                  <a rel="nofollow" href="https://www.toocss.com/" target="_blank"
                    >TooCSS</a
                  >
                  Blog. If you need to have a contact form PHP script, go to
                  <a href="https://templatemo.com/contact" target="_parent"
                    >our contact page</a
                  >
                  for more information.
                </p> -->
              </div>
            </div>
          </div>
        </div>

    <!-- container -->
    <div id="container"><%@ include file="/WEB-INF/views/web/container.jsp" %></div>

    <!-- map -->
    <!--<div id="map"></div>-->
    <%--<%@ include file="/WEB-INF/views/web/map.jsp" %> --%>

    <!-- Scripts -->
    <script src="resources/jquery/jquery.min.js"></script>
    <script src="resources/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/owl-carousel.js"></script>
    <script src="resources/js/animation.js"></script>
    <script src="resources/js/imagesloaded.js"></script>
    <script src="resources/js/popup.js"></script>
    <script src="resources/js/custom.js"></script>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript">
      $(document).ready(function () {
        $("#container").load("container"); // container include
        $("#map").load("map"); // map include
      });
    </script>
  </body>
</html>
