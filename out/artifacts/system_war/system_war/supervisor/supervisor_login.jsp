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
    body{
        scroll:no;
        background-image: url("../imgs/supervisor_login.jpg");
        background-repeat: no-repeat;
        background-size: 100%;
    }
    nav{
        height: 35px;
        padding: 10px;
        color: cyan;
    }
    span{
        margin: 20px;
    }h1{
         margin: 50px 0px 10px 75px;
         color: #ee2222;
     }
    #left{
        float: left;
        width: 20%;
        height: 100%;
        border-style: solid;
        border-color: darkgray;
    }
    h5{
        color: #e87f1e;
        margin:25px 0px 10px 95px;
    }
    hr{
        color: darkgray;
    }ul{
         list-style-type: none;
     }
    li{
        margin: 15px 35px ;

        opacity: 80%;
        text-align: center;
    }
    input{
        padding: 3px 5px;
        background-color: darkgray;
    }
    #right{
        width: 75%;
        height: 100%;
        float: right;
    }
    #right h1{
        margin: 350px 400px 0 75px;
        text-align: center;
        color: rgba(187, 169, 62, 0.67);
    }
    iframe{
        width: 700px;
        height: 550px;
        margin: auto;
        border-style: none;
    }
    button{
        float: right;
        margin-right: 50px;
        padding: 5px;
        background-color: rgba(139, 139, 144, 0.65);
        border-block-color: rgba(144, 39, 47, 0.78);
    }
</style>
<script>
    window.onload=function(){
        var view_tasks=document.getElementById('view_tasks');
        var develop_task=document.getElementById('develop_task');
        var adjusting_tasks=document.getElementById('adjusting_tasks');
        var tracking_tasks=document.getElementById('tracking_tasks');
        var view_employee=document.getElementById('view_employee');
        var iframes=document.getElementsByTagName("iframe");
        for (let i = 0; i <iframes.length ; i++) {
            iframes[i].hidden=true;
        }
        view_tasks.onclick=function(){
            document.getElementById('v_tasks').hidden=false;
            document.getElementById('acquiescence').hidden=true;
            document.getElementById('develop').hidden=true;
            document.getElementById('adjusting').hidden=true;
            document.getElementById('tracking').hidden=true;
            document.getElementById('v_employee').hidden=true;
        }
        develop_task.onclick=function () {
            document.getElementById('v_tasks').hidden=true;
            document.getElementById('acquiescence').hidden=true;
            document.getElementById('develop').hidden=false;
            document.getElementById('adjusting').hidden=true;
            document.getElementById('tracking').hidden=true;
            document.getElementById('v_employee').hidden=true;
        }
        adjusting_tasks.onclick=function () {
            document.getElementById('v_tasks').hidden=true;
            document.getElementById('acquiescence').hidden=true;
            document.getElementById('develop').hidden=true;
            document.getElementById('adjusting').hidden=false;
            document.getElementById('tracking').hidden=true;
            document.getElementById('v_employee').hidden=true;
        }
        tracking_tasks.onclick=function () {
            document.getElementById('v_tasks').hidden=true;
            document.getElementById('acquiescence').hidden=true;
            document.getElementById('develop').hidden=true;
            document.getElementById('adjusting').hidden=true;
            document.getElementById('tracking').hidden=false;
            document.getElementById('v_employee').hidden=true;
        }
        view_employee.onclick=function () {
            document.getElementById('v_tasks').hidden=true;
            document.getElementById('acquiescence').hidden=true;
            document.getElementById('develop').hidden=true;
            document.getElementById('adjusting').hidden=true;
            document.getElementById('tracking').hidden=true;
            document.getElementById('v_employee').hidden=false;
        }
        document.getElementsByTagName("button")[0].onclick=function () {
            document.getElementById('v_tasks').hidden=true;
            document.getElementById('acquiescence').hidden=false;
            document.getElementById('develop').hidden=true;
            document.getElementById('adjusting').hidden=true;
            document.getElementById('tracking').hidden=true;
            document.getElementById('v_employee').hidden=true;
        }
    }
</script>
<body>
<nav>
    <span>欢迎您，尊敬的${user.username}</span>
    <button>主页</button>
</nav>

<div id="left">

    <div id="up">
        <h1>IT科技</h1>
        <h5>任务管理系统</h5>
    </div>
    <hr>
    <div id="down">
        <ul>
            <li><input type="button" id="view_tasks" value="查看任务" ></input></li>
            <li><input type="button" id="develop_task" value="制定任务"></input></li>
            <li><input type="button" id="adjusting_tasks" value="调整任务"></input></li>
            <li><input type="button" id="tracking_tasks" value="跟踪任务"></input></li>
            <li><input type="button" id="view_employee" value="查看人员"></input></li>
        </ul>
    </div>
</div>
<div id="right">
    <div id="acquiescence">
        <h1>
            欢迎登录IT科技任务管理系统
        </h1>
    </div>
    <iframe src="${pageContext.request.contextPath}/viewTsakServlet" id="v_tasks" ></iframe>
    <iframe src="${pageContext.request.contextPath}/developTaskServlet" id="develop" ></iframe>
    <iframe src="${pageContext.request.contextPath}/viewTsakServlet1" id="adjusting" ></iframe>
    <iframe src="${pageContext.request.contextPath}/viewTsakServlet2" id="tracking" ></iframe>
    <iframe src="${pageContext.request.contextPath}/viewEmployeeServlet" id="v_employee" ></iframe>
</div>
</body>
</html>
