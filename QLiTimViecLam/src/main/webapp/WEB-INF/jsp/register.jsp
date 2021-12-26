<%-- 
    Document   : timViec
    Created on : Dec 19, 2021, 11:22:30 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/register" var="action" />
<c:if test="${errMsg != null}">
    <div class="alert alert-danger">${errMsg}</div>
</c:if>


<h1 class="text-center text-danger">ĐĂNG KÝ</h1>
<form:form method="post" action="${action}" modelAttribute="user" enctype="multipart/form-data">
    <div class="form-group">
        <label for="firstname">First Name</label>
        <form:input  type="text" id="firstname" path="firstName" class="form-control" placeholder="Nhập họ tên lót của bạn" />
    </div>
     <div class="form-group">
        <label for="lastname">Last Name</label>
        <form:input  type="text" id="lastname" path="lastName" class="form-control" placeholder="Nhập tên của bạn" />
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <form:input  type="text" id="email" path="email" class="form-control" placeholder="Nhập địa chỉ email của bạn" />
    </div>
      <div class="form-group">
        <label for="phone">Phone</label>
        <form:input  type="text" id="phone" path="phone" class="form-control"  />
    </div>
   
    <div class="form-group">
        <label for="username">Username</label>
        <form:input  type="text" id="username" path="username" class="form-control" placeholder="Nhập Tên đăng nhập của bạn" />
    </div>
   <div class="form-group">
        <label for="password">Password</label>
        <form:input  type="password" id="password" path="password" class="form-control" placeholder="Nhập mật khẩu của bạn" />
    </div>
    <div class="form-group">
        <label for="confirm-password">Confirm Password</label>
        <form:input  type="password" id="confirm-password" path="confirmPassword" class="form-control" placeholder="Nhập lại mật khẩu" />
    </div>
     <div class="form-group">
        <label for="avatar">Avatar</label>
        <form:input  type="file" id="avatar" path="file" class="form-control" placeholder="Up load Avatar" />
    </div>
     <div class="form-group">
         <input type="submit" value="Đăng nhập" class="btn btn-danger"/>
    </div>
</form:form>
