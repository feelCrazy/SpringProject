<%@ taglib prefix="s" uri="http://java.sun.com/jstl/core_rt" %>
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
            background-color: #c7ddef;
        }

        .div2 {
            width: 90%;
            height: 60%;
            margin: 0 auto;
            padding-top: 5%;
            padding-left: 10%;
            background-color: white;
        }

        .div3 {
            width: 100%;
            height: 20%;
           padding-right: 8%;
        }

        .a1 {
            padding-left: 40%;
        }
    </style>
</head>
<body>

<div class="div1">
    <div class="div2">
        <table class="table table-bordered" style="width:90%;text-align: center">
            <thead>
            <tr>
                <td>编号</td>
                <td>工程名称</td>
                <td>技术类型</td>
                <td>工程发起人</td>
                <td>工程信息</td>
                <td>工程投资</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody>
            <s:forEach step="1" begin="0" items="${list}" var="project">
                <tr>
                    <td>${project.id}</td>
                    <td>${project.projectname}</td>
                    <td>${project.projecttype}</td>
                    <td>${project.projectcompany}</td>
                    <td>${project.projectinfo}</td>
                    <td>${project.projectfunds}</td>
                    <td><a href="/project/delete.form?id=${project.id}" class="btn btn-danger"><span
                            class="glyphicon glyphicon-trash"></span> 删除</a>&nbsp;&nbsp;<a class="btn btn-default"
                                                                               href="/project/up.form?idNum=${project.id}"><span class="glyphicon glyphicon-repeat"></span> 修改</a>
                    </td>
                </tr>
            </s:forEach>
            </tbody>
        </table>
        <p style="padding-left:35%;"><a href="/project/addInfo.form" class="btn btn-info">
            <span class="glyphicon glyphicon-plus"></span> 添加
        </a></p>
    </div>

    <div class="div3">
        <%--分页--%>
        <s:if test="${pageInfo.pages>0}">
            <nav>
                <ul class="pager">

                    <s:if test="${pageInfo.pageNum>1}">
                        <li><a href="/selectAll.form?pageNum=1">首页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum<=1}">
                        <li><a>首页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum>1}">
                        <li><a href="/backProject/all.form?pageNum=${pageInfo.pageNum-1}">上一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum<=1}">
                        <li><a>上一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum<pageInfo.pages}">
                        <li><a href="/backProject/all.form?pageNum=${pageInfo.pageNum+1}">下一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum>=pageInfo.pages}">
                        <li><a>下一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum!=pageInfo.pages}">
                        <li><a href="/backProject/all.form?pageNum=${pageInfo.pages}">尾页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum>=pageInfo.pages}">
                        <li><a>尾页</a></li>
                    </s:if>
                </ul>
            </nav>
        </s:if>
    </div>

</div>

<!-- Latest compiled and minified JS -->
<script src="../js/jquery-2.1.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>