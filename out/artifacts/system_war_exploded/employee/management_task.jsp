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
    a{
        text-align: center;
        color: cyan;
        text-decoration: none;
    }
</style>
<body>
<h3>
    任务信息
</h3>
<div>
    <table>
        <tr>
            <td>任务名称</td>
            <td>指定人</td>
            <td>开始时间</td>
            <td>结束时间</td>
            <td>任务状态</td>
            <td >操作</td>
        </tr>
        <c:forEach items="${tasks}" var="task">
            <c:if test="${task.staff_id==loginid}">
                <tr>
                    <td>${task.task_name}</td>
                    <td>${user.username}</td>
                    <td>${task.task_start_t}-5-28</td>
                    <td>${task.task_end_t}-6-28</td>
                    <td>${task.task_state}</td>
                    <td><a href="${pageContext.request.contextPath}/empDetailTaskServlet?id=${task.id}">查看计划</a></td>

                </tr>
            </c:if>
        </c:forEach>

    </table>
</div>
</body>
</html>