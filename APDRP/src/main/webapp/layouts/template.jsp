<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
<script src="assets/js/jquery.min.js"></script>
<link href="assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="assets/css/core.css" rel="stylesheet" type="text/css" />
<link href="assets/css/components.css" rel="stylesheet" type="text/css" />
<link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
<link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
<link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
<link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="assets/dataTables/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/dataTables/dataTables.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<script src="js/disable_f5.js"></script>
<script src="assets/dataTables/jquery.dataTables.min.js"></script>
<script src="assets/dataTables/dataTables.bootstrap.js"></script>

<style type="text/css">
.mydiv {
	position: fixed;
	text-align: center;
	top: 50%;
	left: 50%;
	margin-top: -9em;
	margin-left: -6em;
	/* border: 1px solid #ccc; */
	background: transparent;
	z-index: 999999;
	display: inline-block;
}

.table_style > thead > tr > th {
	text-align: center;
	vertical-align: middle;
}

</style>

</head>
<body>
	<div id="LOADINGPAGEGIF" class="mydiv">
		<img src='<%=basePath%>img/preloader.gif' /> <br /> Retrieving
		your data. Please wait...
	</div>
		<header id="topnav">
			< <tiles:insertAttribute name="header" /> 

			<!-- end topbar-main -->
		   <tiles:insertAttribute name="menu" /> 
			<!-- end navbar-custom -->
		</header>

<div class="wrapper">
		<div class="container">

			
		
	</div>
	<div class="container">
	
		
			 <tiles:insertAttribute name="body" /> 
		 <tiles:insertAttribute name="footer" /> 
		 </div>
		 </div>
	<!-- end wrapper -->

	<script>
		var resizefunc = [];
	</script>
	<!-- jQuery  -->

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.blockUI.js"></script>


	<!-- App js -->
	<script type="text/javascript">
		setTimeout(function() {
			$("#LOADINGPAGEGIF").html("");
		}, 1000);
	</script>
		 
</body>
</html>