<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>ํ์์กฐํ</title>

	<!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="${path}/resources/images/umbrella180x180.png">
	<link rel="icon" type="image/png" sizes="32x32" href="${path}/resources/images/umbrella32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="${path}/resources/images/umbrella16x16.png">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/core.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/src/plugins/datatables/css/responsive.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/src/plugins/sweetalert2/sweetalert2.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/style.css">

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
										<img src="${pageContext.request.contextPath}/resources/images/kuromi1.jpg" alt="">
										<h3>๐</h3>
										<p>๋น์ ์์ด๊ฐ๋ ๋ง์๊ณผ๋ ๋ฌ๋ฆฌ</p>
										<p>์ฑ์์ง๋ ๋์์ ๋ณ์ ํ๋๋์ฉ ๋์ด๊ฐ๊ณ?</p>
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</a>
								</li>
								<li>
									<a href="#" class="alert alert-dismissible fade show" role="alert">
										<img src="${pageContext.request.contextPath}/resources/images/kuromi2.jpg" alt="">
										<h3>๐</h3>
										<p>์๋ฆฌ๋ฅผ ์ฐพ์๊ฐ๋ ํผ์ฆ์ฒ๋ผ</p>
										<p>๋ง์ถฐ์ง๋ ์ธ์ ์์ ๋ฒ์ด๋๊ณ?๋ง ์ถ์ด</p>
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</a>
								</li>
								<li>
									<a href="#" class="alert alert-dismissible fade show" role="alert">
										<img src="${pageContext.request.contextPath}/resources/images/kuromi3.jpg" alt="">
										<h3>๐</h3>
										<p>๋? ํฅํ ์์?์ ๊ฐ์ถ๊ธฐ๋ง ํ๋</p>
										<p>๋ง์์ ๋ชฉ์๋ฆฌ๋ฅผ ์๋ฆฌ ๋ด ์ธ์น๋ฉด</p>	
										<p>์ค์น๋ ๋ฐ๋์ ๋ฐ๋ผ ๋์์ด ๊ฐ๋ฒผ์์ง ๋ง์์</p>	
										<p>๋ด ์์ ๋๋ฅผ ๊นจ์ฐ๊ฒ ํด</p>
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>	
									</a>
								</li>
								<li>
									<a href="#" class="alert alert-dismissible fade show" role="alert">
										<img src="${pageContext.request.contextPath}/resources/images/kuromi4.jpg" alt="">
										<h3>๐</h3>
										<p>์ฟ๋น ์ธ์์ ๋ฑ์ง๊ณ? ์ด ๋์๋ฅผ ๋ฌ๋?ค๋ด</p>
										<p>๋ด ๋ง ๊ฐ๋ ๋๋ก ๊ฐ๋ก์ง๋ฌ ๊ฐ๋ณผ๋ ๋? ์ํด</p>	
										<p>๊ทธ๊ณณ์ด ์ด๋๋? ๋?๊ฐ๋ฅผ ํผ์น๊ณ? I'm flying</p>	
										<p>์? ์์์ง๋ฏ ํผ์ณ์ง ๊ธธ ์๋ก</p>	
										<p>๋ด ๋ชจ๋? ๊ฑธ ๋์?ธ</p>
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>	
									</a>
								</li>
								<li>
									<a href="#" class="alert alert-dismissible fade show" role="alert">
										<img src="${pageContext.request.contextPath}/resources/images/kuromi5.jpg" alt="">
										<h3>๐</h3>
										<p>Run run run higher, fly fly fly higher</p>
										<p>I, I find myself ๋ค์ ๋น๋๋ ๋๋ฅผ ๋ด</p>
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>	
									</a>
								</li>
								<li>
									<a href="#" class="alert alert-dismissible fade show" role="alert">
										<img src="${pageContext.request.contextPath}/resources/images/sanrio.jpg" alt="">
										<h3>๐</h3>
										<p>Run run run higher, fly fly fly fly higher</p>
										<p>์ด ์ด๋? ์ ๋์ ๊ฐ๊ณ?</p>	
										<p>๋ค์ ๊ฟ์ ๊ฟ</p>
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
						<span class="user-name">์ฟ?๋ก๋ฏธ๐</span>
					</a>
					<div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
						<a class="dropdown-item" href="profile"><i class="dw dw-user1"></i> Profile</a>
						<a class="dropdown-item" href="faq"><i class="dw dw-help"></i> Help</a>
						<a class="dropdown-item" href="login"><i class="dw dw-logout"></i> Log Out</a>
					</div>
				</div>
			</div>
			<div class="github-link">
				<a href="https://github.com/2022-SMHRD-UmGrade" target="_blank"><img src="${pageContext.request.contextPath}/resources/images/github.svg" alt=""></a>
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
			<a href="home">
				<img src="/resources/images/logo2.png" alt="" class="dark-logo">
				<img src="/resources/images/logo1.png" alt="" class="light-logo">
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li class="dropdown">
						<a href="home" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Home</span>
						</a>
					</li>
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-user"></span><span class="mtext">ํ์๊ด๋ฆฌ</span>
						</a>
						<ul class="submenu">
							<li><a href="userTable">ํ์์กฐํ</a></li>
							<li><a href="managerRegister">๊ด๋ฆฌ์๋ฑ๋ก</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-umbrella"></span><span class="mtext">์ฐ์ฐ๊ด๋ฆฌ</span>
						</a>
						<ul class="submenu">
							<li><a href="umTable">์ฐ์ฐ์กฐํ</a></li>
						</ul>
					</li>
					<li>
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-box-1"></span><span class="mtext">๋ณด๊ดํจ๊ด๋ฆฌ</span>
						</a>
						<ul class="submenu">
							<li><a href="umBoxTable">๋ณด๊ดํจ์กฐํ</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="rental" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">๋์ฌ๊ด๋ฆฌ</span>
						</a>
					</li>
					<li>
						<a href="qna" class="dropdown-toggle no-arrow">
							<span class="micon dw dw dw-question-1"></span><span class="mtext">์ง์์๋ต</span>
						</a>
					</li>
					<li>
						<a href="calendar" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-calendar1"></span><span class="mtext">๋ฌ๋?ฅ</span>
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
					<!-- ์๋น์ค ๋ฉ์ธ ํ์ด์ง๋ก ์ด๋ -->
					
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
								<h4>ํ์์กฐํ</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">ํ์๊ด๋ฆฌ</a></li>
									<li class="breadcrumb-item active" aria-current="page">ํ์์กฐํ</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
				<!-- Simple Datatable start -->
				<div class="card-box mb-30" >
					<div class="pd-20">
						<h4 class="text-blue h4">ํ์์กฐํ</h4>
					</div>
					<div class="pb-20">
					<table class="data-table table stripe hover nowrap text-center"  id="userlist" >
							<thead>
								<tr>
									<th>ID</th>
									<th>์ด๋ฆ</th>
									<th>๋๋ค์</th>
									<th>๋์ฌ์ํ</th>
									<th>ํฌ์ธํธ</th>
									<th>๊ฐ์์ผ</th>
									<th class="datatable-nosort">Action</th>
								</tr>
							</thead>
					</table>
					</div>							
				</div>
				<!-- Simple Datatable End -->
			</div>
			<div class="footer-wrap pd-20 mb-20 card-box">
				์ง๋ฅํ IoT์ตํฉ SW์?๋ฌธ๊ฐ๊ณผ์? ์ค์?ํ๋ก์?ํธ <a href="https://github.com/2022-SMHRD-UmGrade" target="_blank">UmGrade</a>
			</div>
		</div>
	</div>
	
	<!-- js -->
	<script src="${pageContext.request.contextPath}/resources/js/core.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/script.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/process.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/layout-settings.js"></script>
	<script src="${pageContext.request.contextPath}/resources/src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<!-- buttons for Export datatable -->
	<script src="${pageContext.request.contextPath}/resources/src/plugins/datatables/js/dataTables.buttons.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/src/plugins/datatables/js/buttons.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/src/plugins/datatables/js/buttons.print.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/src/plugins/datatables/js/buttons.html5.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/src/plugins/datatables/js/buttons.flash.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/src/plugins/datatables/js/pdfmake.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/src/plugins/datatables/js/vfs_fonts.js"></script>
	<!-- Datatable Setting js -->
<%-- 	<script src="${pageContext.request.contextPath}/resources/js/datatable-setting.js"></script></body> --%>
	<!-- add sweet alert js & css in footer -->
	<script src="${pageContext.request.contextPath}/resources/src/plugins/sweetalert2/sweetalert2.all.js"></script>
	<script src="${pageContext.request.contextPath}/resources/src/plugins/sweetalert2/sweet-alert.init.js"></script>
	
	<!-- ํ์ด๋ธ์ถ๋?ฅ js -->
	<script src="${pageContext.request.contextPath}/resources/js/webjs.js"></script>
	 
	<script>
	$(document).ready(()=>{
		userList1()
	})
	
	function userList1(data) {
	    $("#userlist").DataTable({
	    	scrollCollapse: true,
		      autoWidth: false,
		      responsive: true,
		      columnDefs: [{
		         targets: "datatable-nosort",
		         orderable: false,
		      }],
		      "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
		      "language": {
		         "info": "_START_-_END_ of _TOTAL_ entries",
		         searchPlaceholder: "Search",
		         paginate: {
		            next: '<i class="ion-chevron-right"></i>',
		            previous: '<i class="ion-chevron-left"></i>'  
		         }
		      },
		      destroy: true,
	    	ajax:{
	    		url :  getContextPath()+"/userList.do", 
	    		type : "get",
	    		dataType : "json",
	    		dataSrc :'',
	        },
	        columns:[
	        	{data:"user_id"},
	        	{data:"user_name"},
	        	{data:"user_nick"},
	        	{data:"user_status"},
	        	{data:"user_point"},
	        	{data:"user_joindate"},
	        	{
	              data: null,
	              render: function ( data, type, row ) {
	            	  
	                return "<div class='dropdown'><a class='btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle' href='#' role='button' data-toggle='dropdown'><i class='dw dw-more'></i></a><div class='dropdown-menu dropdown-menu-right dropdown-menu-icon-list'><a class='dropdown-item' href='userDetails?user_id="+row.user_id+"'><i class='dw dw-eye'></i>์์ธ๋ณด๊ธฐ</a><button class='dropdown-item' type='button' onclick='userDel(\"" +row.user_id + "\")'><i class='dw dw-delete-3'></i>์ญ์?</button></div></div>";

	              }
	            }       	
	        ]        
	    });
	}

	</script>
	
</html>