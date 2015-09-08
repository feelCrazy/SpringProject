<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>主页</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min(yeti).css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <style>
        body {
            padding-top: 50px;
        }

        .div1 {
            width: 100%;
            height: 700px;
            /*background-color: gainsboro;*/
        }

        .div2 {
            width: 80%;
            height: 95%;
            margin: 0 auto;
            background-color: #c7ddef;
            /*padding-top: 1%;*/
        }

    </style>

</head>

<body>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">

            </button>
            <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                <li><a href="/selectAll.form" target="main"><span class="glyphicon glyphicon-leaf"></span> 普通用户管理</a>
                </li>
                <li><a href="/company/all.form" target="main"><span class="glyphicon glyphicon-leaf"></span> 企业用户管理</a>
                </li>
                <li><a href="/job/BackSelectAll.form" target="main"><span class="glyphicon glyphicon-leaf"></span>
                    招聘信息管理</a></li>
                <li><a href="/admin/info.form?idNum=${sessionScope.admin.id}" target="main"><span
                        class="glyphicon glyphicon-leaf"></span> 个人信息管理</a></li>

                <li><a href="/backProject/all.form" target="mian"><span class="glyphicon glyphicon-leaf"> 工程管理</span></a></li>
            </ul>

            <ul class="nav  navbar-nav  navbar-right">
                <li><a><span class="glyphicon glyphicon-earphone"></span> 联系我们</a></li>
                <li><a> <span class="glyphicon glyphicon-user"></span>User:${admin.name}
                </a></li>
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

<div class="div1">
    <div class="div2">
        <iframe name="main" frameborder=" 0" scrolling="no" style="width: 100%;height: 100%">
        </iframe>
    </div>
</div>
<div style="text-align: center">
    <hr>
    <p>@版权所有 ==><a href="mailto:#"><span class="glyphicon glyphicon-send"></span>wming217@outlook.com</a></p>
</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../js/jquery-2.1.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
