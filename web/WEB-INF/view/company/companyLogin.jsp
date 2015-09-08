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
    <link href="/css/bootstrap.min(yeti).css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <style>
        body {
            padding-top: 45px;
        }

        .div1 {
            width: 100%;
            height: 600px;
            background: url("/image/back.jpg") no-repeat 50% 50%;;
        }

        .div2 {
            width: 45%;
            height: 77%;
            margin-left: 15%;
            /*background-color: lightpink;*/
            /*background-image: image("/image/back1.jpg");*/
            float: left;
        }

        .div3 {
            width: 25%;
            height: 77%;
            margin-left: 1%;
            background-color: white;
            float: left;
            padding-top: 1%;
        }

        .div5 {
            width: 100%;
            height: 13%;
            margin-top: 5%;
            background-color: whitesmoke;
            padding-top: 1%;
        }

        .in1 {
            font-size: 20px;
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
                <li><a href="#about">关于</a></li>
                <li><a href="#contact"><span class="glyphicon glyphicon-earphone"></span> 联系我们</a></li>
            </ul>

            <ul class="nav  navbar-nav  navbar-right">
                <li><a href="">企业用户登录</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">登录<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="">登录</a></li>
                        <li><a href="">注册</a></li>
                        <li class="divider"></li>
                        <li><a href="#">退出登录</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</div>

<div class="jumbotron div1">

    <div class="div2">
        <img src="/image/back1.jpg">
    </div>

    <div class="div3">
        <form action="/company/add.form" method="post">
            <span style="font-size: 20px;color: orange;padding-left: 5%;">企业HR用户注册</span>

            <p style="width: 85%;padding-left:5%;padding-top: 5%"><input class="form-control" type="text"
                                                                          name="username"
                                                                          placeholder="请输入用户名" required></p>

            <p style="width: 85%;padding-left: 5%;"><input class="form-control" type="email" name="email"
                                                           placeholder="请输入你的邮箱" required></p>

            <p style="width: 85%;padding-left: 5%;"><input class="form-control" type="password" name="password"
                                                           placeholder="请输入你的密码" required></p>

            <p style="width: 85%;padding-left: 5%;"><input class="form-control" type="text" name="phone"
                                                           placeholder="请输入你的手机号码" required></p>


            <p style="text-align: center;padding-top: 5%">
                <button class="btn btn-info" style="width: 45%">免费注册</button>
            </p>
        </form>

        <div class="div5">
            <p style="text-align: center">已有账号？直接<a href="" class="btn bg-warning in1" data-toggle="modal"
                                                    data-target="#exampleModal"
                                                    data-whatever="@mdo">登录>>
            </a></p>
        </div>
    </div>

</div>


<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel" style="text-align: center">欢迎登录！！</h4>
            </div>
            <form action="/company/login.form" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <!--<label for="recipient-name" class="control-label">登录邮箱</label>-->

                        <p style="padding-left: 25%"><input type="email" class="form-control"
                                                            name="email" style="width: 65%" placeholder="邮箱" required>
                        </p>
                    </div>
                    <div class="form-group">
                        <!--<label for="message-text" class="control-label">登陆密码</label>-->

                        <p style="padding-left: 25%"><input class="form-control" id="message-text"
                                                            name="password" style="width: 65%" type="password"
                                                            placeholder="密码" required></p>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="submit" class="btn btn-primary">登录</button>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
<!-- /.container -->

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../js/jquery-2.1.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
