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
        background-image: url("../imgs/employee_login.png");
        background-repeat: no-repeat;
        background-size: 100%;
    }
    nav{
        height: 35px;
        padding: 10px;
    }
    span{
        color: cyan;
        margin: 20px;
    }h1{
         margin: 50px 0px 10px 75px;
         color: rgba(199, 41, 41, 0.87);
     }
    #left{
        float: left;
        width: 20%;
        height: 100%;
        border-style: solid;
        border-color: darkgray;
    }
    h5{
        color: #8d4812;
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
        color: rgba(167, 148, 50, 0.67);
    }
    iframe{
        width:700px;
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
        var management_plan=document.getElementById('management_plan');
        var query_plan=document.getElementById('query_plan');
        var iframes=document.getElementsByTagName("iframe");
        var inputs=document.getElementsByTagName("input");
        for (let i = 0; i <iframes.length ; i++) {
            iframes[i].hidden=true;
        }
        management_plan.onclick=function(){
            document.getElementById('manage').hidden=false;
            document.getElementById('acquiescence').hidden=true;
            document.getElementById('query').hidden=true;
        }
        query_plan.onclick=function () {
            document.getElementById('manage').hidden=true;
            document.getElementById('acquiescence').hidden=true;
            document.getElementById('query').hidden=false;
        }
        document.getElementsByTagName("button")[0].onclick=function () {
            document.getElementById('manage').hidden=true;
            document.getElementById('acquiescence').hidden=false;
            document.getElementById('query').hidden=true;
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
            <li><input type="button" id="management_plan" value="计划管理" ></input></li>
            <li><input type="button" id="query_plan" value="查询计划"></input></li>
            </ul>
    </div>
</div>
<div id="right">
    <div id="acquiescence">
        <h1>
            欢迎登录IT科技任务管理系统
        </h1>
    </div>
    <iframe src="${pageContext.request.contextPath}/empTsakServlet?id=${user.id}" id="manage" >
    </iframe>
    <iframe src="${pageContext.request.contextPath}/queryPlanServlet" id="query" >
    </iframe>
</div>
</body>
</html>