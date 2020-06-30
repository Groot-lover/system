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
    div{
        padding: 10px 0 0 50px;
    }
    h3{
        margin: 50px 0 0 100px;
        display: inline-block;
        word-spacing: 5px;
        font-family: PingFangSC-Regular, Verdana, Arial, 微软雅黑, 宋体;
        color: rgba(194, 20, 51, 0.95);
    }
    input{
        margin-left: 15px;
    }
    select,textarea{
        margin-left: 15px;
    }
    form{
        color: black;
    }
    #down input{
        margin-left: 50px;
        padding: 2px;
        border-color: chocolate;
    }span{
        color: #b00000;
         }
</style>
<body>
<h3>
    输入新计划信息
</h3>
<form action="${pageContext.request.contextPath}/createPlanServlet?task_id=${task_id}">
<div>

        计划名称：<input type="text" name="plan_name"><br><br>
        计划描述：<textarea name="plan_description"></textarea><br><br>
        开始时间：<input type="date" name="plan_start_time"><br><br>
        结束时间：<input type="date" name="plan_end_time"><br><br>
        计划状态：<select name="plan_state" >
                    <option >请选择</option>
                    <option value="未实施">未实施</option>
                    <option value="实施中">实施中</option>
                    <option value="已实施">已实施</option>
                </select><br><br>
        是否反馈：<span>未反馈</span>
    <input type="hidden" name="feedback" value="未反馈">
    <input type="hidden" name="task_id" value="${task_id}">

</div>
<div id="down">
    <input type="submit" value="提交">
    <input type="reset" value="重置">
    <input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
</div>
</form>
</body>
</html>