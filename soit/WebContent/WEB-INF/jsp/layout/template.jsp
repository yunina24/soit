<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Payne - Backpack eCommerce HTML Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicons -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/bootstrap/assets/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath }/bootstrap/assets/img/icon.png">
    
    <!-- Vendor CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap/assets/css/vendor.css">

    <!-- style css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap/assets/css/main.css">  
    
    <!-- jQuery JS -->
    <script src="${pageContext.request.contextPath }/bootstrap/ssets/js/vendor.js"></script>

    <!-- Main JS -->
    <script src="${pageContext.request.contextPath }/bootstrap/assets/js/main.js"></script>
  
</head>
<body>

	<tiles:insertAttribute name="menu">
	</tiles:insertAttribute>
	
	<hr>
	<tiles:insertAttribute name="body">
	</tiles:insertAttribute>
	
	<hr>
	<tiles:insertAttribute name="foot">
	</tiles:insertAttribute>
</body>
</html>