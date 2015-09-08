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
            padding-top: 1%;
        }

        .div2 {
            width: 90%;
            height: 60%;
            margin: 0 auto;
            padding-top: 1%;
            padding-left: 10%;
            background-color: whitesmoke;
            border-radius: 10px;
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

                <td>工作要求</td>
                <td>工作类型</td>
                <td>教育背景</td>
                <td>工作经验</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody>
            <s:forEach items="${list}" begin="0" step="1"  var="job" varStatus="in">
                <tr>
                    <td>${in.index+1}</td>
                    <td>${job.companyName}</td>
                    <td>${job.require}</td>
                    <td>${job.jobtype}</td>
                    <td>${job.education}</td>
                    <td>${job.jobexperience}</td>
                    <td><a href="/person/delete.form?id=${personinfo.id}" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> 删除</a></td>
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
                        <li><a href="/selectAll.form?pageNum=1">首页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum<=1}">
                        <li><a>首页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum>1}">
                        <li><a href="/selectAll.form?pageNum=${pageInfo.pageNum-1}">上一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum<=1}">
                        <li><a>上一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum<pageInfo.pages}">
                        <li><a href="/selectAll.form?pageNum=${pageInfo.pageNum+1}">下一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum>=pageInfo.pages}">
                        <li><a>下一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum!=pageInfo.pages}">
                        <li><a href="/selectAll.form?pageNum=${pageInfo.pages}">尾页</a></li>
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