<%-- 
    Document   : index
    Created on : Aug 14, 2021, 11:39:36 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

   <div >
    <ul class="pagination "text-center " >
        <c:forEach begin="1" end="${Math.ceil(counter/6)}" var="i">
            <li class="page-item"><a class="page-link" href="<c:url value="/"/>?page=${i}">${i}</a></li>
        </c:forEach>
        
    </ul>
</div>
<div class="bg-gradient text-md-center">
    <h5>Tuyển dụng </h5>             
</div>
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
<br>
<div class="bg-gradient text-md-center">
    <h5>Ứng viên tìm việc làm </h5>             
</div>
<div class="row">
     <c:forEach var="v" items="${viec}">
         <div class="card col-md-4">
                    <div class="card-body">
                        
                        
                    </div>
                    <div class="card-footer">
                        <h3>${v.tenVL} - ${v.category.categoryName}</h3>
                        <h4>Công ty: ${v.nhaTuyenDung.tenNtd}</h4>
                        <p>Mức lương: <fmt:formatNumber value = "${v.luong}"/><small> vnđ</small></p>
                    </div>
                    
                </div>
        </c:forEach>
</div>

   

