<%-- 
    Document   : left
    Created on : Jun 17, 2023, 12:03:48 AM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-3">
    <div class="card bg-light mb-3">
        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Danh mục </div>
        <ul class="list-group category_block">
            <!-- Hiện thị danh mục các loại bánh- lấy dữ liệu từ sql -->
            <c:forEach items="${listC}" var="c">
                <li class="list-group-item text-white ${tag == c.id ?  "active":"" }"><a href="category?cid=${c.id}">${c.name}</a></li>
                <!-- click vào gọi tới Sevlet có đường dẫn category, truyền vào 1 biến cid= id của category đấy -->
            </c:forEach>

        </ul>
    </div>
    <div class="card bg-light mb-3">
        <div class="card-header bg-success text-white text-uppercase">Sản phẩm mới</div>
        <div class="card-body">
            <img class="img-fluid" src="${p.img}" />
            <h5 class="card-title">${p.name}</h5>
            <p class="card-text">${p.title}</p>
            <p class="bloc_left_price">${p.price} VND</p>
        </div>
    </div>
</div>

