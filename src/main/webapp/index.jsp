<%--
  Created by IntelliJ IDEA.
  User: rsain2
  Date: 12/5/11
  Time: 3:08 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>TweetsFS | Welcome</title>
    <script type="text/javascript" src="resources/js/jquery-1.7.1.js"></script>
    <script type="application/javascript">
        $(document).ready(function() {
            $("#msgbox").html('');
            $(".tab").click(function() {
                var X = $(this).attr('id');
                if (X == 'signup') {
                    $("#login").removeClass('select');
                    $("#signup").addClass('select');
                    $("#loginbox").slideUp();
                    $("#signupbox").slideDown();
                }
                else {
                    $("#signup").removeClass('select');
                    $("#login").addClass('select');
                    $("#signupbox").slideUp();
                    $("#loginbox").slideDown();
                }
            });
            $("#loginForm").submit(function() {
                $("#msgbox").removeClass().addClass('myinfo').text('Validating Login ...').fadeIn(1000);
                this.timer = setTimeout(function () {
                    $.ajax({
                        url: 'checkLogin',
                        data: 'un=' + $('#loginUserName').val() + '&pw=' + $('#loginPassword').val(),
                        type: 'post',
                        success: function(msg) {
                            alert(msg);
                            if (msg) {
                                alert("in if");
                                $("#msgbox").html('Login verified, Logging in.....').addClass('myinfo').fadeTo(900, 1,
                                        function() {
                                            document.location = 'jsp/login.jsp?user=' + msg;
                                        });
                            }
                            else {
                                alert("in else");
                                $("#msgbox").fadeTo(200, 0.1, function() {
                                    $("#msgbox").html('Wrong Username And | Or Password.').removeClass().addClass('myerror').fadeTo(900, 1);
                                });
                            }
                        }
                    });
                }, 200);
                return false;
            });
        });

    </script>
    <style type="text/css">
        body {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 12px;
            background-color: #333;
        }

        #container {
            width: 400px
        }

        #tabbox {
            height: 40px
        }

        #panel {
            background-color: #FFF;
            height: 300px;

        }

        .tab {
            background: #dedede;
            display: block;
            height: 40px;
            line-height: 40px;
            text-align: center;
            width: 80px;
            float: right;
            font-weight: bold;
            -webkit-border-top-left-radius: 4px;
            -webkit-border-top-right-radius: 4px;
            -moz-border-radius: 4px 4px 0px 0px;
        }

        a {
            color: #000;
            margin: 0;
            padding: 0;
            text-decoration: none;
        }

        .signup {
            margin-left: 8px;

        }

        .select {
            background-color: #FFF;

        }

        #loginbox {
            height: 300px;
            padding: 10px;
        }

        #signupbox {
            height: 300px;
            padding: 10px;
            display: none;
        }
    </style>
</head>

<body>
<div style="margin:60px" align="center">
    <h1 style="color: #ff8c00;">TweetsFS</h1>
</div>
<div style="margin:60px" align="center">
    <h3 style="color: #ccccff;font-weight: bold;">View | Save Your Favorite Tweets @twitter !</h3>
</div>
<div style="margin:60px" align="center">
    <div id="container" align="center">
        <div id="tabbox">
            <a href="#" id="signup" class="tab signup">Sign Up</a>
            <a href="#" id="login" class="tab select">Login</a>
        </div>
        <div id="panel">
            <div id="loginbox">
                <form id="loginForm" name="loginForm" action="" method="post">
                    <table>
                        <tr>
                            <td><h1>Login to TweetsFS</h1></td>
                        </tr>
                        <tr>
                            <td><input id="loginUserName" type="text" name="loginUserName" maxlength="255"/></td>
                        </tr>
                        <tr>
                            <td><input id="loginPassword" type="password" name="loginPassword" maxlength="255"/></td>
                        </tr>
                        <tr>
                            <td>
                                <div id="msgbox"></div>
                            </td>
                        </tr>
                        <tr>
                            <td><input id="loginButton" type="submit" name="loginButton" value="Login"/></td>
                            <td><a href="jsp/passwordReset.jsp" style="font-weight: bold;text-decoration: underline">Forgot
                                Password !</a></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div id="signupbox">
                <form id="signupForm" name="signupForm" action="appSignUp">
                    <table>
                        <tr>
                            <td><h1>Sign up @TweetsFS</h1></td>
                        </tr>
                        <tr>
                            <td><input id="signUpUserName" type="text" name="signUpUserName" maxlength="255"/></td>
                        </tr>
                        <tr>
                            <td><input id="signUpPassword" type="password" name="signUpPassword" maxlength="255"/></td>
                        </tr>
                        <tr>
                            <td><input id="signUpPasswordConfirm" type="password" name="signUpPasswordConfirm"
                                       maxlength="255"/></td>
                        </tr>
                        <tr>
                            <td><input id="signUpButton" type="submit" name="signUpButton" value="Sign Up"/></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>