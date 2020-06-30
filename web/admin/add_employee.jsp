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
        color: #000000;
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
    }.gender{
             margin-right: 5px;
             margin-left: 0px;
         }
    #down input{
        background-color: darkgray;
        margin-left: 25px;
        border-block-color: rgba(144, 39, 47, 0.78);
        padding: 2px;
    }
</style>

<body>
<h3>
    员工信息添加
</h3>
<form action="../addEmpServlet">
    <div>
        username:<input type="text" name="username"><br><br>
        真实姓名：<input type="text" name="emp_name"><br><br>
        性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：&nbsp;&nbsp;&nbsp;女<input type="radio" name="sex" value="female" class="gender">
        男<input type="radio" name="sex" value="male" class="gender"><br><br>
        password:<input type="password" name="password"><br><br>

        出生日期:<input type="date" name="birthday"><br><br>
        入职日期:<input type="date" name="hire_date"><br><br>
        职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位:<input type="text" name="position"><br><br>
        identity:<select name="flag">
        <option value="acquiescence" >请选择</option>
        <option value="admin" name="flag">管理员</option>
        <option value="supervisor" name="flag">主管</option>
        <option value="employee" name="flag">员工</option>
    </select><br><br>
        学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历:<select name="qualification">
                <option value="acquiescence">请选择</option>
                <option value="doctor" name="qualification">博士</option>
                <option value="postdoctoral" name="qualification">博士后</option>
                <option value="bachelor" name="qualification">学士</option>
            </select><br><br>
        工作经历:<textarea name="experience"></textarea><br><br>
        <div hidden >上级工号<input type="number" name="super_id" value="-1" ></div>
    </div>
    <div id="down">
        <input type="submit" value="提交" name="submit">
        <input type="reset" value="重置" name="reset">
    </div>

</form>
</body>
</html>