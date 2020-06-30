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
        color: cyan;
        text-decoration: none;
    }#back{
             padding-left: 450px;
         }
</style>
<body>
<h3>
    任务详细信息
</h3>
<div>
    <table>
        <tr>
            <td>任务名称</td>
            <td colspan="5">${task.task_name}</td>
        </tr>
        <tr>
            <td>任务描述</td>
            <td colspan="5">${task.task_description}</td>
        </tr>
        <tr>
            <td>开始时间</td>
            <td colspan="2">${task.task_start_t}</td>
            <td>结束时间</td>
            <td colspan="2">${task.task_end_t}</td>
        </tr>
        <tr>
            <td>实施人</td>
            <td colspan="2">${task.super_id}</td>
            <td>任务状态</td>
            <td colspan="2">${task.task_state}</td>
        </tr>
        <tr>
            <td colspan="6"><h2>实施计划</h2></td>
        </tr>
        <tr>
            <td>计划名称</td>
            <td>完成状态</td>
            <td>是否反馈</td>
            <td>开始时间</td>
            <td>结束时间</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${plans}" var="plan">
            <c:if test="${plan.task_id==task.id}">
        <tr>
            <td>${plan.plan_name}</td>
            <td>${plan.plan_state}</td>
            <td>${plan.feedback}</td>
            <td>${plan.plan_start_time}</td>
            <td>${plan.plan_end_time}</td>
            <td><a href="${pageContext.request.contextPath}/detailPlanServlet?id=${plan.id}&taskname=${task.task_name}">详细信息</a></td>
        </tr>
            </c:if>
        </c:forEach>
    </table>
    <div id="back">
        <input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
    </div>
</div>
</body>
</html>