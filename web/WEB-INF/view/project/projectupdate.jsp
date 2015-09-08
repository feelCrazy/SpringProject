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
            height: 800px;
            background-color: #5bc0de;
        }

        .div2 {
            width: 70%;
            height: 90%;
            background-color: white;
            margin: 0 auto;
            border-radius: 5px;
        }

        .div3 {
            width: 100%;
            height: 10%;
            padding-top: 2%;
            padding-left: 2%;
            border-radius: 5px;

        }

        .div4 {
            width: 100%;
            height: 70%;
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
            <span style="color: gray;"><span class="glyphicon glyphicon-pencil"></span> 修改工程信息</span>

        </div>
        <div class="div4">

            <div class="div5">
                <form action="/project/update.form?idNum=${project.id}" method="post" class="form-horizontal" style="text-align: right">
                    <div class="form-group group">
                        <label class="col-sm-2">工程名称</label>

                        <div class="col-sm-10">
                            <input class="form-control in" type="text" name="projectname" placeholder="工程名称"
                                   value="${project.projectname}">
                        </div>
                    </div>

                    <div class="form-group group">
                        <label class="col-sm-2 lab">技术类型</label>

                        <div class="col-sm-10 ">
                            <input class="form-control in" type="text" name="projecttype" placeholder="技术类型"
                                   value="${project.projecttype}">
                        </div>
                    </div>

                    <div class="form-group group">
                        <label class="col-sm-2 lab">工程发起人</label>

                        <div class="col-sm-10 ">
                            <input class="form-control in" type="text" name="projectcompany" placeholder="工程发起人" value="${project.projectcompany}">
                        </div>
                    </div>

                    <div class="form-group group">
                        <label class="col-sm-2 lab">工程信息</label>

                        <div class="col-sm-10 ">
                            <input class="form-control in" type="text" name="projectinfo" placeholder="工程信息" value="${project.projectinfo}">
                        </div>
                    </div>

                    <div class="form-group group">
                        <label class="col-sm-2 lab">工程投资</label>

                        <div class="col-sm-10 ">
                            <input class="form-control in" type="text" name="projectfunds" placeholder="工程投资" value="${project.projectfunds}">
                        </div>
                    </div>


                    <div class="form-group" style="width: 100%;margin:0 auto;padding-right: 25%">
                        <div class="col-sm-10">
                            <button class="btn btn-info" style="width: 30%">
                               <span class="glyphicon glyphicon-save"></span> 保存修改
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
<script src="/js/jquery-2.1.3.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
</body>
</html>
