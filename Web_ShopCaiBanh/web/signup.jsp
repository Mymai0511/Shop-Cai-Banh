<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign Up</title>
        <link rel="stylesheet" href="css/stylesignup.css">

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
        <form action="signup"
              <c:if test="${mess!=null}">
                  class="wrong-entry"
              </c:if>
              >
            <div class="hand"></div>
            <div class="hand rgt"></div>
            <h1>Sign Up</h1>
            <div class="form-group">
                <input name = "name" required="required" class="form-control" value="${name}"/>
                <label class="form-label">Username </label>
            </div>
            <div class="form-group">
                <input name = "pass" required="required" type="password" class="form-control" value="${pass}"/>
                <label class="form-label">Password </label>
            </div>
            <div class="form-group">
                <input name = "repass" id="password" type="password" required="required" class="form-control" value="${re_pass}" />
                <label class="form-label">Re-password</label>
                <div class ="text">Already have an account?<a href="login.jsp">Login</a> </div>
                <p class="alert">Username already exists <br> 
                    or Re-password does not match..!!<p>
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


        </script>

    </body>
</html>