<%-- 
    Document   : header
    Created on : Dec 5, 2021, 11:58:25 PM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
</html>
    <body id="page-top" class="masthead bg-primary text-white text-center">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top">Vieclam24h.vn</a>
               
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="<c:url value="/"/>">Trang chủ</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="<c:url value="/admin/viecLam"/>">Nhà tuyển dụng</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="<c:url value="/timViecs"/>">Tìm việc</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Đăng ký</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Đăng nhập</a></li>
                    </ul>
                    <form action="">
                        <div class="row">
                            <div class="col-md-11">
                                <input class="form-control" type="text" placeholder="Tìm kiếm.." name="vl"/>
                            </div>
                            <div class="col-md-1">
                                <input type="submit" value="Search" class="btn btn-danger"/>
                            </div>
                         </div>
                </form>
                  
            </div>
        </nav>
   
    </body>
</html>
