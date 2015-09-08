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
            padding-top: 45px;
        }

        .div1 {
            width: 100%;
            height: 700px;
            background-color: whitesmoke;
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
            <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-screenshot"></span>招聘网</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class=""><a href="/first.form" target="main"><span class="glyphicon glyphicon-home"> 主页</span></a></li>
                <li><a href="/job/selectAll.form" target="main"><span class="glyphicon glyphicon-tree-conifer"></span>
                    去应聘</a></li>
                <li><a href="/person/selectU.form?id=${sessionScope.user.id}" target="main"><span class="glyphicon glyphicon-tree-conifer"></span> 查看</a></li>
                <li><a href="/show1.form" target="main"><span class="glyphicon glyphicon-tree-conifer"></span>
                    个人信息维护</a></li>
            </ul>

            <ul class="nav  navbar-nav  navbar-right">
                <li><a><span class="glyphicon glyphicon-user"></span> 普通用户:${sessionScope.user.username}</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">登录<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a>登录</a></li>
                        <li><a>注册</a></li>
                        <li class="divider"></li>
                        <li><a href="/logout.form">退出登录</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</div>

<div class="div1">
    <div class="div2">
        <iframe name="main" src="/first.form" frameborder="0" scrolling="no" style="width: 100%;height: 100%"></iframe>
    </div>

</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/js/jquery-2.1.3.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
</body>
</html>
