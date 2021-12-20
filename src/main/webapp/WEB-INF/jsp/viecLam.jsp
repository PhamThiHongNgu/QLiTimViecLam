
<%-- 
    Document   : vieclam
    Created on : Dec 5, 2021, 10:35:14 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head><link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="css/styles.css" rel="stylesheet" /></head>
  

<h1  class="text-center text-danger"">QUẢN LÍ VIỆC LÀM </h1>
<c:url value="/admin/viecLam" var="action"/>
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
            <label for="file">Hình ảnh tuyển dụng</label>
            <form:input type="file" id="file" path="file" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <input type="submit" value="Them việc làm " class="btn btn-danger"/>
        </div>
    </form:form>
    