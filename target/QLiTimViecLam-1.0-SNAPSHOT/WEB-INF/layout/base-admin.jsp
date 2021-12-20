<%-- 
    Document   : base-admin
    Created on : Dec 20, 2021, 3:05:15 AM
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
        <h1 class="text-center text-info">TRANG THỐNG KÊ - BÁO CÁO</h1>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-xs-12">
                    <!-- HEADER -->
                    <tiles:insertAttribute name="left" />
                </div>
                <div class="col-md-8 col-xs-12">
                     <!-- CONTENT -->
                    <tiles:insertAttribute name="content" />
                </div>  
            
            <!-- FOOTER -->
            <tiles:insertAttribute name="footer" />
        </div>
    </body>
</html>
