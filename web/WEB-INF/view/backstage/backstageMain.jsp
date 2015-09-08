<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>后台</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min(sup).css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/dashboard.css" rel="stylesheet">
    <style>
        body {
            padding-top: 50px;
        }
    </style>


</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
            </button>
            <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-menu-hamburger"></span> 在线招聘系统后台</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a><span class="glyphicon glyphicon-user"></span> 管理员：${sessionScope.admin.name}</a></li>
                <li><a ><span class="glyphicon glyphicon-wrench"></span> 设置</a></li>
                <li><a><span class="glyphicon glyphicon-baby-formula"></span> 帮助</a></li>
                <li><a href="/back/logout.form"><span class="glyphicon glyphicon-remove-sign"></span> 退出</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search">搜索</span>
                </button>
            </form>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">

        <div class="col-sm-3 col-md-2 sidebar">

            <ul class="nav nav-sidebar">
                <li class="active"><a href="/admin/index.form" target="main">全局概览 <span class="sr-only">(current)</span></a></li>
                <li><a href="/admin/index2.form" target="main"><span class="glyphicon glyphicon-eye-open"></span> 报告</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-floppy-disk"></span> 分析</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-floppy-save"></span> 输出</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="/selectAll.form" target="main"><span class="glyphicon glyphicon-knight"></span> 人员管理</a>
                </li>
                <li><a href="/company/all.form" target="main"><span class="glyphicon glyphicon-king"></span> 公司管理</a>
                </li>
                <li><a href="/job/BackSelectAll.form" target="main"><span class="glyphicon glyphicon-tower"></span>
                    招聘信息管理</a></li>
                <li><a href="/admin/info.form?idNum=${sessionScope.admin.id}" target="main"><span
                        class="glyphicon glyphicon-queen"></span>个人信息管理</a></li>
                <li><a href="/backProject/all.form" target="main"><span class="glyphicon glyphicon-blackboard"></span> 工程管理</a></li>
                <li><a><span class="glyphicon glyphicon-flag"></span> 其它</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="">Nav item again</a></li>
                <li><a href="">One more nav</a></li>
                <li><a href="">Another nav item</a></li>
            </ul>
        </div>

        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

            <iframe name="main" src="/admin/index.form" frameborder=" 0" scrolling="no" style="width: 100%;height: 100%">
            </iframe>


        </div>

    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../js/jquery-2.1.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>

</body>
</html>