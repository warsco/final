<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
    <!-- Styles -->
    <link href="/final/assets/css/app.min.css" rel="stylesheet">
    <link href="/final/assets/css/theshots.css" rel="stylesheet">
    <link href="/final/assets/css/custom.css" rel="stylesheet">
    <script src="/final/assets/js/app.min.js"></script>
    <script src="/final/assets/js/theshots.js"></script>
    <script src="/final/assets/js/custom.js"></script>
    
<title><tiles:getAsString name="title" /></title>
</head>       
<body>
	<tiles:insertAttribute name="header"/>  
	<tiles:insertAttribute name="body"/>
	<tiles:insertAttribute name="footer"/>
	<tiles:insertAttribute name="loginModal" />
</body> 
</html> 