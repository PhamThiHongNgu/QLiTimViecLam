<%-- 
    Document   : admin-left
    Created on : Dec 20, 2021, 3:17:11 AM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-sm bg-light">

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="admin/nghanhnghe-stats"/>">Thống kê ứng viên nộp đơn ứng tuyển hàng quý </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Thống kê ứng viên nộp đơn ứng tuyển hàng năm</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Thống kê ứng viên nộp đơn ứng tuyển theo ngành nghề</a>
    </li>
  </ul>

</nav>