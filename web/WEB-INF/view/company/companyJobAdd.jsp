<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <style>
        .div1 {
            width: 100%;
            height: 700px;
            /*background-color: #c7ddef;*/
        }

        .div2 {
            width: 90%;
            height: 90%;
            margin: 0 auto;
            padding-top: 5%;
            background-color: white;
            /*padding-left: 20%*/

        }

        .div3 {
            text-align: center;
            padding-left: 25%;
        }

        .in {
            width: 50%;
        }
    </style>

</head>
<body>
<div class="div1">
    <div class="div2">
        <form class="form-horizontal" action="/job/add.form?comId=${sessionScope.companyUser.id}" method="post">
            <div class="form-group div3">
                <label class="col-sm-2 lab" for="user">公司名称</label>

                <div class="col-sm-10">
                    <input class="form-control in" type="text" name="companyName" id="user" placeholder="请输入公司名称">
                </div>
            </div>
            <div class="form-group div3">
                <label class="col-sm-2 lab">工作概述</label>

                <div class="col-sm-10">
                    <input class="form-control in" type="text" name="jobsummary" placeholder="请输入工作概述">
                </div>
            </div>
            <div class="form-group div3">
                <label class="col-sm-2 lab">工作要求</label>

                <div class="col-sm-10">
                    <input class="form-control in" type="text" name="require" placeholder="请输入工作要求">
                </div>
            </div>
            <div class="form-group div3">
                <label class="col-sm-2">工作类型</label>

                <div class="col-sm-10">
                    <input class="form-control in" name="jobtype" type="text" placeholder="请输入工作类型">
                </div>
            </div>
            <div class="form-group div3">
                <label class="col-sm-2">工作经验</label>

                <div class="col-sm-10">
                    <input class="form-control in" name="jobexperience" type="text" placeholder="请输入工作经验">
                </div>
            </div>
            <div class="form-group div3">
                <label class="col-sm-2">教育背景</label>

                <div class="col-sm-10">
                    <input class="form-control in" name="education" type="text" placeholder="请输入教育背景">
                </div>
            </div>

            <div class="form-group" style="padding-left: 45%">
                <div class="col-sm-10">
                    <button class="btn btn-success" type="submit" style="width: 20%"><span
                            class="glyphicon glyphicon-ok"></span> 添加
                    </button>
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