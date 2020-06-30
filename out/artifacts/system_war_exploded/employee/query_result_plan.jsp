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
        color: black;
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
        margin: 50px 0 10px 150px;
        display: inline-block;
        word-spacing: 5px;
        font-family: PingFangSC-Regular, Verdana, Arial, 微软雅黑, 宋体;
        color: crimson;
    }
    button{
        margin-left: 175px ;
        padding: 2px;
    }span{
         color: #b00000;
     }
    #down table{
        color: rgba(0, 14, 255, 0.84);
    }#back{
        padding-left: 450px;
         }
    input{
        margin-left: 50px;
        padding: 2px;
        border-color: chocolate;
    }
    #feed{
        color: cyan;
    }
</style>
<body>
<h3>
    计划信息
</h3>
<div id="down">
    <table>
        <tr>
            <td>计划名称</td>
            <td>所属任务</td>
            <td>开始时间</td>
            <td>结束时间</td>
            <td>计划状态</td>
            <td>是否反馈</td>
        </tr>
        <c:forEach items="${plans}" var="plan">
            <tr>
                <td>${plan.plan_name}</td>
                <td>${plan.task_id}</td>
                <td>${plan.plan_start_time}</td>
                <td>${plan.plan_end_time}</td>
                <td>${plan.plan_state}</td>
                <td id="feed">${plan.feedback}</td>
            </tr>
        </c:forEach>

    </table>
    <div id="back">
        <input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
    </div>
</div>
</body>
</html>