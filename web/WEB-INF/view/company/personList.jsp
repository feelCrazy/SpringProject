<%@ taglib prefix="s" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
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
            width: 100%;
            height: 600px;
            /*background-color: #c7ddef;*/
        }

        .div2 {
            width: 90%;
            height: 80%;
            margin: 0 auto;
            background-color: white;
            padding-left: 5%;
            padding-top: 1%;
        }

        .table1 {
            width: 95%;
            text-align: left;
        }

        .div3 {
            width: 100%;
            height: 20%;
            text-align: center;
        }
    </style>

</head>

<body>

<div class="div1">
    <div class="div2">
        <table class="table table-bordered table1">
            <thead>
            <tr>
                <td>编号</td>
                <td>姓名</td>
                <td>性别</td>
                <td>年龄</td>
                <td>电话</td>
                <td>邮箱</td>
                <td>个人简历</td>
                <td>查看详细信息</td>
            </tr>
            </thead>
            <tbody>
            <s:forEach items="${userList}" begin="0" step="1" varStatus="ind" var="user">
                <tr>
                    <th scope="row">${ind.index+1}</th>
                    <td>${user.username}</td>
                    <td>${user.sex}</td>
                    <td>${user.age}</td>
                    <td>${user.phone}</td>
                    <td>${user.email}</td>
                    <td>${user.personinfo}</td>
                    <td><a href=""class="btn bg-primary">详细信息</a> <a href="" class="btn btn-info">面试</a></td>
                </tr>
            </s:forEach>
            </tbody>
        </table>

    </div>
    <div class="div3">
        <%--分页--%>
        <s:if test="${pageInfo.pages>0}">
            <nav>
                <ul class="pager">

                    <s:if test="${pageInfo.pageNum>1}">
                        <li><a href="/personInfo/personList.form?pageNum=1">首页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum<=1}">
                        <li><a>首页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum>1}">
                        <li><a href="/personInfo/personList.form?pageNum=${pageInfo.pageNum-1}">上一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum<=1}">
                        <li><a>上一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum<pageInfo.pages}">
                        <li><a href="/personInfo/personList.form?pageNum=${pageInfo.pageNum+1}">下一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum>=pageInfo.pages}">
                        <li><a>下一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum!=pageInfo.pages}">
                        <li><a href="/personInfo/personList.form?pageNum=${pageInfo.pages}">尾页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum>=pageInfo.pages}">
                        <li><a>尾页</a></li>
                    </s:if>
                </ul>
            </nav>
        </s:if>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../js/jquery-2.1.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
