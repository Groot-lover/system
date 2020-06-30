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
        float: right;
        margin-right: 25px;
    }input{
        float: right;
             margin-right: 50px;
         }
</style>
<body>
    <h3>
        计划详细信息
    </h3>
    <div>
        <table>
            <tr>
                <td>计划名称</td>
                <td colspan="3">${plan.plan_name}</td>
            </tr>
            <tr>
                <td>计划描述</td>
                <td colspan="3">${plan.plan_description}</td>
            </tr>
            <tr>
                <td>开始时间</td>
                <td>${plan.plan_start_time}</td>
                <td>结束时间</td>
                <td>${plan.plan_end_time}</td>
            </tr>
            <tr>
                <td>所属任务</td>
                <td>${name}</td>
                <td>计划状态</td>
                <td>${plan.plan_state}</td>
            </tr>
            <tr>
                <td>反馈信息</td>
                <td colspan="3">${plan.plan_feedback}</td>
            </tr>
            <tr>
                <td colspan="4"><input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/></td>
            </tr>
        </table>
    </div>

</body>
</html>