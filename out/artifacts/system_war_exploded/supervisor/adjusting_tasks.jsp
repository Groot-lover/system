<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<style>
    *{
        padding: 0;
        margin: 0;
    }
    table{
        border: 1px solid #8b8b90;
        color: #ccc029;
        text-align: center;
    }
    td{
        border: 1px solid #8b8b90;
        padding: 5px;
    }
    div{
        padding: 10px 0 0 50px;
    }
    h3{
        margin: 50px 0 10px 250px;
        display: inline-block;
        word-spacing: 5px;
        font-family: PingFangSC-Regular, Verdana, Arial, 微软雅黑, 宋体;
        color: crimson;
    }
    h3 button{
        color: black;
        text-decoration: none;
        float: right;
        margin-left: 175px;
        padding: 2px;
    }
    a{
        color: rgba(226, 14, 12, 0.82);
        text-decoration: none;
    }
</style>
<body>
<h3>
    未实施任务信息
</h3>
<div>
    <table>
        <tr>
<%--            <td><input type="checkbox">全选</td>--%>
            <td>任务名称</td>
            <td>实施人</td>
            <td>开始时间</td>
            <td>结束时间</td>
            <td>任务状态</td>
            <td colspan="2">操作</td>
        </tr>
        <c:forEach items="${tasks}" var="task">
            <c:if test="${task.task_state=='未实施'}">
                <tr>
<%--                    <td><input type="checkbox"></td>--%>
                    <td>${task.task_name}</td>
                    <td>${task.staff_id}</td>
                    <td>${task.task_start_t}</td>
                    <td>${task.task_end_t}</td>
                    <td>${task.task_state}</td>
                    <td><button><a href="${pageContext.request.contextPath}/adjustTasksDetailServlet?id=${task.id}">更改</a></button></td>
                    <td><button><a href="${pageContext.request.contextPath}/delTaskServlet?id=${task.id}">删除</a></button></td>
                </tr>
            </c:if>
        </c:forEach>
    </table>
</div>
</body>
</html>