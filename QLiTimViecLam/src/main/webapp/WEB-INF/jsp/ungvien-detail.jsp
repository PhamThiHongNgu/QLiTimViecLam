<%-- 
    Document   : ungvien-detail
    Created on : Dec 25, 2021, 12:04:07 AM
    Author     : HP
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<h1 class="text-center table-light">THÔNG TIN CHI TIẾT</h1>
<br>

<div class="row">
    <div class="col-md-6">
          <c:choose>
            <c:when test="${ungVien.image != null && ungVien.image.startsWith('https') == true }">
                <img class="img-fluid" src="<c:url value="${ungVien.image}" /> " alt="${ungVien.ten} ${ungVien.ho} " />
            </c:when>
            <c:when test="${ungVien.image == null || ungVien.image.startsWith('https') == false }">
                 <img class="img-fluid" src="<c:url value="/images/bb.jpg" /> " alt="${ungVien.ten} ${ungVien.ho} "/>
            </c:when>
        </c:choose>          
    </div>
    <div class="col-md-6">  
        <h3>${ungVien.ho} ${ungVien.ten}</h3>
        <p>Chuyên nghành: ${ungVien.nghanh.tenNghanh} </p>
        <p>Nổi bật: ${ungVien.mota} </p>
        <p>Địa chỉ: ${ungVien.diaChi} </p>
        <p>Kinh nghiệm làm việc: ${ungVien.kn} </p>
        <p>Liên hệ: ${ungVien.sdt} </p>
        <div class="">
        <input type="button" value="Trao đổi" class="btn btn-danger"/>
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
        <img class="rounded-circle img-fluid" src="<c:url value="/images/avatar.jpg"/>"/>
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
        <p>Wow !!!</p>
        <i>22/12/2021 09:12</i>
    </div>
</div>
