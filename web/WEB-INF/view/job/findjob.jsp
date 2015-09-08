<%@ taglib prefix="s" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>招聘列表</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <style>
        .div1 {
            width: 100%;
            height: 700px;
            /*background-color: gray;*/
            padding-top: 1%;
        }

        .div2 {
            width: 90%;
            height: 95%;
            background-color: whitesmoke;
            margin: 0 auto;
            border-radius: 10px;
        }

        .div3 {
            padding-top: 1%;
            width: 100%;
            height: 80%;
            /*background-color: #f3aeb6;*/
            padding-left: 5%;
            border-radius: 10px;
        }

        .div4 {
            width: 100%;
            height: 15%;
            text-align: center;
        }

        .table1 {
            width: 95%;
        }


    </style>


</head>

<body>
<div class="div1">
    <div class="div2">
        <div class="div3">
            <table class="table table-bordered table1">
                <thead>
                <tr>
                    <td>公司名称</td>
                    <td>职位简介</td>
                    <td>职位要求</td>
                    <td>职位类别</td>
                    <td>工作经验</td>
                    <td>学历要求</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody>
                <s:forEach begin="0" step="1" items="${jobList}" var="job">
                    <tr>
                        <td>${job.companyName}</td>
                        <td>${job.jobsummary}</td>
                        <td>${job.require}</td>
                        <td>${job.jobtype}</td>
                        <td>${job.jobexperience}</td>
                        <td>${job.education}</td>
                        <td><a href="/job/addUser.form?id=${sessionScope.user.id}&id1=${job.id}&id2=${job.companyId}" class="btn bg-primary"><span class="glyphicon glyphicon-send"></span> 申请职位</a></td>
                    </tr>
                </s:forEach>
                </tbody>
            </table>
        </div>
        <div class="div4">

            <s:if test="${pageInfo.pages>0}">
                <nav>
                    <ul class="pager">

                        <s:if test="${pageInfo.pageNum>1}">
                            <li><a href="/job/selectAll.form?pageNum=1">首页</a></li>
                        </s:if>

                        <s:if test="${pageInfo.pageNum<=1}">
                            <li><a>首页</a></li>
                        </s:if>

                        <s:if test="${pageInfo.pageNum>1}">
                            <li><a href="/job/selectAll.form?pageNum=${pageInfo.pageNum-1}">上一页</a></li>
                        </s:if>

                        <s:if test="${pageInfo.pageNum<=1}">
                            <li><a>上一页</a></li>
                        </s:if>

                        <s:if test="${pageInfo.pageNum<pageInfo.pages}">
                            <li><a href="/job/selectAll.form?pageNum=${pageInfo.pageNum+1}">下一页</a></li>
                        </s:if>

                        <s:if test="${pageInfo.pageNum>=pageInfo.pages}">
                            <li><a>下一页</a></li>
                        </s:if>

                        <s:if test="${pageInfo.pageNum!=pageInfo.pages}">
                            <li><a href="/job/selectAll.form?pageNum=${pageInfo.pages}">尾页</a></li>
                        </s:if>

                        <s:if test="${pageInfo.pageNum>=pageInfo.pages}">
                            <li><a>尾页</a></li>
                        </s:if>
                    </ul>
                </nav>
            </s:if>
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
