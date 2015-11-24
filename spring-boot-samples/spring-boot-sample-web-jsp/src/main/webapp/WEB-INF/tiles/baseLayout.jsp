<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt' %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html lang="en">

	<head>
		<title><spring:message code="application.title" /></title>
		
		<base href="${pageContext.request.contextPath}/" />
		<meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	
		<link rel="shortcut icon" href="images/favicon.ico?v=${resourcesVersion}" />
		<!-- CSS -->
		<%-- <link rel="stylesheet" href="resources/themes/gebo/bootstrap/css/bootstrap.min.css?v=${resourcesVersion}" /> --%>
		
		
		<!-- JS -->
		<%-- <script type="text/javascript" src="resources/themes/gebo/js/jquery.min.js?v=${resourcesVersion}"></script> --%>
		
		
	</head>
	
<%-- 	<body class="abox-bar-shown">
		<div id="maincontainer" class="clearfix">
			<tiles:insertAttribute name="header" />
			<div id="contentwrapper">
				<div id="container" class="main_content">
					<tiles:insertAttribute name="body" />
				</div>
			</div>
			
			<tiles:insertAttribute name="sidebar" />
			
		</div>
	</body> --%>

</html>
