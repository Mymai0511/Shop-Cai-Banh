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
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
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
                        <div class="row">
                            <!-- Hiện thị menu- lấy dữ liệu từ sql -->
                        <c:forEach items="${listP}" var="o">
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="${o.img}" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <a href="buynow?num=1&id=${o.id}"  class="btn btn-success btn-block button button1">${o.price*2} $</a>
                                            </div>
                                            <div class="col">
                                                <a href="buy?num=1&id=${o.id}"  class="btn btn-success btn-block button button8">Add to cart</a>
                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="clearfix">
                        <ul class="pagination">
                            <c:forEach begin="1"  end="${endP}" var="i">
                                <li class="page-item  ${tagP == i ?  "active":"" }">
                                    <c:if test="${txtS==null}">
                                        <c:if test="${tagC==null}">
                                            <a href="home?index=${i}" class="page-link">${i}</a>
                                        </c:if>
                                        <c:if test="${tagC!=null}">
                                            <a href="home?index=${i}&cid=${tagC}" class="page-link">${i}</a>
                                        </c:if>
                                    </c:if>

                                    <c:if test="${txtS!=null}">
                                        <a href="home?index=${i}&textSearch=${txtS}" class="page-link">${i}</a>
                                    </c:if>   
                                </li>
                            </c:forEach >
                        </ul>
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

