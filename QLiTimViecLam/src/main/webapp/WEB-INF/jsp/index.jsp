<%-- 
    Document   : index
    Created on : Aug 14, 2021, 11:39:36 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

 

<div class="bg-gradient text-md-center">
    <h5>Tuyển dụng </h5><br>
     <div >
    <ul class="pagination "text-center " >
        <c:forEach begin="1" end="${Math.ceil(counter/20)}" var="i">
            <li class="page-item"><a class="page-link" href="<c:url value="/"/>?page=${i}">${i}</a></li>
        </c:forEach>
        
    </ul>
</div>
<br>
<c:url value="/nhatuyendungs" var="action"/>
</div>
<div class="row bg-gradient ">
     <c:forEach var="v" items="${viec}">
         <div class="card col-md-3  ">
             
                    <div class="card-body">
                        <a href="<c:url value="/viecLam/${v.id}"/> ">
                         <c:if test="${v.image != null && v.image.startsWith('https') == true }">
                            <img class="img-fluid" src="<c:url value="${v.image}" /> " alt="${v.tenVL}" />
                        </c:if>
                        <c:if test="${v.image == null || v.image.startsWith('https') == false }">
                           <img class="img-fluid" src="<c:url value="images/bb.jpg" /> " alt="${v.tenVL}" />
                        </c:if>
                        </a>
                    </div>
                    <div class="card-footer">
                        <h5>${v.tenVL}</h5>
                        <h5>Công ty: ${v.nhaTuyenDung.tenNtd}</h5>
                        <p>Mức lương: <fmt:formatNumber value = "${v.luong}"/><small> vnđ</small></p>
                    </div>
                    
                </div>
        </c:forEach>
  
</div><br>
 
<div class="bg-gradient text-md-center">
    <h5>Ứng viên tìm việc làm </h5>             
</div>
<div class="row">
     <c:forEach var="uv" items="${ungvien}">
         <div class="card col-md-3 ">
             
                    <div class="card-body">
                        <a href="<c:url value="/ungVien/${uv.id}"/> ">
                         <c:if test="${uv.image != null && uv.image.startsWith('https') == true }">
                            <img class=" rounded-circle img-fluid border" src="<c:url value="${uv.image}" /> " alt="${uv.ten} ${uv.ho} " />
                        </c:if>
                        <c:if test="${uv.image == null || uv.image.startsWith('https') == false }">
                           <img class=" rounded-circle img-fluid border" src="<c:url value="images/avatar.jpg" /> " alt="${uv.ten} ${uv.ho}" />
                        </c:if>
                        </a>
                    </div>
                    <div class="card-footer">
                        <h5>${uv.ho} ${uv.ten}</h5>
                        
                        <h5>Lĩnh vực: ${uv.nghanh.tenNghanh}</h5>
                        <p> ${uv.kn}</p>
                    </div>
                    
                </div>
        </c:forEach>
    
</div><br>
  <div >
    <ul class="pagination "text-center " >
        <c:forEach begin="1" end="${Math.ceil(counter/20)}" var="i">
            <li class="page-item"><a class="page-link" href="<c:url value="/"/>?page=${i}">${i}</a></li>
        </c:forEach>
        
    </ul>
</div>
   

