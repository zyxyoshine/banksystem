<%@ page contentType="text/html; charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	request.setCharacterEncoding("GBK");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>Login</title>
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
<link href="assets/css/bootstrapValidator.min.css" rel="styleheet" />
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
<script src="assets/js/bootstrapValidator.min.js"></script>
<!-- Form plugins -->
<script src="assets/plugins/forms/icheck/jquery.icheck.js"></script>
<script src="assets/plugins/forms/validation/jquery.validate.js"></script>
<script src="assets/plugins/forms/validation/additional-methods.min.js"></script>
<!-- Init plugins olny for this page -->
<script src="assets/js/pages/login.js"></script>
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
			<div class="col-md-4 column"></div>
			<div class="col-md-8 column">
				<div class="animated bounceIn">
					<!-- Start .login-wrapper -->
					<div class="panel panel-default toggle">
						<form action="updateUserValidate.action" class="form-horizontal mt20"
							id="update-form" role="form" method="post"
							data-toggle="validator">
							<s:token />
							<div class="form-group">
								<!-- col-lg-12 end here -->
								<div class="col-md-8">
									<!-- col-lg-12 start here -->
									<input type="password" class="form-control left-icon"
										id="password1" name="userInfo.password" placeholder="输入你的密码" />
									<i class="ec-locked s16 left-input-icon"></i>
								</div>
								<br>
								<div class="col-md-8">
									<!-- col-lg-12 start here -->
									<input type="text" class="form-control left-icon" id="tel"
										name="userInfo.tel" placeholder="输入你的电话"> <i
										class="im-phone s16 left-input-icon"></i>
								</div>
								<br>
								<div class="col-md-8">
									<!-- col-lg-12 start here -->
									<input type="text" class="form-control left-icon" id="city"
										name="userInfo.city" placeholder="输入你的城市"> <i
										class="en-map s16 left-input-icon"></i>
								</div>
								<br>
								<div class="col-md-8">
									<!-- col-lg-12 start here -->
									<input type="text" class="form-control left-icon" id="address"
										name="userInfo.address" placeholder="输入你的地址"> <i
										class="en-house s16 left-input-icon"></i>
								</div>
								<!-- col-lg-12 end here -->
							</div>
							<div class="form-group">
								<div class="col-md-4">
									<!-- col-lg-12 start here -->
									<button class="btn btn-success btn-block" type="submit">修改</button>
								</div>
								<div class="col-md-4">
									<!-- col-lg-12 start here -->
									<button class="btn btn-success btn-block" type="reset">重置</button>
								</div>
								<!-- col-lg-12 end here -->
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- End #login -->
	<script>
		$(document).ready(function() {
			$('#update-form').bootstrapValidator({
				message : 'This value is not valid',
				feedbackIcons : {
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {
					password1 : {
						selector : '#password1',
						message : '密码验证失败',
						validators : {
							notEmpty : {
								message : '密码不能为空'
							},
							stringLength : {
								max : 20,
								min : 6,
								message : '密码长度必须在6到20位之间'
							}
						}
					},
					tel : {
						selector : '#tel',
						validators : {
							notEmpty : {
								message : '电话不能为空'
							}
						}
					},
					city : {
						selector : '#city',
						validators : {
							notEmpty : {
								message : '城市不能为空'
							}
						}
					},
					address : {
						selector : 'address',
						validators : {
							notEmpty : {
								message : '地址不能为空'
							}
						}
					}
				}
			});
		});
	</script>
</body>
</html>