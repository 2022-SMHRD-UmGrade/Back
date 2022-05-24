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
    <%@ include file="/WEB-INF/views/web/faq.jsp" %>

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
