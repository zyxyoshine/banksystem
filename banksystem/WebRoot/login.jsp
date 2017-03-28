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
<body class="login-page">
	<!-- Start #login -->
	<div id="login" class="animated bounceIn">
		<!-- Start .login-wrapper -->
		<div class="login-wrapper">
			<ul id="myTab" class="nav nav-tabs nav-justified bn">
				<li><a href="#log-in" data-toggle="tab">登陆</a></li>
				<li class=""><a href="#register" data-toggle="tab">注册</a></li>
			</ul>
			<div id="myTabContent" class="tab-content bn">
				<div class="tab-pane fade active in" id="log-in">
					<form action="loginValidate.action" class="form-horizontal mt10"
						action="index.html" id="login-form" role="form">
						<div class="form-group">
							<div class="col-lg-12">
								<input name="userNO" id="userno" class="form-control left-icon" />
								<i class="ec-user s16 left-input-icon"></i>
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-12">
								<input type="password" name="password" id="password"
									class="form-control left-icon"> <i
									class="ec-locked s16 left-input-icon"></i>
							</div>
						</div>
						<div class="form-group">
							<!-- col-lg-12 end here -->
							<div class="col-lg-7 col-md-6 col-sm-6 col-xs-4">
								<!-- col-lg-12 start here -->
								<button class="btn btn-success pull-right" type="submit">登陆</button>
							</div>
							<!-- col-lg-12 end here -->
						</div>
					</form>
				</div>
				<div class="tab-pane fade" id="register">
					<form action="regValidate.action" class="form-horizontal mt20"
						id="register-form" role="form" method="post"
						data-toggle="validator">
						<s:token />
						<div class="form-group">
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<input type="text" id="username" name="userInfo.userName"
									class="form-control left-icon" placeholder="输入你的姓名" /> <i
									class="ec-user s16 left-input-icon"></i>
							</div>
						</div>
						<div class = "form-group">
							<!-- col-lg-12 end here -->
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<input type="password" class="form-control left-icon"
									id="password1" name="userInfo.password" placeholder="输入你的密码" />
								<i class="ec-locked s16 left-input-icon"></i>
							</div>
						</div>
						<div class = "form-group">
							<!-- col-lg-12 end here -->
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<input type="text" class="form-control left-icon" id="age"
									name="userInfo.userAge" placeholder="输入你的年龄" /> <i
									class="st-calendar s16 left-input-icon"></i>
							</div>
						</div>
						<div class = "form-group">
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<input type="text" class="form-control left-icon" id="idcard"
									name="userInfo.idCard" placeholder="输入你的身份证号"> <i
									class="im-profile s16 left-input-icon"></i>
							</div>
						</div>
						<div class = "form-group">
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<input type="text" class="form-control left-icon" id="usersex"
									name="userInfo.userSex" placeholder="输入你的性别"> <i
									class="fa-male s16 left-input-icon"></i>
							</div>
						</div>
						<div class = "form-group">
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<input type="text" class="form-control left-icon" id="tel"
									name="userInfo.tel" placeholder="输入你的电话"> <i
									class="im-phone s16 left-input-icon"></i>
							</div>
						</div>
						<div class = "form-group">
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<input type="text" class="form-control left-icon" id="city"
									name="userInfo.city" placeholder="输入你的城市"> <i
									class="en-map s16 left-input-icon"></i>
							</div>
						</div>
						<div class = "form-group">
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<input type="text" class="form-control left-icon" id="address"
									name="userInfo.address" placeholder="输入你的地址"> <i
									class="en-house s16 left-input-icon"></i>
							</div>
							<!-- col-lg-12 end here -->
						</div>
						<div class="form-group">
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<button class="btn btn-success btn-block" type="submit">注册</button>
							</div>
							<!-- col-lg-12 end here -->
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- End #.login-wrapper -->
	</div>
	<!-- End #login -->
	<script>
		$(document).ready(function() {
			$('#register-form').bootstrapValidator({
				message : 'This value is not valid',
				feedbackIcons : {
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {
					username : {
						selector : '#username',
						message : '用户姓名验证失败',
						validators : {
							notEmpty : {
								message : '姓名不能为空'
							},
							stringLength : {
								min : 2,
								max : 5,
								message : '姓名长度必须在2到5位之间'
							},
							regexp : {
								regexp : /^[\u4E00-\u9FA5]+$/,
								message : '姓名只能用中文'
							}
						}
					},
					password1 : {
						selector: '#password1',
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
					userAge : {
						selector : '#age',
						validators : {
							notEmpty : {
								message : '年龄不能为空'
							},
							between : {
								min : 1,
								max : 150,
								message : 'The latitude must be between 1 and 150'
							}
						}
					},
					idCard : {
						selector : '#idcard',
						validators : {
							notEmpty : {
								message : '身份证号码不能为空'
							},
							regexp : {
								regexp : /^(\d{15}$|^\d{18}$|^\d{17}(\d|X|x))$/,
								message : '身份证号码只能是15或18位'
							}
						}
					},
					userSex : {
						selector : '#usersex',
						validators : {
							notEmpty : {
								message : '性别不能为空'
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
					selector : '#address',
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
		
	<script>
		$(document).ready(function() {
			$('#login-form').bootstrapValidator({
				message : 'This value is not valid',
				feedbackIcons : {
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {
					userNO : {
						message : '账号验证失败',
						validators : {
							notEmpty : {
								message : '账号不能为空'
							},
							regexp : {
								regexp : /^\d{13}$/,
								message : '账号必须为13位数'
							}
						}
					},
					password : {
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
					}
				}
			});
		});
	</script>
</body>
</html>