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
        color: rgba(211, 255, 87, 0.82);
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
    h2{
        display: inline-block;
    }
    a{
        color: black;
        text-decoration: none;
    }
    button{
        float: right;
        margin: 3px 5px;
        padding: 2px;
        border-color: chocolate;
    }
    .feed a{
        color: cyan;
    }
    input{
        margin-left: 25px;
        padding: 2px;
        border-color: chocolate;
    }
    #back{
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
            <td colspan="6">${task.task_name}</td>
        </tr>
        <tr>
            <td>任务描述</td>
            <td colspan="6">${task.task_description}</td>
        </tr>
        <tr>
            <td>开始时间</td>
            <td colspan="2">${task.task_start_t}</td>
            <td>结束时间</td>
            <td colspan="3">${task.task_end_t}</td>
        </tr>
        <tr>
            <td>实施人</td>
            <td colspan="2">${task.super_id}</td>
            <td>任务状态</td>
            <td colspan="3">${task.task_state}</td>
        </tr>
        <tr>
        <tr>
            <td colspan="7">
                <h2>计划信息</h2>
                <button><a href="${pageContext.request.contextPath}/newPlanServlet?task_id=${task.id}">新建</a></button>
            </td>
        </tr>
        <tr>
            <td>计划名称</td>
            <td>完成状态</td>
            <td>是否反馈</td>
            <td>开始时间</td>
            <td>结束时间</td>
            <td colspan="2">操作</td>
        </tr>
        <c:forEach items="${plans}" var="plan">
            <c:if test="${plan.task_id==task.id}">
            <tr>
                <td>${plan.plan_name}</td>
                <td>${plan.plan_state}</td>
                <td>${plan.feedback}</td>
                <td>${plan.plan_start_time}</td>
                <td>${plan.plan_end_time}</td>
                <td class="feed"><a href="${pageContext.request.contextPath}/delPlanServlet?plan_id=${plan.id}&task_id=${task.id}">删除</a></td>
                <td class="feed"><a href="${pageContext.request.contextPath}/tickTsakFeedBServlet?plan_id=${plan.id}">反馈</a></td>
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