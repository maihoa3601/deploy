<%-- 
    Document   : login1
    Created on : May 29, 2022, 4:33:57 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>

        <style>
            @use postcss-preset-env {
                stage: 0;
            }

            /* config.css */

            :root {
                --baseColor: #606468;
            }

            /* helpers/align.css */

            .align {
                display: grid;
                place-items: center;
            }

            .grid {
                inline-size: 90%;
                margin-inline: auto;
                max-inline-size: 20rem;
            }

            /* helpers/hidden.css */

            .hidden {
                border: 0;
                clip: rect(0 0 0 0);
                height: 1px;
                margin: -1px;
                overflow: hidden;
                padding: 0;
                position: absolute;
                width: 1px;
            }

            /* helpers/icon.css */

            :root {
                --iconFill: #606468;
            }

            .icons {
                display: none;
            }

            .icon {
                block-size: 1em;
                display: inline-block;
                fill: #606468;
                inline-size: 1em;
                vertical-align: middle;
            }

            /* layout/base.css */

            :root {
                --htmlFontSize: 100%;

                --bodyBackgroundColor: #2c3338;
                --bodyColor: #606468;
                --bodyFontFamily: "Open Sans";
                --bodyFontFamilyFallback: sans-serif;
                --bodyFontSize: 0.875rem;
                --bodyFontWeight: 400;
                --bodyLineHeight: 1.5;
            }

            * {
                box-sizing: inherit;
            }

            html {
                box-sizing: border-box;
                font-size: 100%;
            }

            body {
                background-color: #606468;
                color: #606468;
                font-family: "Open Sans",ans-serif;
                font-size: 0.875rem;
                font-weight: 400;
                line-height: 1.5;
                margin: 0;
                min-block-size: 100vh;
            }

            /* modules/anchor.css */

            :root {
                --anchorColor: #eee;
            }

            a {
                color: #eee;
                outline: 0;
                text-decoration: none;
            }

            a:focus,
            a:hover {
                text-decoration: underline;
            }

            /* modules/form.css */

            :root {
                --formGap: 0.875rem;
            }

            input {
                background-image: none;
                border: 0;
                color: inherit;
                font: inherit;
                margin: 0;
                outline: 0;
                padding: 0;
                transition: background-color 0.3s;
            }

            input[type="submit"] {
                cursor: pointer;
            }

            .form {
                display: grid;
                gap: 0.875rem;
            }

            .form input[type="password"],
            .form input[type="text"],
            .form input[type="submit"] {
                inline-size: 100%;
            }

            .form__field {
                display: flex;
            }

            .form__input {
                flex: 1;
            }

            /* modules/login.css */

            :root {
                --loginBorderRadus: 0.25rem;
                --loginColor: #eee;

                --loginInputBackgroundColor: #3b4148;
                --loginInputHoverBackgroundColor: #434a52;

                --loginLabelBackgroundColor: #363b41;

                --loginSubmitBackgroundColor: #ea4c88;
                --loginSubmitColor: #eee;
                --loginSubmitHoverBackgroundColor: #d44179;
            }

            .login {
                color: #eee;
            }

            .login label,
            .login input[type="text"],
            .login input[type="password"],
            .login input[type="submit"] {
                border-radius: 0.25rem;
                padding: 1rem;
            }

            .login label {
                background-color: #3b4148;
                border-bottom-right-radius: 0;
                border-top-right-radius: 0;
                padding-inline: 1.25rem;
            }

            .login input[type="password"],
            .login input[type="text"] {
                background-color: #3b4148;
                border-bottom-left-radius: 0;
                border-top-left-radius: 0;
            }

            .login input[type="password"]:focus,
            .login input[type="password"]:hover,
            .login input[type="text"]:focus,
            .login input[type="text"]:hover {
                background-color: #434a52;
            }

            .login input[type="submit"] {
                background-color: #ea4c88;
                color: #eee;
                font-weight: 700;
                text-transform: uppercase;
            }

            .login input[type="submit"]:focus,
            .login input[type="submit"]:hover {
                background-color: #d44179;
            }

            /* modules/text.css */

            p {
                margin-block: 1.5rem;
            }

            .text--center {
                text-align: center;
            }


        </style>
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    </head>
    <body class="align">

        <div class="grid">

            <form id="validate-form-login" action="../admin/login" method="POST" class="form login">

                <div style="font-size: 30px; margin: auto;"> <strong>LOGIN ADMINSITE </strong> </div>
                <div style="color: #ff6666">
                    <p>${mess}</p>
                </div>
                <div class="form__field">
                    <label for="login__username"><svg class="icon">
                        <use xlink:href="#icon-user"></use>
                        </svg><span class="hidden">Email</span></label>
                    <input autocomplete="username" id="login__username" type="text" name="email" class="form__input" placeholder="Email" required>
                </div>

                <div class="form__field">
                    <label for="login__password"><svg class="icon">
                        <use xlink:href="#icon-lock"></use>
                        </svg><span class="hidden">Password</span></label>
                    <input id="login__password" type="password" name="password" class="form__input" placeholder="Password" required>
                </div>

                <div class="form__field">
                    <input type="submit" value="Sign In">
                </div>

            </form>



        </div>

        <!--   <svg xmlns="http://www.w3.org/2000/svg" class="icons">
            <symbol id="icon-arrow-right" viewBox="0 0 1792 1792">
              <path d="M1600 960q0 54-37 91l-651 651q-39 37-91 37-51 0-90-37l-75-75q-38-38-38-91t38-91l293-293H245q-52 0-84.5-37.5T128 1024V896q0-53 32.5-90.5T245 768h704L656 474q-38-36-38-90t38-90l75-75q38-38 90-38 53 0 91 38l651 651q37 35 37 90z" />
            </symbol>
            <symbol id="icon-lock" viewBox="0 0 1792 1792">
              <path d="M640 768h512V576q0-106-75-181t-181-75-181 75-75 181v192zm832 96v576q0 40-28 68t-68 28H416q-40 0-68-28t-28-68V864q0-40 28-68t68-28h32V576q0-184 132-316t316-132 316 132 132 316v192h32q40 0 68 28t28 68z" />
            </symbol>
            <symbol id="icon-user" viewBox="0 0 1792 1792">
              <path d="M1600 1405q0 120-73 189.5t-194 69.5H459q-121 0-194-69.5T192 1405q0-53 3.5-103.5t14-109T236 1084t43-97.5 62-81 85.5-53.5T538 832q9 0 42 21.5t74.5 48 108 48T896 971t133.5-21.5 108-48 74.5-48 42-21.5q61 0 111.5 20t85.5 53.5 62 81 43 97.5 26.5 108.5 14 109 3.5 103.5zm-320-893q0 159-112.5 271.5T896 896 624.5 783.5 512 512t112.5-271.5T896 128t271.5 112.5T1280 512z" />
            </symbol>
          </svg>
        -->

        <script>
            $('#validate-form-sign-up').validate({
                rules: {
                    fullname: {
                        required: true
                    },
                    password: {
                        required: true
                    },
                    email: {
                        required: true
                    },

                    phone: {
                        required: true
                    }
                },
                messages: {
                    fullname: {
                        required: "Tên hiện thị tài khoản không được bỏ trống"
                    },
                    password: {
                        required: "Mật khẩu không được bỏ trống"
                    },
                    email: {
                        required: "Email không đúng định dạng"
                    },

                    phone: {
                        required: "Số điện thoại không được bỏ trống"
                    }
                }
            });

            $('#validate-form-login').validate({
                rules: {
                    fullname: {
                        required: true
                    },
                    password: {
                        required: true
                    },
                    email: {
                        required: true
                    },

                    phone: {
                        required: true
                    }
                },
                messages: {
                    fullname: {
                        required: "Tên hiện thị tài khoản không được bỏ trống"
                    },
                    password: {
                        required: "Mật khẩu không được bỏ trống"
                    },
                    email: {
                        required: "Email không đúng định dạng"
                    },

                    phone: {
                        required: "Số điện thoại không được bỏ trống"
                    }
                }
            });
        </script>
    </body>

</html>
