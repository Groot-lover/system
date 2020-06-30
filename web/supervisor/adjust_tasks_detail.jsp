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
        color: crimson;
    }
    input{
        margin-left: 15px;
    }
    select,textarea{
        margin-left: 15px;
    }
    form{
        color: chocolate;
    }
    #down input{
        margin-left: 75px;
        padding: 2px;
    }
    span{
        color: red;
    }
</style>
<body>
<h3>
    调整任务信息
</h3>
<form action="updateTastDServlet">
<div>
    <input type="hidden" value="${task.id}" name="id">
        任务名称：<input type="text" value="${task.task_name}" name="task_name"><br><br>
        开始时间：<input type="text" value="${task.task_start_t}" name="task_start_t"> <br><br>
        结束时间：<input type="text" value="${task.task_end_t}" name="task_end_t"><br><br>
        实施人：  &#160;&#160;&#160;<select name="staff_id">
                    <c:forEach items="${users}" var="user">
                        <c:if test="${user.id==task.staff_id}">
                            <option value="${user.id}">${user.username}</option>
                        </c:if>
                    </c:forEach>
                    <c:forEach items="${users}" var="user">
                        <c:if test="${user.flag=='employee'}">
                            <option value="${user.id}">${user.username}</option>
                        </c:if>
                    </c:forEach>
            </select><br><br>
        任务描述：<textarea name="task_description">${task.task_description}</textarea><br><br>
        任务状态：<select name="task_state" >
        <option value="${task.task_state}">${task.task_state}</option>
        <option value="未实施">未实施</option>
        <option value="实施中">实施中</option>
        <option value="已实施">已实施</option>
    </select>

</div>
<div id="down">
    <input type="submit" value="提交" name="submit">
    <input type="reset" value="重置" name="reset">
</div>
</form>
</body>
</html>