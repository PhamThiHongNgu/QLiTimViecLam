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
                <a class="navbar-brand" href="<c:url value="/"/>">Vieclam24h.vn</a>
               
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded" href="<c:url value="/"/>">Trang chủ</a></li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded" href="<c:url value="/nhatuyendungs"/>">Nhà tuyển dụng</a></li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded" href="<c:url value="/ungviens"/>">Ứng viên</a></li>
                        <li class="nav-item mx-0 mx-lg-1">
                            
                            <a class="nav-link py-3 px-0 px-lg-3 rounded" href="<c:url value="/register"/>">Đăng ký</a></li>
                       
                      
                            <c:if test="${pageContext.request.userPrincipal.name == null}">
                                <li class="nav-item mx-0 mx-lg-1" >
                                    <a class="nav-link py-3 px-0 px-lg-3 rounded" href="<c:url value="/login"/>"">
                                        <i class="fa fa-user" aria-hidden="true" ></i>Đăng nhập</a>
                                </li>
                            </c:if>
                            <c:if test="${pageContext.request.userPrincipal.name != null}">
                                <li class="nav-item mx-0 mx-lg-1" >
                                    <a class="nav-link py-3 px-0 px-lg-3 rounded" href="<c:url value="/"/>"">
                                        <c:if test="${currentUser.avatar != null}">
                                            <img style="width: 30px;" src="${currentUser.avatar}" class="img-fluid"/>
                                        </c:if>
                                        <c:if test="${currentUser.avatar == null}">
                                            <i class="fa fa-user" aria-hidden="true" ></i>
                                        </c:if>
                                        ${pageContext.request.userPrincipal.name}</a>
                                </li>
                            </c:if>   
                        
                        
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
                       
 <div>                            
                                                           
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


 
  <div id="demo" class="carousel slide" data-ride="carousel" style="width: 100%;">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>

  <!-- The slideshow -->
  <div class="carousel-inner" style="height: 100%; width: 100%;">
      <div class="carousel-item active" >
      <img src="images/bhx.jpg" alt="" style="width: 50%; height: 100%;">
    </div>
    <div class="carousel-item">
      <img src="images/tuyendung.jpg" alt="" >
    </div>
    <div class="carousel-item">
      <img src="images/tv.png" alt="" >
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>

</div>
</div> <br><br>
    </body>
</html>
