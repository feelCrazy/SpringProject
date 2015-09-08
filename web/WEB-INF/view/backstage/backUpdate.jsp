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
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <style>


        .div1 {
            padding-top: 1%;
            width: 100%;
            height: 700px;
            background-color: ghostwhite;
        }

        .div2 {
            width: 80%;
            height: 90%;
            background-color: white;
            margin: 0 auto;
            border-radius: 5px;
        }

        .div3 {
            width: 100%;
            height: 10%;
            padding-top: 1%;
            padding-left: 2%;
            border-radius: 5px;

        }

        .div4 {
            width: 100%;
            height: 80%;
            /*background-color: #5cb85c;*/
            border-top: 1px solid;
            border-color: gainsboro;
            padding-top: 5%;

        }

        .in {
            width: 60%;
        }

        .div5 {

            /*background-color: #999999;*/

        }

        .group {
            padding-left: 25%;
            /*text-align: center;*/
        }
    </style>


</head>

<body>

<div class="div1">
    <div class="div2">
        <div class="div3">
            <span style="font-size: 25px;color: gray">账号</span><br/>
            <span style="color: gray;"><span class="glyphicon glyphicon-pencil"></span> 修改你的个人信息</span>

        </div>
        <div class="div4">

            <div class="div5">
                <form action="/admin/update.form?idNum=${sessionScope.admin.id}" method="post" class="form-horizontal"
                      style="text-align: right">
                    <div class="form-group group">
                        <label class="col-sm-2">用户名</label>

                        <div class="col-sm-10">
                            <input class="form-control in" type="text" name="name" placeholder="用户名"
                                   value="${admin.name}">
                        </div>
                    </div>


                    <div class="form-group group">
                        <label class="col-sm-2 lab">邮箱</label>

                        <div class="col-sm-10 ">
                            <input class="form-control in" type="email" name="email" placeholder="电子邮箱"
                                   value="${admin.email}">
                        </div>
                    </div>

                    <div class="form-group group">
                        <label class="col-sm-2 lab">手机号码</label>

                        <div class="col-sm-10">
                            <input class="form-control in" type="text" name="phone" placeholder="手机号码"
                                   value="${admin.phone}">
                        </div>
                    </div>

                    <div class="form-group group">
                        <label class="col-sm-2 lab">地址</label>

                        <div class="col-sm-10">
                            <input class="form-control in" type="text" name="address" placeholder="地址"
                                   value="${admin.address}">
                        </div>
                    </div>

                    <div class="form-group group">
                        <label class="col-sm-2 lab">登录密码</label>

                        <div class="col-sm-10">
                            <input class="form-control in" type="password" name="password"
                                   placeholder="登录密码">
                        </div>
                    </div>

                    <div class="form-group" style="width: 100%;margin:0 auto;padding-right: 25%">
                        <div class="col-sm-10">
                            <button class="btn btn-info" style="width: 30%" onclick="return check()">
                                <span class="glyphicon glyphicon-save"></span> 保存修改
                            </button>
                        </div>

                    </div>
                </form>

            </div>

        </div>

    </div>

</div>
<div style=" text-align: center">
    <hr>
    <p>@版权所有 ==><a href="mailto:#"><span class="glyphicon glyphicon-send"></span> wming217@outlook.com</a></p>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../js/jquery-2.1.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
