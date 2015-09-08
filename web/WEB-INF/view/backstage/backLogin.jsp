<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>登录</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min(sup).css" rel="stylesheet">

    <style>
        body {
            padding-top: 50px;
        }

        .div1 {
            width: 100%;
            height: 700px;
            background: -webkit-gradient(linear, 0 0, 0 100%, from(#eafffd), to(#f8fdff));

            background: -ms-linear-gradient(#eafffd 0%, #f8fdff 100%);

        }

        .div2 {
            width: 80%;
            height: 80%;
            margin: 0 auto;
            padding-top: 5%;
            /*background-color: lightblue;*/
        }

        .div3 {
            width: 70%;
            height: 80%;
            /*background-color: #b2dba1;*/
            margin: 0 auto;
            padding: 5%;
            border-radius: 350px;
            background: -webkit-gradient(linear, 0 0, 0 100%, from(#24c5ff), to(#dbf3ff));

            background: -ms-linear-gradient(#24c5ff 0%, #dbf3ff 100%);

        }

        .in {
            width: 60%;
        }
    </style>

</head>

<body>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            </button>
            <a class="navbar-brand" href="#">招聘网</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> 主页</a></li>
                <li><a href="">关于</a></li>
                <li><a href=""><span class="glyphicon glyphicon-earphone"></span> 联系我们</a></li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</div>

<div class="div1">
    <div class="div2">
        <div class="div3">
            <form action="/admin/login.form" method="post" class="form-horizontal">
                <h3 style="text-align: center;color: #091fff">管理员登录</h3>
                <br/>

                <div class="form-group" style="margin-left: 25%">
                    <label class="col-sm-2 lab" for="user">用户名</label>

                    <div class="col-sm-8">
                        <input class="form-control in" type="text" name="name" id="user" placeholder="用户名">
                    </div>
                </div>

                <div class="form-group" style="margin-left: 25%">
                    <label class="col-sm-2 lab" for="password">密码</label>

                    <div class="col-sm-8">
                        <input class="form-control in" type="password" id="password" name="password"
                               placeholder="密码">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-10" style="margin-left: 26%;">
                        <button class="btn btn-info" style="width: 50%;">Sign up</button>
                    </div>
                </div>
            </form>
        </div>

    </div>

</div>
<div style=" text-align: center">
    <hr>
    <p>@版权所有 ==><a href="mailto:#"><span class="glyphicon glyphicon-send"></span>wming217@outlook.com</a></p>
</div>

<!-- /.container -->

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../js/jquery-2.1.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
