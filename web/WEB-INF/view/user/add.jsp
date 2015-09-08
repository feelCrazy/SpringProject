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
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <style>
        body {

        }

        .div1 {
            width: 100%;
            height: 350px;
            /*background-color: #4cae4c;*/
        }

        .div2 {
            width: 60%;
            height: 100%;
            background-color: #3261da;
            float: left;
            padding-left: 25%;
            padding-top: 8%;
        }

        .div3 {
            width: 40%;
            height: 100%;
            background-color: #3261da;
            float: left;
        }

        .div4 {
            width: 70%;
            height: 100%;
            /*background-color: #3e8f3e;*/
            float: left;
        }

        .div5 {
            width: 100%;
            height: 15%;
            /*background-color: tan;*/
            padding-top: 5%;
            padding-left: 1%;
        }

        .div6 {
            float: left;
            width: 56%;
            height: 10%;
            margin-top: 1%;
            /*background-color: #66afe9;*/
        }

        .input1 {
            width: 80%;
            margin-left: 2%;
        }

        .div8 {
            width: 100%;
            height: 10%;
            margin-top: 5%;
            float: left;
            /*background-color: #afd9ee;*/
        }

        .input3 {
            margin-left: 1%;
            width: 45%;
        }

        .div9 {
            width: 100%;
            height: 10%;
            margin-top: 5%;
            float: left;
            /*background-color: #5bc0de;*/
        }

        .div10 {
            width: 100%;
            height: 500px;
            background-color: #afd9ee;
        }

        .div11 {
            width: 50%;
            height: 80%;
            float: left;
            background-color: #4cae4c;
        }

        .div12 {
            float: right;
            width: 50%;
            height: 80%;
            background-color: #a94442;
        }
    </style>


</head>

<body>


<div class="div1">
    <div class="div2">
        <p style="font-size: 65Px;color: white">知乎</p>

        <p style="font-size: 20px;color:white;font-weight: bold">与世界分享你的知识、经验和见解</p>
    </div>

    <div class="div3">
        <div class="div4">
            <div class="div5">
                <span style="color: white;font-size: 15px">注册账号</span>
                <span style="font-size: 15px;margin-left: 20%"><a style="text-decoration: none;color: white"
                                                                  href="">登录</a></span>
            </div>
            <form action="/add.form" method="post">
                <div class="div6">
                    <input class="form-control input1" type="text" name="username" placeholder="姓名">
                </div>

                <div class="div8">
                    <input class="form-control input3" type="email" name="email" placeholder="邮箱">
                </div>

                <div class="div9">
                    <input class="form-control input3" type="password" name="password" placeholder="密码">
                </div>

                <div class="div9">
                    <button class="btn btn-info" style="width:45%;margin-left:1%;" type="submit">注册</button>
                </div>
            </form>
            <div class="div9">
                <span style="color: white;margin-left:2%">社交账号登陆</span><span> <a
                    style="color: white;text-decoration: none" href="">www</a> <a
                    style="color:white;text-decoration: none" href="">www</a></span>
            </div>

        </div>
    </div>

</div>

<div class="div10">
    <div class="div11">

    </div>
    <div class="div12">

    </div>

</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../js/jquery-2.1.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
