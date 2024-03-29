<%-- 
    Document   : menu
    Created on : Jun 16, 2023, 11:56:17 PM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--begin of menu-->
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="home">Cake</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <c:if test="${sessionScope.acc.isAdmin == true}">
                    <li class="nav-item">
                        <a class="nav-link" href="manageraccount">Manager Account</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc.isSell == true}">
                    <li class="nav-item">
                        <a class="nav-link" href="managerproduct">Manager Product</a>
                    </li>
                </c:if>

                <c:if test="${sessionScope.acc.isSell == true}">
                    <li class="nav-item">
                        <a class="nav-link" href="managerorder">Manager Order</a>
                    </li>
                </c:if>

                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="loadprofile?aid=${sessionScope.acc.id}">Hello ${sessionScope.acc.name}</a>
                    </li>
                    <c:if test="${sessionScope.acc.isSell != true}">
                        <li class="nav-item">
                            <a class="nav-link" href="LoadOrder?aid=${sessionScope.acc.id}">My Orders</a>

                        </li>
                    </c:if>

                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                </c:if>
            </ul>

            <form action="home" method="post" class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input value="${txtS}" name="textSearch" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Tìm kiếm...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>

                </div>
                <a class="btn btn-success buttoncard btn-sm ml-3" href="show">
                    <i class="fa fa-shopping-cart"></i> Cart
                    <span class="badge badge-light">${size}</span>
                </a>
            </form>
        </div>
    </div>
</nav>
<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">Lazy Cake</h1>
        <p class="lead text-muted mb-0">Sản phẩm chất lượng, hương vị khó quên</p>
    </div>
</section>
<!--end of menu-->
