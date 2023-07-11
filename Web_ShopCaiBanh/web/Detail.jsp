<%-- 
    Document   : Detail
    Created on : Dec 29, 2020, 5:43:04 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 105% !important;

            }
        </style>
    </head>
    <body>
        <jsp:include page = "menu.jsp" ></jsp:include>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
                                <li class="breadcrumb-item"><a href="#">Danh mục</a></li>
                                <li class="breadcrumb-item active" aria-current="#">Sub-category</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                <jsp:include page = "left.jsp" ></jsp:include>

                    <div class="col-sm-9">
                        <div class="container">
                            <div class="card">
                                <div class="row">
                                    <aside class="col-sm-5 border-right">
                                        <article class="gallery-wrap"> 
                                            <div class="img-big-wrap">
                                                <div> <a href="#"><img src="${detail.img}"></a></div>
                                        </div> <!-- slider-product.// -->
                                        <div class="img-small-wrap">
                                            <!--    <div class="item-gallery"> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCepDDx2BVt6xaS4HE-_i43nybyVabVS6B3d8M33F9BF_YY_jC1xaIZsNuR_o&usqp=CAc"> </div>
                                                <div class="item-gallery"> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCepDDx2BVt6xaS4HE-_i43nybyVabVS6B3d8M33F9BF_YY_jC1xaIZsNuR_o&usqp=CAc"> </div>
                                                <div class="item-gallery"> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCepDDx2BVt6xaS4HE-_i43nybyVabVS6B3d8M33F9BF_YY_jC1xaIZsNuR_o&usqp=CAc"> </div>
                                                <div class="item-gallery"> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCepDDx2BVt6xaS4HE-_i43nybyVabVS6B3d8M33F9BF_YY_jC1xaIZsNuR_o&usqp=CAc"> </div>
                                            --></div> <!-- slider-nav.// -->
                                    </article> <!-- gallery-wrap .end// -->
                                </aside>
                                <aside class="col-sm-7">
                                    <form name="f" action="" method="post">
                                        <article class="card-body p-5">
                                            <h3 class="title mb-3">${detail.name}</h3>

                                            <p class="price-detail-wrap"> 
                                                <span class="price h4 text-warning"> 
                                                    <span class="currency"></span><span class="bloc_left_price">${detail.price} $</span>
                                                </span> 
                                                <!--<span>/per kg</span>--> 
                                            </p> <!-- price-detail-wrap .// -->
                                            <dl class="item-property">
                                                <dt>Title:</dt>
                                                <dd><p>${detail.title} </p></dd>                                            
                                                <dt>Description:</dt>
                                                <dd><p>${detail.description} </p></dd>
                                            </dl>
                                            <!--                                        <dl class="param param-feature">
                                                                                        <dt>Model#</dt>
                                                                                        <dd>12345611</dd>
                                                                                    </dl>   item-property-hor .// 
                                                                                    <dl class="param param-feature">
                                                                                        <dt>Color</dt>
                                                                                        <dd>Black and white</dd>
                                                                                    </dl>   item-property-hor .// 
                                                                                    <dl class="param param-feature">
                                                                                        <dt>Delivery</dt>
                                                                                        <dd>Russia, USA, and Europe</dd>
                                                                                    </dl>   item-property-hor .// -->

                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-5">
                                                    <dl class="param param-inline">
                                                        <dt>Quantity: </dt>
                                                        <dd>
                                                            <!-- <select class="form-control form-control-sm" style="width:70px;">
                                                                <option> 1 </option>
                                                                <option> 2 </option>
                                                                <option> 3 </option>
                                                            </select> -->
                                                            <input type="number" name="num" value="1" class="form-control form-control-sm" style="width:70px;"/>
                                                        </dd>
                                                    </dl>  <!-- item-property .// -->
                                                </div> <!-- col.// -->

                                            </div> <!-- row.// -->
                                            <hr>
                                            <a href="#" class="btn btn-lg button8 text-uppercase"> Buy now </a>
                                            <a href="#" class="btn btn-lg button1 text-uppercase"> <i class="fas fa-shopping-cart"></i> Add to cart </a>
                                        </article> <!-- card-body.// -->

                                    </form>

                                </aside> <!-- col.// -->
                            </div> <!-- row.// -->
                        </div> <!-- card.// -->
                    </div>
                </div>

            </div>
        </div>
        <jsp:include page = "footer.jsp" ></jsp:include>
    </body>
</html>
<script type="text/javascript">
    function buy(id) {
        var m = document.f.num.values;
        document.f.action = "buy?id" + id + "&num=" + m;
        document.f.submit();
    }
</script>
