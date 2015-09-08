<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Starter Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min(sup).css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <%--检验完整性--%>
    <script type="text/javascript">
        function check() {
            var email = document.getElementsByName("email").value;
            var password = document.getElementsByName("password").value;

            if (email == "" || password == "") {
                alert("密码或用户名错误！！");
                return false;
            }
            return true;
        }

    </script>

    <style>
        body {
            padding-top: 50px;
        }
        .mail4{
            width: 100%;
            margin: 0 auto;

        }

        .main {
            margin: 0px auto;
            width: 50%;
            height: 700px;


        }

        .main1 {
            padding-top: 10px;
            margin-top: 20%;
            width: 100%;
            height: 200px;
            /*background-color: #d6eef5;*/
            background: -webkit-gradient(linear, 0 0, 0 100%, from(#eafffd), to(#f8fdff));

            background: -ms-linear-gradient(#eafffd 0%, #f8fdff 100%);
            border-radius: 10px;

        }

        .lab {
            font-size: 120%;
        }

        .in {
            width: 65%;
        }
    </style>

</head>

<body>

<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">用户登录</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
            </ul>
        </div>
    </div>
</div>


<div class="container">

    <div class="mail4">
        <div class=" main">
            <div class="main1">
                <form class="form-horizontal" action="/company/login.form" method="post" name="form1">
                    <div class="form-group" style="margin-left: 5%">
                        <label class="col-sm-2 lab" for="user">邮箱</label>
                        <div class="col-sm-10">
                            <input class="form-control in" type="email" name="email" id="user" placeholder="邮箱" required>
                        </div>
                    </div>

                    <div class="form-group" style="margin-left: 5%">
                        <label class="col-sm-2 lab" for="password">密码</label>

                        <div class="col-sm-10">
                            <input class="form-control in" type="password" id="password" name="password"
                                   placeholder="密码" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10" >
                            <div class="checkbox" style="margin-left: 5%">
                                <label>
                                    <input type="checkbox"> Remember me
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-10" style="margin-left: 5%">
                            <button class="btn btn-danger" style="width: 30%" onclick="return check()">登陆</button>
                            <button class="btn btn-info" style="width: 30%; margin-left: 25%" type="reset">取消
                            </button>
                        </div>

                    </div>

                </form>
            </div>
        </div>

    </div>
</div>

<div style="text-align: center;margin:0 auto;">
    <hr>
    <p>@版权所有 ==><a href="mailto:#">wming217@outlook.com</a></p>
</div>

<!-- Placed at the end of the document so the pages load faster -->
<script src="../js/jquery-2.1.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
