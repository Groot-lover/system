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
        color: rgba(255, 237, 56, 0.67);
        padding: 10px 0 0 85px;
    }
    h3{
        margin: 50px 0 0 100px;
        display: inline-block;
        word-spacing: 5px;
        font-family: PingFangSC-Regular, Verdana, Arial, 微软雅黑, 宋体;
        color: crimson;
    }
    span{
        margin-left: 15px;
    }
    input{
        padding: 2px;
        margin-left: 250px;
        background-color: darkgray;
    }
    a{
        color: #000;
        text-decoration: none;
    }
</style>

<body>
<h3>
    用户详细信息
</h3>
<form>
    <div>
        姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:<span>${user.emp_name}</span><br><br>
        密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:<span>${user.password}</span><br><br>
        性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:<span>${user.sex}</span><br><br>
        出生日期<span>${user.birthday}</span><br><br>
        职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位:<span>${user.position}</span><br><br>
        identity:<span>${user.flag}</span><br><br>
        学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历:<span>${user.qualification}</span><br><br>
        入职日期<span>${user.hire_date}</span><br><br>
        角&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色:<span>${user.flag}</span>
    </div>
    <div>
        <input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
    </div>

</form>
</body>
</html>