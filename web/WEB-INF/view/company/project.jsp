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
            /*background-color: #c7ddef;*/
        }

        .div2 {
            width: 90%;
            height: 60%;
            margin: 0 auto;
            padding-top: 1%;
            padding-left: 10%;
            background-color: white;
        }

        .div3 {
            width: 100%;
            height: 20%;
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
                <td>公司名称</td>
                <td>技术类型</td>
                <td>工程名称</td>
                <td>工程信息</td>
                <td>工程预算</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody>
            <s:forEach begin="0" step="1" items="${projectList}" var="project">
                <tr>
                    <td>${project.id}</td>
                    <td>${project.projectcompany}</td>
                    <td>${project.projecttype}</td>
                    <td>${project.projectname}</td>
                    <td>${project.projectinfo}</td>
                    <td>${project.projectfunds}</td>
                    <td><a href="/company/projectAdd.form?id1=${project.id}&id2=${sessionScope.companyUser.id}"
                           class="btn bg-primary">承包</a></td>
                </tr>
            </s:forEach>
            </tbody>
        </table>
        <p style="padding-left: 40%;width: 60px;height: 30px"><a
                href="/company/project/select.form?id=${sessionScope.companyUser.id}" target="main"
                class="btn bg-success">查看</a></p>

    </div>

    <div class="div3">
        <%--分页--%>
        <s:if test="${pageInfo.pages>0}">
            <nav>
                <ul class="pager">

                    <s:if test="${pageInfo.pageNum>1}">
                        <li><a href="/project/selectAll.form?pageNum=1">首页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum<=1}">
                        <li><a>首页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum>1}">
                        <li><a href="/project/selectAll.form?pageNum=${pageInfo.pageNum-1}">上一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum<=1}">
                        <li><a>上一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum<pageInfo.pages}">
                        <li><a href="/project/selectAll.form?pageNum=${pageInfo.pageNum+1}">下一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum>=pageInfo.pages}">
                        <li><a>下一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum!=pageInfo.pages}">
                        <li><a href="/project/selectAll.form?pageNum=${pageInfo.pages}">尾页</a></li>
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