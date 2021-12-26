<%-- 
    Document   : login.jsp
    Created on : Dec 3, 2021, 11:58:33 PM
    Author     : HP
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<c:if test="${param.error != null}">
    <div class="alert alert-danger">Đã có lỗi xảy ra! Vui lòng quay lại sau !!</div>
</c:if>
<c:if test="${param.accessDenied != null}">
    <div class="alert alert-danger">Ban không có quyền truy cập</div>
</c:if>


<h1 class="text-center text-danger">ĐĂNG NHẬP</h1>
<c:url value="/login" var="action" />
<form method="post" action="${action}" modelAttribute="login">
 
    <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" class="form-control" placeholder="Nhập Tên đăng nhập của bạn" />
    </div>
    <div class="form-group">
        <label for="password" >Password</label>
        <input type="password" id="password" name="password" class="form-control " placeholder="Nhập mật khẩu của bạn" />
    </div>
     <div class="form-group">
         <input type="submit" value="Đăng nhập" class="btn btn-danger"/>
    </div>
</form>