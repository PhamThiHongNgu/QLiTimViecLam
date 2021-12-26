<%-- 
    Document   : vieclam-detail
    Created on : Dec 22, 2021, 11:21:40 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<h1 class="text-center table-light">CHI TIẾT VIỆC LÀM</h1>
<br>

<div class="row">
    <div class="col-md-6">
        <c:choose>
            <c:when test="${viecLam.image != null && viecLam.image.startsWith('https') == true }">
                <img class="img-fluid" src="<c:url value="${viecLam.image}" /> " alt="${viecLam.tenVL}" />
            </c:when>
            <c:when test="${viecLam.image == null || viecLam.image.startsWith('https') == false }">
                 <img class="img-fluid" src="<c:url value="/images/bb.jpg" /> " alt="${viecLam.tenVL}"/>
            </c:when>
        </c:choose>             
    </div>
    <div class="col-md-6">  
        <h3>${viecLam.tenVL}</h3>
        <p>Loại công việc: ${viecLam.category.categoryName}</p>
        <p>Công ty: ${viecLam.nhaTuyenDung.tenNtd}</p>
        <p>Mức lương: <fmt:formatNumber value = "${viecLam.luong}"/><small> vnđ</small></p>
        <p>Mô tả cộng việc: ${viecLam.motacv}</p>
        <div class="">
        <input type="button" value="Ứng tuyển" class="btn btn-danger"/>
    </div>
    </div>
</div><br><br>

  
     
<form>
    <div class="form-group">
        <textarea class="form-control" placeholder="Đánh giá của bạn"></textarea><br>
        <input type="submit" value="Gui binh luan" class="btn-danger"/>
</div>
</form>     
<div class="row">
    <div class="col-md-1" style="padding: 10px">
        <img class="rounded-circle img-fluid" src="<c:url value="/images/bb.jpg"/>"/>
    </div>
    <div class="col-md-2">
        <p>Tuyệt vời !!!</p>
        <i>20/12/2021 08:12</i>
    </div>
</div>
<div class="row">
    <div class="col-md-1" style="padding: 10px">
        <img class="rounded-circle img-fluid" src="<c:url value="/images/bb.jpg"/>"/>
    </div>
    <div class="col-md-2">
        <p>Công việc tốt !!!</p>
        <i>22/12/2021 09:12</i>
    </div>
</div>
          
   