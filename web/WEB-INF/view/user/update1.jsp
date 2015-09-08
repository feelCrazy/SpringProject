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
            background-color: #5bc0de;
        }

        .div2 {
            width: 70%;
            height: 95%;
            background-color: white;
            margin: 0 auto;
            border-radius: 5px;
        }

        .div3 {
            width: 100%;
            height: 10%;
            padding-top: 1%;
            padding-left: 5%;
            border-radius: 5px;

        }

        .div4 {
            width: 100%;
            height: 85%;
            /*background-color: #5cb85c;*/
            border-top: 1px solid;
            border-color: gainsboro;
            padding-top: 5%;

        }

        .in {
            width: 50%;
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
                <form action="/update.form?idNum=${sessionScope.user.id}" method="post" class="form-horizontal"
                      style="text-align: right">

                    <div class="form-group group">
                        <label class="col-sm-2 lab">真实姓名</label>

                        <div class="col-sm-10 ">
                            <input class="form-control in" type="text" name="username" placeholder="真实姓名"
                                   value="${sessionScope.user.username}">
                        </div>
                    </div>

                    <div class="form-group group">
                        <label class="col-sm-2 lab">性别</label>

                        <div class="col-sm-10 ">
                            <input class="form-control in" type="text" name="sex" placeholder="性别"
                                   value="${sessionScope.user.sex}">
                        </div>
                    </div>

                    <div class="form-group group">
                        <label class="col-sm-2 lab">年龄</label>

                        <div class="col-sm-10 ">
                            <input class="form-control in" type="number" name="age" placeholder="年龄"
                                   value="${sessionScope.user.age}">
                        </div>
                    </div>

                    <div class="form-group group">
                        <label class="col-sm-2 lab">邮箱</label>

                        <div class="col-sm-10 ">
                            <input class="form-control in" type="email" name="email" placeholder="电子邮箱"
                                   value="${sessionScope.user.email}">
                        </div>
                    </div>


                    <div class="form-group group">
                        <label class="col-sm-2 lab">手机号码</label>

                        <div class="col-sm-10">
                            <input class="form-control in" type="text" name="phone" placeholder="手机号码"
                                   value="${sessionScope.user.phone}">
                        </div>
                    </div>

                    <div class="form-group group">
                        <label class="col-sm-2 lab">工作类型</label>
                        <div class="col-sm-10">
                            <input class="form-control in" type="text" name="phone" placeholder="工作类型"
                                   value="${sessionScope.user.jobType}">
                        </div>
                    </div>

                    <div class="form-group group">
                        <label class="col-sm-2 lab">登录密码</label>

                        <div class="col-sm-10">
                            <input class="form-control in" type="password" name="password"
                                   placeholder="登录密码">
                        </div>
                    </div>

                    <div class="form-group group">
                        <label class="col-sm-2 lab">个人简介</label>

                        <div class="col-sm-10 ">

                            <textarea class="form-control in" style="resize: none" rows="6" placeholder="个人简介"
                                      name="personinfo">${sessionScope.user.personinfo}</textarea>

                        </div>
                    </div>

                    <div class="form-group" style="width: 100%;margin:0 auto;padding-right: 25%">
                        <div class="col-sm-10">
                            <button class="btn btn-info" style="width: 30%" onclick="return check()"><span
                                    class="glyphicon glyphicon-ok"></span> 保存修改
                            </button>
                        </div>

                    </div>
                </form>

            </div>

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
