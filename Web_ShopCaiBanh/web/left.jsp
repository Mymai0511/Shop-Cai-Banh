<%-- 
    Document   : left
    Created on : Jun 17, 2023, 12:03:48 AM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-3">
    <div class="card bg-light mb-3">
        <div class="card-header text-uppercase button5 "><i class="fa fa-list"></i> Danh mục </div>
        <ul class="list-group category_block">
            <!-- Hiện thị danh mục các loại bánh- lấy dữ liệu từ sql -->
            <c:forEach items="${listC}" var="c">
                <li class="list-group-item text-white ${tagC == c.id ?  "button5":"" }"><a href="home?cid=${c.id}">${c.name}</a></li>
                <!-- click vào gọi tới Sevlet có đường dẫn category, truyền vào 1 biến cid= id của category đấy -->
            </c:forEach>

        </ul>
    </div>
    <div class="card bg-light mb-3">
        <div class="card-header text-uppercase button5 ">Sản phẩm mới</div>
        <div class="card-body">
            <img class="img-fluid" src="${p.img}" />
            <h5 class="card-title">${p.name}</h5>
            <p class="card-text">${p.title}</p>
            <p class="bloc_left_price">${p.price} $</p>
        </div>
    </div>
</div>

