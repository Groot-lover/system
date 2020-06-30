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
        margin: 50px 0 10px 300px;
        display: inline-block;
        word-spacing: 5px;
        font-family: PingFangSC-Regular, Verdana, Arial, 微软雅黑, 宋体;
        color: crimson;
    }
    a{
        color: cyan;
        text-decoration: none;
    }
    span{
        color: red;
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
                <td>实施人</td>
                <td>开始时间</td>
                <td>结束时间</td>
                <td>任务状态</td>
                <td>选择</td>
            </tr>
            <c:forEach items="${tasks}" var="task">
            <tr>
                <td>${task.task_name}</td>
                <td>${task.staff_id}</td>
                <td>${task.task_start_t}</td>
                <td>${task.task_end_t}</td>
                <td><span>${task.task_state}</span></td>
                <td><a href="${pageContext.request.contextPath}/detailTaskServlet?id=${task.id}">详细信息</a></td>
            </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>