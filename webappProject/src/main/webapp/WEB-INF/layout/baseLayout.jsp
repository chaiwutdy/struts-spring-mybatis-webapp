<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> 
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Bootstrap css -->
	<link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
	<link rel="stylesheet" href="./assets/css/bootstrap.techie.css" />
	
<!-- =======================================================
    Theme Name: Techie
    Theme URL: https://bootstrapmade.com/techie-free-skin-bootstrap-3/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
======================================================= -->
	<!-- Main Scripts-->
  <script src="./assets/js/jquery.js"></script>
  <script src="./assets/js/bootstrap.min.js"></script>
 	<!-- Docs Custom styles -->
  <style>
	body,html{overflow-x:hidden}
	body{padding:10px 10px 0}
	footer{border-top:1px solid #ddd;padding:30px;margin-top:50px}
	.row>[class*=col-]{margin-bottom:40px}
	.navbar-container{position:relative;min-height:100px}
	.navbar.navbar-fixed-bottom,.navbar.navbar-fixed-top{position:absolute;top:50px;z-index:0}
	.navbar.navbar-fixed-bottom .container,.navbar.navbar-fixed-top .container{max-width:90%}
	.btn-group{margin-bottom:10px}
	.form-inline input[type=password],.form-inline input[type=text],.form-inline select{width:180px}
	.input-group{margin-bottom:10px}
	.pagination{margin-top:0}
	.navbar-inverse{margin:0px 0}
  </style>
  <title><tiles:getAsString name="title" /></title> 
</head>
<body>

<div class="container">
<tiles:insertAttribute name="header" /><br/>
<tiles:insertAttribute name="body" /><br/>
</div>
<tiles:insertAttribute name="footer" /><br/>

</body>
</html>