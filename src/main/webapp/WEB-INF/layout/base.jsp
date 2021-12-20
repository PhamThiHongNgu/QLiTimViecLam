<%-- 
    Document   : base
    Created on : Dec 5, 2021, 11:56:55 PM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>
            <tiles:insertAttribute name="title" />
        </title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/css/styles.css"/>" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <!-- HEADER -->
            <tiles:insertAttribute name="header" />
            
            <!-- CONTENT -->
            <tiles:insertAttribute name="content" />
            
            <!-- FOOTER -->
            <tiles:insertAttribute name="footer" />
        </div>
    </body>
</html>

