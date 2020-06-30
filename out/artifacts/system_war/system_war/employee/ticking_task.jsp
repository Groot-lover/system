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
    #down input{
        margin-left: 100px;
        padding: 2px;
    }span{
         color: #b00000;
     }
</style>
<body>
<h3>
    更改计划反馈信息
</h3>
<form action="updatePlanDServlet">
<div>
    <input type="hidden" value="${plan.id}" name="plan_id">
    <input type="hidden" value="${plan.task_id}" name="task_id">
        <table>
            <tr>
                <td>任务名称</td>
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
                <td>计划状态</td>
                <td colspan="3" >
                    <select name="plan_state">
                        <option value="${plan.plan_state}">${plan.plan_state}</option>
                        <option value="未完成">未完成</option>
                        <option value="执行中">执行中</option>
                        <option value="已完成">已完成</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>是否反馈</td>
                <td colspan="3">
                    <select name="feedback">
                        <option value="${plan.feedback}">${plan.feedback}</option>
                        <option value="未反馈">未反馈</option>
                        <option value="已反馈">已反馈</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>反馈信息</td>
                <td colspan="3"><textarea name="plan_feedback"></textarea></td>
            </tr>
        </table>


</div>
<div id="down">
    <input type="submit" value="提交">
    <input type="reset" value="重置">
</div>
</form>
</body>
</html>