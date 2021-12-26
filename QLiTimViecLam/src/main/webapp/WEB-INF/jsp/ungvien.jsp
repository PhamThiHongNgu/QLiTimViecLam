<%-- 
    Document   : ungvien
    Created on : Dec 19, 2021, 10:17:12 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head><link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    
<nav class="navbar navbar-expand-sm bg-light">

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="admin/nghanhnghe-stats"/>">Các tuyển dụng đã đăng</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Đánh giá</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Chat</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Chỉnh sửa thông tin</a>
    </li>
  </ul>
</nav>
        
<br><br>
<c:url value="/ungviens" var="action"/>
<h1  class="text-center text-danger"">UPLOAD CV CỦA BẠN</h1>
<c:if test="${errMsg != null}">
    <div class="alert alert-danger">${errMSg}</div>
</c:if>
<form:form method="post" action="${action}" modelAttribute="ungvien" enctype="multipart/form-data">
        <form:errors path="*" cssClass="alert alert-danger" element="div"/>
         <div class="form-group">
            <label for="ho">Họ tên lót</label>
            <form:input type="text" id="ho" path="ho" cssClass="form-control"/>
             <form:errors path="ho" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label for="ten">Tên</label>
            <form:input type="text" id="ten" path="ten" cssClass="form-control"/>
             <form:errors path="ten" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label for="sdt">Số điện thoại</label>
            <form:input type="text" id="sdt" path="sdt" cssClass="form-control"/>
             <form:errors path="sdt" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label for="diaChi">Địa chỉ</label>
            <form:input type="text" id="diaChi" path="diaChi" cssClass="form-control"/>
             <form:errors path="diaChi" cssClass="alert alert-danger" element="div"/>
        </div>
         <div class="form-group">
            <label for="nghanh">Chuyên nghành</label>
            <form:select type="text" id="nghanh" path="nghanh" cssClass="form-control">
                <c:forEach items ="${nghanhNghes}" var="n">
                    <option value="${n.id}">${n.tenNghanh}</option>
                </c:forEach>
            </form:select>
            <form:errors path="nghanh" cssClass="alert alert-danger" element="div"/>
          
        </div>
       
        <div class="register-form " style="width: 30%;  ">
            <label for="kn">Kinh nghiệm</label>
            
            <form:input list="php-frameworks" id="kn" path="kn" cssClass="form-control"/>
                <datalist id="php-frameworks">
                  <option value="Chưa có kinh nghiệm">
                  <option value="Kinh nghiệm >3 năm">
                  <option value="Kinh nghiệm >1 năm">
                </datalist>
        </div>
        <div class="form-group">
            <label for="mota">Mô tả công việc</label>
            <form:input type="text" id="mota" path="mota" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label for="file">Hình ảnh tuyển dụng</label>
            <form:input type="file" id="file" path="file" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <input type="submit" value="Upload CV" class="btn btn-danger"/>
        </div>
    </form:form>
    
