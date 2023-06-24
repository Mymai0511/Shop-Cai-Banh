<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" href="css/stylelogin.css">
    </head>
    <body>

        <div class="panda">
            <div class="ear"></div>
            <div class="face">
                <div class="eye-shade"></div>
                <div class="eye-white">
                    <div class="eye-ball"></div>
                </div>
                <div class="eye-shade rgt"></div>
                <div class="eye-white rgt">
                    <div class="eye-ball"></div>
                </div>
                <div class="nose"></div>
                <div class="mouth"></div>
            </div>
            <div class="body"> </div>
            <div class="foot">
                <div class="finger"></div>
            </div>
            <div class="foot rgt">
                <div class="finger"></div>
            </div>
        </div>
        <form action="login" 
              <c:if test="${mess!=null}">
                  class="wrong-entry"
              </c:if>
              >
            <div class="hand"></div>
            <div class="hand rgt"></div>
            <h1></h1>
            <div class="form-group">
                <input name="name" required="required" class="form-control" value="${cookie.username1.value}" />
                <label class="form-label">Name</label>
            </div>            
            <div class="form-group">
                <input name="pass" id="password" type="password" required="required" class="form-control" value="${cookie.password1.value}"/>
                <label class="form-label">Password</label>
                <input name="remember" ${(cookie.remember1.value eq '1')?"checked":""} value="1" type="checkbox">
                <label > Remember me</label>
                <div class ="text">Don't have an account?<a href="signup.jsp">Signup</a> </div>
                <p class="alert" >Wrong user or pass...!!<p>
                    <button class="btn">Login </button>
            </div>
        </form>

        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script id="rendered-js">
            $('#password').focusin(function () {
                $('form').addClass('up');
            });
            $('#password').focusout(function () {
                $('form').removeClass('up');
            });

            // Panda Eye move
            $(document).on("mousemove", function (event) {
                var dw = $(document).width() / 15;
                var dh = $(document).height() / 15;
                var x = event.pageX / dw;
                var y = event.pageY / dh;
                $('.eye-ball').css({
                    width: x,
                    height: y
                });

            });

            // validation



        </script>

    </body>
</html>