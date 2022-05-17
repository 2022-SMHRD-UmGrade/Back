<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>우산상세조회</title>

	<!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/resources/images/umbrella180x180.png">
	<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/resources/images/umbrella32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/resources/images/umbrella16x16.png">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/core.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/src/plugins/datatables/css/responsive.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/src/plugins/sweetalert2/sweetalert2.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
</head>
<body>
	
	<!-- Header Start -->
	<div class="header">
		<div class="header-left">
			<div class="menu-icon dw dw-menu"></div>
			<div class="search-toggle-icon dw dw-search2" data-toggle="header_search"></div>
			<div class="header-search">
				<form>
					<div class="form-group mb-0">
						<i class="dw dw-search2 search-icon"></i>
						<input type="text" class="form-control search-input" placeholder="Search Here">
						<div class="dropdown">
							<a class="dropdown-toggle no-arrow" href="#" role="button" data-toggle="dropdown">
								<i class="ion-arrow-down-c"></i>
							</a>
							<div class="dropdown-menu dropdown-menu-right">
								<div class="form-group row">
									<label class="col-sm-12 col-md-2 col-form-label">From</label>
									<div class="col-sm-12 col-md-10">
										<input class="form-control form-control-sm form-control-line" type="text">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-12 col-md-2 col-form-label">To</label>
									<div class="col-sm-12 col-md-10">
										<input class="form-control form-control-sm form-control-line" type="text">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-12 col-md-2 col-form-label">Subject</label>
									<div class="col-sm-12 col-md-10">
										<input class="form-control form-control-sm form-control-line" type="text">
									</div>
								</div>
								<div class="text-right">
									<button class="btn btn-primary">Search</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="header-right">
			<div class="dashboard-setting user-notification">
				<div class="dropdown">
					<a class="dropdown-toggle no-arrow" href="javascript:;" data-toggle="right-sidebar">
						<i class="dw dw-settings2"></i>
					</a>
				</div>
			</div>
			<div class="user-notification">
				<div class="dropdown">
					<a class="dropdown-toggle no-arrow" href="#" role="button" data-toggle="dropdown">
						<i class="icon-copy dw dw-notification"></i>
						<span class="badge notification-active"></span>
					</a>
					<div class="dropdown-menu dropdown-menu-right">
						<div class="notification-list mx-h-350 customscroll">
							<ul>
								<li>
									<a href="#" class="alert alert-dismissible fade show" role="alert">
										<img src="rsources/images/kuromi1.jpg" alt="">
										<h3>💜</h3>
										<p>빛을 잃어가는 마음과는 달리</p>
										<p>채워지는 도시의 별은 하나둘씩 늘어가고</p>
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</a>
								</li>
								<li>
									<a href="#" class="alert alert-dismissible fade show" role="alert">
										<img src="resources/images/kuromi2.jpg" alt="">
										<h3>💜</h3>
										<p>자리를 찾아가는 퍼즐처럼</p>
										<p>맞춰지는 세상 속을 벗어나고만 싶어</p>
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</a>
								</li>
								<li>
									<a href="#" class="alert alert-dismissible fade show" role="alert">
										<img src="resources/images/kuromi3.jpg" alt="">
										<h3>💜</h3>
										<p>날 향한 시선에 감추기만 했던</p>
										<p>마음의 목소리를 소리 내 외치면</p>	
										<p>스치는 바람을 따라 더없이 가벼워진 마음은</p>	
										<p>내 안의 나를 깨우게 해</p>
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>	
									</a>
								</li>
								<li>
									<a href="#" class="alert alert-dismissible fade show" role="alert">
										<img src="resources/images/kuromi4.jpg" alt="">
										<h3>💜</h3>
										<p>잿빛 세상을 등지고 이 도시를 달려봐</p>
										<p>내 맘 가는 대로 가로질러 가볼래 날 위해</p>	
										<p>그곳이 어디든 날개를 펼치고 I'm flying</p>	
										<p>저 쏟아지듯 펼쳐진 길 위로</p>	
										<p>내 모든 걸 던져</p>
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>	
									</a>
								</li>
								<li>
									<a href="#" class="alert alert-dismissible fade show" role="alert">
										<img src="resources/images/kuromi5.jpg" alt="">
										<h3>💜</h3>
										<p>Run run run higher, fly fly fly higher</p>
										<p>I, I find myself 다시 빛나는 나를 봐</p>
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>	
									</a>
								</li>
								<li>
									<a href="#" class="alert alert-dismissible fade show" role="alert">
										<img src="resources/images/sanrio.jpg" alt="">
										<h3>💜</h3>
										<p>Run run run higher, fly fly fly fly higher</p>
										<p>이 어둠 속 눈을 감고</p>	
										<p>다시 꿈을 꿔</p>
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>	
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="user-info-dropdown">
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown">
						<span class="user-icon">
							<img src="resources/images/kuromi3.jpg" alt="">
						</span>
						<span class="user-name">쿠로미💜</span>
					</a>
					<div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
						<a class="dropdown-item" href="profile.jsp"><i class="dw dw-user1"></i> Profile</a>
						<a class="dropdown-item" href="faq.jsp"><i class="dw dw-help"></i> Help</a>
						<a class="dropdown-item" href="login.jsp"><i class="dw dw-logout"></i> Log Out</a>
					</div>
				</div>
			</div>
			<div class="github-link">
				<a href="https://github.com/2022-SMHRD-UmGrade" target="_blank"><img src="resources/images/github.svg" alt=""></a>
			</div>
		</div>
	</div>

	<!-- layouts settings -->
	<div class="right-sidebar">
		<div class="sidebar-title">
			<h3 class="weight-600 font-16 text-blue">
				Layout Settings
				<span class="btn-block font-weight-400 font-12">User Interface Settings</span>
			</h3>
			<div class="close-sidebar" data-toggle="right-sidebar-close">
				<i class="icon-copy ion-close-round"></i>
			</div>
		</div>
		<div class="right-sidebar-body customscroll">
			<div class="right-sidebar-body-content">
				<h4 class="weight-600 font-18 pb-10">Header Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);" class="btn btn-outline-primary header-white active">Light</a>
					<a href="javascript:void(0);" class="btn btn-outline-primary header-dark">Dark</a>
				</div>

				<h4 class="weight-600 font-18 pb-10">Sidebar Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);" class="btn btn-outline-primary sidebar-light active">Light</a>
					<a href="javascript:void(0);" class="btn btn-outline-primary sidebar-dark">Dark</a>
				</div>

				<h4 class="weight-600 font-18 pb-10">Background Color</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);" class="btn btn-outline-primary bgcolor-light active ">Light</a>
					<a href="javascript:void(0);" class="btn btn-outline-primary bgcolor-dark">Dark</a>
				</div>

				<h4 class="weight-600 font-18 pb-10">Menu Dropdown Icon</h4>
				<div class="sidebar-radio-group pb-10 mb-10">
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebaricon-1" name="menu-dropdown-icon" class="custom-control-input" value="icon-style-1" checked="">
						<label class="custom-control-label" for="sidebaricon-1"><i class="fa fa-angle-down"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebaricon-2" name="menu-dropdown-icon" class="custom-control-input" value="icon-style-2">
						<label class="custom-control-label" for="sidebaricon-2"><i class="ion-plus-round"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebaricon-3" name="menu-dropdown-icon" class="custom-control-input" value="icon-style-3">
						<label class="custom-control-label" for="sidebaricon-3"><i class="fa fa-angle-double-right"></i></label>
					</div>
				</div>

				<h4 class="weight-600 font-18 pb-10">Menu List Icon</h4>
				<div class="sidebar-radio-group pb-30 mb-10">
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-1" name="menu-list-icon" class="custom-control-input" value="icon-list-style-1" checked="">
						<label class="custom-control-label" for="sidebariconlist-1"><i class="ion-minus-round"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-2" name="menu-list-icon" class="custom-control-input" value="icon-list-style-2">
						<label class="custom-control-label" for="sidebariconlist-2"><i class="fa fa-circle-o" aria-hidden="true"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-3" name="menu-list-icon" class="custom-control-input" value="icon-list-style-3">
						<label class="custom-control-label" for="sidebariconlist-3"><i class="dw dw-check"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-4" name="menu-list-icon" class="custom-control-input" value="icon-list-style-4" checked="">
						<label class="custom-control-label" for="sidebariconlist-4"><i class="icon-copy dw dw-next-2"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-5" name="menu-list-icon" class="custom-control-input" value="icon-list-style-5">
						<label class="custom-control-label" for="sidebariconlist-5"><i class="dw dw-fast-forward-1"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-6" name="menu-list-icon" class="custom-control-input" value="icon-list-style-6">
						<label class="custom-control-label" for="sidebariconlist-6"><i class="dw dw-next"></i></label>
					</div>
				</div>

				<div class="reset-options pt-30 text-center">
					<button class="btn btn-danger" id="reset-settings">Reset Settings</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->


	<!-- Sidebar Start -->
	<div class="left-side-bar">
		<div class="brand-logo">
			<a href="home.jsp">
				<img src="resources/images/logo2.png" alt="" class="dark-logo">
				<img src="resources/images/logo1.png" alt="" class="light-logo">
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li class="dropdown">
						<a href="home.jsp" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Home</span>
						</a>
					</li>
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-user"></span><span class="mtext">회원관리</span>
						</a>
						<ul class="submenu">
							<li><a href="userTable.jsp">회원조회</a></li>
							<li><a href="managerRegister.jsp">관리자등록</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-umbrella"></span><span class="mtext">우산관리</span>
						</a>
						<ul class="submenu">
							<li><a href="umTable.jsp">우산조회</a></li>
						</ul>
					</li>
					<li>
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-box-1"></span><span class="mtext">보관함관리</span>
						</a>
						<ul class="submenu">
							<li><a href="umBoxTable.jsp">보관함조회</a></li>
						</ul>
					</li>
					<li>
						<a href="qna.jsp" class="dropdown-toggle no-arrow">
							<span class="micon dw dw dw-question-1"></span><span class="mtext">질의응답</span>
						</a>
					</li>
					<li>
						<a href="calendar.jsp" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-calendar1"></span><span class="mtext">달력</span>
						</a>
					</li>
					<li>
						<div class="dropdown-divider"></div>
					</li>
					<li>
						<div class="sidebar-small-cap">Extra</div>
					</li>
					<li>
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-edit-2"></span><span class="mtext">Documentation</span>
						</a>
						<ul class="submenu">
							<li><a href="introduction.html">Introduction</a></li>
							<li><a href="getting-started.html">Getting Started</a></li>
							<li><a href="color-settings.html">Color Settings</a></li>
							<li><a href="third-party-plugins.html">Third Party Plugins</a></li>
						</ul>
					</li>
					<!-- 서비스 메인 페이지로 이동 -->
					
					<li>
						<a href="#" target="_blank" class="dropdown-toggle no-arrow">
							<span class="icon-copy dw dw-umbrella"></span>
							<span class="mtext">UM Grade <span class="icon-copy dw dw-umbrella"></span></span>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="mobile-menu-overlay"></div>
	<!-- Sidebar End -->

	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
				<div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4>우산정보상세보기</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">우산관리</a></li>
									<li class="breadcrumb-item"><a href="umTable.jsp">우산조회</a></li>
									<li class="breadcrumb-item active" aria-current="page">상세보기</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 mb-30">
						<div class="pd-20 card-box height-100-p">
							<div class="profile-photo">
								<a href="modal" data-toggle="modal" data-target="#modal" class="edit-avatar"><i class="fa fa-pencil"></i></a>
								<img src="vendors/images/kuromi3.jpg" alt="" class="avatar-photo">
								<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-body pd-5">
												<div class="img-container">
													<img id="image" src="vendors/images/kuromi4.jpg" alt="Picture">
												</div>
											</div>
											<div class="modal-footer">
												<input type="submit" value="Update" class="btn btn-primary">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<h5 class="text-center h5 mb-0">💜Umbrella💜</h5>
							<p class="text-center text-muted font-14">umbrella</p>
							<div class="profile-info">
								<h5 class="mb-20 h5" data-color="#A3CBE6">우산 상세정보</h5>
								<ul>
									<li>
										<span>순번:</span>
										1
									</li>								
									<li>
										<span>RFID:</span>
										255.04.50.70
									</li>
									<li>
										<span>종류:</span>
										일반우산
									</li>
									<li>
										<span>상태:</span>
										미사용
									</li>
									<li>
										<span>파손여부:</span>
										파손안됨
									</li>
									<li>
										<span>보관함순번:</span>
										1
									</li>
								</ul>
							</div>
							<div class="profile-social">
							</div>
						</div>
					</div>
					<div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 mb-30">
						<div class="card-box height-100-p overflow-hidden">
							<div class="profile-tab height-100-p">
								<div class="profile-setting">
									<form>
										<ul class="profile-edit-list row">
											<li class="weight-500 col-md-6">
												<h4 class="h5 mb-20" data-color="#A3CBE6">우산정보수정</h4>
												<div class="form-group">
													<label>순번</label>
													<input class="form-control form-control-lg" type="text" readonly="" value="1">
												</div>
												<div class="form-group">
													<label>RFID</label>
													<input class="form-control form-control-lg" type="text" readonly="" value="255.04.50.70">
												</div>
												<div class="form-group">
													<label>우산종류</label>
													<div class="d-flex">
													<div class="custom-control custom-radio mb-5 mr-20">
														<input type="radio" id="radio1" name="customRadio" class="custom-control-input" checked onclick="return(false);">
														<label class="custom-control-label weight-400" for="radio1">일반우산</label>
													</div>
													<div class="custom-control custom-radio mb-5 mr-20">
														<input type="radio" id="radio2" name="customRadio" class="custom-control-input" onclick="return(false);">
														<label class="custom-control-label weight-400" for="radio2">어린이우산</label>
													</div>
													<div class="custom-control custom-radio mb-5 mr-20">
														<input type="radio" id="radio3" name="customRadio" class="custom-control-input" onclick="return(false);">
														<label class="custom-control-label weight-400" for="radio3">우양산</label>
													</div>
													</div>
												</div>
												<div class="form-group">
													<label>상태</label>
													<select class="selectpicker form-control form-control-lg" data-style="btn-outline-secondary btn-lg">
														<option>미사용</option>
														<option>사용</option>
													</select>
												</div>
												<div class="form-group">
													<label>파손여부</label>
													<select class="selectpicker form-control form-control-lg" data-style="btn-outline-secondary btn-lg">
														<option>파손안됨</option>
														<option>파손</option>
													</select>
												</div>
												<div class="form-group">
													<label>보관함순번</label>
													<input class="form-control form-control-lg" type="text" readonly="" value="1">
												</div>

												<div class="form-group mb-0">
													<input type="submit" class=" btn btn-custom" value="정보수정">
												</div>
											</li>
											
										</ul>
									</form>
								</div>
							</div>
						</div>
					</div>
								
				</div>

			<div class="footer-wrap pd-20 mb-20 card-box">
				지능형 IoT융합 SW전문가과정 실전프로젝트 <a href="https://github.com/2022-SMHRD-UmGrade" target="_blank">UmGrade</a>
			</div>
		</div>
	</div>
	<!-- js -->
	<script src="resources/js/core.js"></script>
	<script src="resources/js/script.min.js"></script>
	<script src="resources/js/process.js"></script>
	<script src="resources/js/layout-settings.js"></script>
</body>
</html>