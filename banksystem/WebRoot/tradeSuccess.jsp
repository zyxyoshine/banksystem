<%@ page contentType="text/html; charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta charset="utf-8">
<title>deleteSuccess</title>
<!-- Mobile specific metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- Force IE9 to render in normal mode -->
<!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
<meta name="author" content="SuggeElson" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="application-name" content="sprFlat admin template" />
<!-- Import google fonts - Heading first/ text second -->
<link rel='stylesheet' type='text/css'
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,700|Droid+Sans:400,700' />
<!--[if lt IE 9]>
			<link href="http://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" type="text/css" />
			<link href="http://fonts.googleapis.com/css?family=Open+Sans:700" rel="stylesheet" type="text/css" />
			<link href="http://fonts.googleapis.com/css?family=Droid+Sans:400" rel="stylesheet" type="text/css" />
			<link href="http://fonts.googleapis.com/css?family=Droid+Sans:700" rel="stylesheet" type="text/css" />
		<![endif]-->
<!-- Css files -->
<!-- Icons -->
<link href="assets/css/icons.css" rel="stylesheet" />
<!-- jQueryUI -->
<link href="assets/css/sprflat-theme/jquery.ui.all.css" rel="stylesheet" />
<!-- Bootstrap stylesheets (included template modifications) -->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- Plugins stylesheets (all plugin custom css) -->
<link href="assets/css/plugins.css" rel="stylesheet" />
<!-- Main stylesheets (template main css file) -->
<link href="assets/css/main.css" rel="stylesheet" />
<!-- Custom stylesheets ( Put your own changes here ) -->
<link href="assets/css/custom.css" rel="stylesheet" />
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/img/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/img/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/img/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/img/ico/apple-touch-icon-57-precomposed.png">
<link rel="icon" href="assets/img/ico/favicon.ico" type="image/png">
<!-- Windows8 touch icon ( http://www.buildmypinnedsite.com/ )-->
<meta name="msapplication-TileColor" content="#3399cc" />
<!-- Javascripts -->
<!-- Load pace first -->
<script src="assets/plugins/core/pace/pace.min.js"></script>
<!-- Important javascript libs(put in all pages) -->
<script src="assets/js/jquery-1.8.3.min.js"></script>
<script>
	window.jQuery || document.write('<script src="assets/js/libs/jquery-2.1.1.min.js">\x3C/script>')
</script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script>
	window.jQuery || document.write('<script src="assets/js/libs/jquery-ui-1.10.4.min.js">\x3C/script>')
</script>
<!--[if lt IE 9]>
		  <script type="text/javascript" src="assets/js/libs/excanvas.min.js"></script>
		  <script type="text/javascript" src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		  <script type="text/javascript" src="assets/js/libs/respond.min.js"></script>
		<![endif]-->
<!-- Bootstrap plugins -->
<script src="assets/js/bootstrap/bootstrap.js"></script>
</head>
<body>
	<div id="header">
		<div class="container-fluid">
			<div class="navbar">
				<div class="navbar-header">
					<a class="navbar-brand" href="trade.jsp"> <i
						class="fa-yen text-logo-element animated bounceIn"></i> <span
						class="text-logo">BANK</span>
					</a>
				</div>
				<nav class="top-nav" role="navigation">
				<ul class="nav navbar-nav pull-right">
					<li class="dropdown"><a href="#" data-toggle="dropdown">欢迎,<s:property
								value="#session.user.userName" /></a>
						<ul class="dropdown-menu right" role="menu">
							<li><a href="userInfo.jsp"><i class="st-user"></i>
									个人信息</a></li>
							<li><a href="logout.action"><i class="im-exit"></i>
									登出</a></li>
						</ul></li>
				</ul>
				</nav>
			</div>
		</div>
	</div>
	<!-- End #header -->
	<div class="sidebar-fixed" id="sidebar">

		<!-- #sidebar-shortcuts -->

		<ul class="nav nav-list">
			<li class="active"><a href="save.jsp"> <i class="fa-money">
				</i> <span class="menu-text"> 存钱 </span>
			</a></li>

			<li><a href="fetch.jsp"> <i class="fa-money"> </i> <span
					class="menu-text"> 取钱 </span>
			</a></li>

			<li><a href="selectTradeInfo.action"> <i class="ec-bookmark">
				</i> <span class="menu-text"> 交易信息 </span>
			</a></li>

			<li><a href="selectUser.action"> <i class="im-profile">
				</i> <span class="menu-text"> 个人信息 </span>
			</a></li>

			<li><a href="updateUser.jsp"> <i class="ec-pencil2"> </i> <span
					class="menu-text"> 修改信息 </span>
			</a></li>

			<li><a href="logout.action"> <i class="en-logout"> </i> <span
					class="menu-text"> 登出 </span>
			</a></li>

			<li><a href="deleteUserInfo.jsp"> <i class="en-key"> </i> <span
					class="menu-text"> 注销 </span>
			</a></li>
		</ul>
		<!-- /.nav-list -->
	</div>
	<div id="content" class="container">
		<div class="row">
			<div class="span4"></div>
			<div class="span4">
				<!-- col-lg-12 start here -->
				<div
					class="panel panel-success plain toggle panelClose panelRefresh">
					<!-- Start .panel -->
					<div class="panel-heading">
						<h4 class="panel-title">交易成功</h4>
					</div>
					<div class="panel-body">
						您的账户余额为<a><s:property value="balance" /> </a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

</html>
