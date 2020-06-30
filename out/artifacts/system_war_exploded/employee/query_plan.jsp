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
    }
</style>
<body>
<form action="querPlanRServlet">
<h3>
    查询条件
</h3>
<button type="submit">查询</button>
<div>
        <table>
            <tr>
                <td>计划名称</td>
                <td colspan="2"><input type="text" name="plan_name"></td>
            </tr>
            <tr>
                <td>所属任务</td>
                <td colspan="2">
                    <select name="task_id">
                        <option value="0">请选择</option>
                        <c:forEach items="${tasks}" var="task">
                            <option value="${task.id}">${task.task_name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>开始时间</td>
                <td>从<input type="date" name="start_time1"></td>
                <td>到<input type="date" name="start_time2"></td>
            </tr>
            <tr>
                <td>结束时间</td>
                <td>从<input type="date" name="end_time1"></td>
                <td>到<input type="date" name="end_time2"></td>
            </tr>
            <tr>
                <td>是否反馈</td>
                <td colspan="2">
                    <select name="feedback">
                        <option value="">请选择</option>
                        <option value="已反馈">已反馈</option>
                        <option value="未反馈">未反馈</option>
                    </select>
                </td>
            </tr>
        </table>
</div>
</form>
</body>
</html>