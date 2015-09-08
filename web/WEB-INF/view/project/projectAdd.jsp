<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <style>
        .div1 {
            width: 100%;
            height: 700px;
            background-color: #c7ddef;
        }

        .div2 {
            width: 90%;
            height: 90%;
            margin: 0 auto;
            padding-top: 5%;
            padding-left: 30%;
            background-color: white;
        }
        .in{
            width: 40%;
        }
    </style>
</head>
<body>

<div class="div1">
    <div class="div2">

        <form action="/project/add.form" method="post" class="form-horizontal" style="text-align: left">

            <div class="form-group">
                <label  class="col-sm-2 control-label">工程名称</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control in" name="projectname" placeholder="工程名称">
                </div>
            </div>
            <div class="form-group">
                <label  class="col-sm-2 control-label">技术类型</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control in" name="projecttype" placeholder="技术类型">
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label" >工程发起人</label>
                <div class=" col-sm-10">
                    <input class="form-control in" type="text" name="projectcompany" placeholder="工程发起人">
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label" >工程信息</label>
                <div class=" col-sm-10">
                    <input class="form-control in" type="text" name="projectinfo" placeholder="工程信息">
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label" >工程投资</label>
                <div class=" col-sm-10">
                    <input class="form-control in" type="text" name="projectfunds" placeholder="工程投资">
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default" style="width:20%;">添加</button>
                </div>
            </div>

        </form>


    </div>

</div>

<!-- Latest compiled and minified JS -->
<script src="../js/jquery-2.1.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>