<%@ page contentType="text/html; charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@include file="check.jsp"%>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Forms</title>
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
<link rel='stylesheet' type='text/css' />
<!--[if lt IE 9]>

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
<!-- Core plugins ( not remove ever) -->
<!-- Handle responsive view functions -->
<script src="assets/js/jRespond.min.js"></script>
<!-- Custom scroll for sidebars,tables and etc. -->
<script src="assets/plugins/core/slimscroll/jquery.slimscroll.min.js"></script>
<script
	src="assets/plugins/core/slimscroll/jquery.slimscroll.horizontal.min.js"></script>
<!-- Resize text area in most pages -->
<script src="assets/plugins/forms/autosize/jquery.autosize.js"></script>
<!-- Proivde quick search for many widgets -->
<script src="assets/plugins/core/quicksearch/jquery.quicksearch.js"></script>
<!-- Bootbox confirm dialog for reset postion on panels -->
<script src="assets/plugins/ui/bootbox/bootbox.js"></script>
<!-- Other plugins ( load only nessesary plugins for every page) -->
<script src="assets/plugins/core/moment/moment.min.js"></script>
<script src="assets/plugins/charts/sparklines/jquery.sparkline.js"></script>
<script src="assets/plugins/charts/pie-chart/jquery.easy-pie-chart.js"></script>
<script src="assets/plugins/forms/icheck/jquery.icheck.js"></script>
<script src="assets/plugins/forms/tags/jquery.tagsinput.min.js"></script>
<script src="assets/plugins/forms/tinymce/tinymce.min.js"></script>
<script src="assets/plugins/forms/switch/jquery.onoff.min.js"></script>
<script src="assets/plugins/forms/maxlength/bootstrap-maxlength.js"></script>
<script
	src="assets/plugins/forms/bootstrap-filestyle/bootstrap-filestyle.js"></script>
<script src="assets/plugins/forms/color-picker/spectrum.js"></script>
<script src="assets/plugins/forms/daterangepicker/daterangepicker.js"></script>
<script
	src="assets/plugins/forms/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script src="assets/plugins/forms/globalize/globalize.js"></script>
<script src="assets/plugins/forms/maskedinput/jquery.maskedinput.js"></script>
<script src="assets/plugins/forms/select2/select2.js"></script>
<script
	src="assets/plugins/forms/dual-list-box/jquery.bootstrap-duallistbox.js"></script>
<script src="assets/plugins/forms/password/jquery-passy.js"></script>
<script src="assets/plugins/forms/checkall/jquery.checkAll.js"></script>
<script src="assets/plugins/misc/highlight/highlight.pack.js"></script>
<script src="assets/plugins/misc/countTo/jquery.countTo.js"></script>
<script src="assets/js/jquery.sprFlat.js"></script>
<script src="assets/js/app.js"></script>
<script src="assets/js/pages/forms.js"></script>
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
								<li><a href="userInfo.jsp"><i class="st-user"></i> 个人信息</a></li>
								<li><a href="logout.action"><i class="im-exit"></i> 登出</a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<div class="sidebar-fixed" id="sidebar">

		<!-- #sidebar-shortcuts -->

		<ul class="nav nav-list">
			<li class="active"><a href="save.jsp" target="mainFrame"> <i
					class="fa-money"> </i> <span class="menu-text"> 存钱 </span>
			</a></li>

			<li><a href="fetch.jsp" target="mainFrame"> <i
					class="fa-money"> </i> <span class="menu-text"> 取钱 </span>
			</a></li>

			<li><a href="selectTradeInfo.action" target="mainFrame"> <i
					class="ec-bookmark"> </i> <span class="menu-text"> 交易信息 </span>
			</a></li>

			<li><a href="selectUser.action" target="mainFrame"> <i
					class="im-profile"> </i> <span class="menu-text"> 个人信息 </span>
			</a></li>

			<li><a href="updateUser.jsp" target="mainFrame"> <i
					class="ec-pencil2"> </i> <span class="menu-text"> 修改信息 </span>
			</a></li>

			<li><a href="logout.action" target="mainFrame"> <i
					class="en-logout"> </i> <span class="menu-text"> 登出 </span>
			</a></li>

			<li><a href="deleteUserInfo.jsp" target="mainFrame"> <i
					class="en-key"> </i> <span class="menu-text"> 注销 </span>
			</a></li>
		</ul>
		<!-- /.nav-list -->
	</div>

	<div id="content">
		<div class="panel panel-default toggle">
			<!-- Start .panel -->
			<div class="panel-heading">
				<h3 class="panel-title">存钱</h3>
			</div>
			<div class="panel-body">
				<form action="smoneyValidate.action"
					class="form-horizontal group-border hover-stripped" role="form">
					<s:token />
					<div class="form-group">
						<label class="col-lg-2 col-md-2 col-sm-12 control-label">输入存款金额</label>
						<div class="col-lg-5 col-md-5">
							<input name="money" class="form-control" />
							<button type="submit" class="btn btn-default btn-sm">确定</button>
							<button type="reset" class="btn btn-default btn-sm">重置</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>