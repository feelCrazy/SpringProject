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
            /*background-color: #c7ddef;*/
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
            <a class="navbar-brand" href="#">招聘网</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class=""><a href="/company/first.form" target="main"><span class="glyphicon glyphicon-home"></span>
                    主页</a></li>
                <li><a href="/personInfo/personList.form?id=${sessionScope.companyUser.id}" target="main"><span
                        class="glyphicon glyphicon-grain"></span> 应聘人员查看</a></li>
                <li><a href="/company/show2.form" target="main"><span class="glyphicon glyphicon-grain"></span>
                    发出招聘信息</a></li>
                <li><a href="/job/list.form?userId=${sessionScope.companyUser.id}" target="main"><span
                        class="glyphicon glyphicon-grain"></span> 招聘信息维护</a></li>
                <li><a href="/project/selectAll.form" target="main"><span class="glyphicon glyphicon-grain"></span> 工程承包</a>
                </li>
            </ul>

            <ul class="nav  navbar-nav  navbar-right">
                <li><a><span class="glyphicon glyphicon-user"></span> 企业用户:${sessionScope.companyUser.username}</a></li>
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
        <iframe name="main" src="/company/first.form" frameborder="0" scrolling="no"
                style="width: 100%;height: 100%"></iframe>
    </div>
</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/js/jquery-2.1.3.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
</body>
</html>
