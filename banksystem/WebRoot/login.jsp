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
				<li><a href="#log-in" data-toggle="tab">��½</a></li>
				<li class=""><a href="#register" data-toggle="tab">ע��</a></li>
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
								<button class="btn btn-success pull-right" type="submit">��½</button>
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
									class="form-control left-icon" placeholder="�����������" /> <i
									class="ec-user s16 left-input-icon"></i>
							</div>
						</div>
						<div class = "form-group">
							<!-- col-lg-12 end here -->
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<input type="password" class="form-control left-icon"
									id="password1" name="userInfo.password" placeholder="�����������" />
								<i class="ec-locked s16 left-input-icon"></i>
							</div>
						</div>
						<div class = "form-group">
							<!-- col-lg-12 end here -->
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<input type="text" class="form-control left-icon" id="age"
									name="userInfo.userAge" placeholder="�����������" /> <i
									class="st-calendar s16 left-input-icon"></i>
							</div>
						</div>
						<div class = "form-group">
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<input type="text" class="form-control left-icon" id="idcard"
									name="userInfo.idCard" placeholder="����������֤��"> <i
									class="im-profile s16 left-input-icon"></i>
							</div>
						</div>
						<div class = "form-group">
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<input type="text" class="form-control left-icon" id="usersex"
									name="userInfo.userSex" placeholder="��������Ա�"> <i
									class="fa-male s16 left-input-icon"></i>
							</div>
						</div>
						<div class = "form-group">
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<input type="text" class="form-control left-icon" id="tel"
									name="userInfo.tel" placeholder="������ĵ绰"> <i
									class="im-phone s16 left-input-icon"></i>
							</div>
						</div>
						<div class = "form-group">
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<input type="text" class="form-control left-icon" id="city"
									name="userInfo.city" placeholder="������ĳ���"> <i
									class="en-map s16 left-input-icon"></i>
							</div>
						</div>
						<div class = "form-group">
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<input type="text" class="form-control left-icon" id="address"
									name="userInfo.address" placeholder="������ĵ�ַ"> <i
									class="en-house s16 left-input-icon"></i>
							</div>
							<!-- col-lg-12 end here -->
						</div>
						<div class="form-group">
							<div class="col-lg-12">
								<!-- col-lg-12 start here -->
								<button class="btn btn-success btn-block" type="submit">ע��</button>
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
						message : '�û�������֤ʧ��',
						validators : {
							notEmpty : {
								message : '��������Ϊ��'
							},
							stringLength : {
								min : 2,
								max : 5,
								message : '�������ȱ�����2��5λ֮��'
							},
							regexp : {
								regexp : /^[\u4E00-\u9FA5]+$/,
								message : '����ֻ��������'
							}
						}
					},
					password1 : {
						selector: '#password1',
						message : '������֤ʧ��',
						validators : {
							notEmpty : {
								message : '���벻��Ϊ��'
							},
							stringLength : {
								max : 20,
								min : 6,
								message : '���볤�ȱ�����6��20λ֮��'
							}
						}
					},
					userAge : {
						selector : '#age',
						validators : {
							notEmpty : {
								message : '���䲻��Ϊ��'
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
								message : '���֤���벻��Ϊ��'
							},
							regexp : {
								regexp : /^(\d{15}$|^\d{18}$|^\d{17}(\d|X|x))$/,
								message : '���֤����ֻ����15��18λ'
							}
						}
					},
					userSex : {
						selector : '#usersex',
						validators : {
							notEmpty : {
								message : '�Ա���Ϊ��'
							}
						}
					},
					tel : {
						selector : '#tel',
						validators : {
							notEmpty : {
								message : '�绰����Ϊ��'
							}
						}
					},
					city : {
						selector : '#city',
						validators : {
							notEmpty : {
								message : '���в���Ϊ��'
							}
						}
					},
					address : {
					selector : '#address',
						validators : {
							notEmpty : {
								message : '��ַ����Ϊ��'
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
						message : '�˺���֤ʧ��',
						validators : {
							notEmpty : {
								message : '�˺Ų���Ϊ��'
							},
							regexp : {
								regexp : /^\d{13}$/,
								message : '�˺ű���Ϊ13λ��'
							}
						}
					},
					password : {
						message : '������֤ʧ��',
						validators : {
							notEmpty : {
								message : '���벻��Ϊ��'
							},
							stringLength : {
								max : 20,
								min : 6,
								message : '���볤�ȱ�����6��20λ֮��'
							}
						}
					}
				}
			});
		});
	</script>
</body>
</html>