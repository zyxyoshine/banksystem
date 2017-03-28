<%@ page contentType="text/html; charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta charset="utf-8">
<title>Tables</title>
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
<script src="assets/plugins/tables/datatables/jquery.dataTables.min.js"></script>
<script src="assets/plugins/tables/datatables/jquery.dataTablesBS3.js"></script>
<script
	src="assets/plugins/tables/datatables/tabletools/ZeroClipboard.js"></script>
<script src="assets/plugins/tables/datatables/tabletools/TableTools.js"></script>
<script src="assets/plugins/misc/highlight/highlight.pack.js"></script>
<script src="assets/plugins/misc/countTo/jquery.countTo.js"></script>
<script src="assets/js/jquery.sprFlat.js"></script>
<script src="assets/js/app.js"></script>
<script src="assets/js/pages/data-tables.js"></script>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<!-- col-lg-12 start here -->
			<div class="panel panel-success plain toggle panelClose panelRefresh">
				<!-- Start .panel -->
				<div class="panel-heading">
					<h4 class="panel-title">注册成功，您的个人信息如下</h4>
				</div>
				<div class="panel-body">
					<table class="table display" id="datatable">
						<tbody>
							<tr class="odd gradeX">
								<th>用户账号</th>
								<td><s:property value="userInfo.userNO" /></td>
							</tr>
							<tr class="even gradeC">
								<th>帐户余额</th>
								<td><s:property value="userInfo.balance" /></td>
							</tr>
							<tr class="odd gradeA">
								<th>用户姓名</th>
								<td><s:property value="userInfo.userName" /></td>
							</tr>
							<tr class="odd gradeA">
								<th>用户性别</th>
								<td><s:property value="userInfo.userSex" /></td>
							</tr>
							<tr class="odd gradeA">
								<th>用户年龄</th>
								<td><s:property value="userInfo.userAge" /></td>
							</tr>
							<tr class="odd gradeA">
								<th>身份证</th>
								<td><s:property value="userInfo.idCard" /></td>
							</tr>
							<tr class="odd gradeA">
								<th>联系电话</th>
								<td><s:property value="userInfo.tel" /></td>
							</tr>
							<tr class="odd gradeA">
								<th>城市</th>
								<td><s:property value="userInfo.city" /></td>
							</tr>
							<tr class="odd gradeA">
								<th>详细地址</th>
								<td><s:property value="userInfo.address" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- End .panel -->
			<div class="container animated fadeInDown">
				<p class="text-center s24">注册成功，请牢记您的账号信息。</p>
				<div class="text-center mt25">
					<div class="btn-group">
						<a href="login.jsp" target="_top" class="btn btn-default btn-lg"><i
							class="en-arrow-left8"></i> 返回</a>
					</div>
				</div>
			</div>
		</div>
		<!-- col-lg-12 end here -->
	</div>
</body>
</html>
