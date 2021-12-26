
<%-- 
    Document   : vieclam
    Created on : Dec 5, 2021, 10:35:14 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head><link rel="icon" type="image/x-icon" href="assets/favicon.ico" /></head>
    

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
<c:url value="/nhatuyendungs" var="action"/>
<h1  class="text-center text-danger"">ĐĂNG TIN TUYỂN DỤNG </h1>
<c:if test="${errMsg != null}">
    <div class="alert alert-danger">${errMSg}</div>
</c:if>

    <form:form method="post" action="${action}" modelAttribute="viecLam" enctype="multipart/form-data">
        <form:errors path="*" cssClass="alert alert-danger" element="div"/>
         <div class="form-group">
            <label for="tenVL">Vị trí tuyển dụng</label>
            <form:input type="text" id="tenVL" path="tenVL" cssClass="form-control"/>
             <form:errors path="tenVL" cssClass="alert alert-danger" element="div"/>
        </div>
         <div class="form-group">
            <label for="cate">Loại việc làm</label>
            <form:select type="text" id="cate" path="category" cssClass="form-control">
                <c:forEach items ="${categories}" var="cat">
                    <option value="${cat.id}">${cat.categoryName}</option>
                </c:forEach>
            </form:select>
            <form:errors path="category" cssClass="alert alert-danger" element="div"/>
          
        </div>
        <div class="form-group">
            <label for="ntd">Nhà Tuyển Dụng</label>
            <form:select type="text" id="ntd" path="nhaTuyenDung" cssClass="form-control">
                <c:forEach items ="${nhaTuyenDungs}" var="td">
                    <option value="${td.id}">${td.tenNtd}</option>
                </c:forEach>
            </form:select>
            <form:errors path="nhaTuyenDung" cssClass="alert alert-danger" element="div"/>
          
        </div>
        <div class="form-group">
            <label for="luong">Mức lương</label>
            <form:input type="text" id="luong" path="luong" cssClass="form-control"/>
            <form:errors path="luong" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label for="mota">Mô tả công việc</label>
            <form:input type="text" id="mota" path="motacv" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label for="file">Hình ảnh tuyển dụng</label>
            <form:input type="file" id="file" path="file" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <input type="submit" value="Thêm việc làm " class="btn btn-danger"/>
        </div>
    </form:form>
    
    
    <div class="row bg-gradient ">
     <c:forEach var="v" items="${viec}">
         <div class="card col-md-3 ">
                    <div class="card-body">
                         <c:if test="${v.image != null && v.image.startsWith('https') == true }">
                            <img class="img-fluid" src="<c:url value="${v.image}" /> " alt="${v.tenVL}" />
                        </c:if>
                        <c:if test="${v.image == null || v.image.startsWith('https') == false }">
                           <img class="img-fluid" src="<c:url value="images/bb.jpg" /> " alt="${v.tenVL}" />
                        </c:if>
                        
                    </div>
                    <div class="card-footer">
                        <h3>${v.tenVL} - ${v.category.categoryName}</h3>
                        <h4>Công ty: ${v.nhaTuyenDung.tenNtd}</h4>
                        <p>Mức lương: <fmt:formatNumber value = "${v.luong}"/><small> vnđ</small></p>
                    </div>
                    
                </div>
        </c:forEach>
    </form>
</div>
    