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
            padding-top: 2%;
            padding-left: 10%;
            background-color: white;
        }

        .div3 {
            width: 100%;
            height: 20%;
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
                <td>工程投资</td>
            </tr>
            </thead>
            <tbody>
            <s:forEach items="${projectList}" begin="0" step="1" var="list" varStatus="index">
                <tr>
                    <td>${index.index+1}</td>
                    <td>${list.projectname}</td>
                    <td>${list.projecttype}</td>
                    <td>${list.projectcompany}</td>
                    <td>${list.projectfunds}</td>
                </tr>
            </s:forEach>
            </tbody>
        </table>

    </div>


</div>

<!-- Latest compiled and minified JS -->
<script src="../js/jquery-2.1.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>