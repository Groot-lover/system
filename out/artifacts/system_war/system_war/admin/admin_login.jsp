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
        background-image: url("../imgs/admin_login.jpg");
        background-repeat: no-repeat;
        background-size: 100%;
    }
    nav{
        height: 35px;
        padding: 10px;
    }
    span{
        margin: 20px;
    }h1{
        margin: 50px 0px 10px 75px;
        color: firebrick;
         }
     #left{
         float: left;
         width: 20%;
         height: 100%;
         border-style: solid;
         border-color: darkgray;
     }
     h5{
         color: chocolate;
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
        color: #86742dab;
    }
    iframe{
        width: 700px;
        height: 650px;
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
        var add_employee=document.getElementById('add_employee');
        var inquire_employee=document.getElementById('inquire_employee');
        var divide_out=document.getElementById('divide_out');
        var iframes=document.getElementsByTagName("iframe");
        var inputs=document.getElementsByTagName("input");
        for (let i = 0; i <iframes.length ; i++) {
            iframes[i].hidden=true;
        }
        add_employee.onclick=function(){
            document.getElementById('add').hidden=false;
            document.getElementById('acquiescence').hidden=true;
            document.getElementById('inquire').hidden=true;
            document.getElementById('divide').hidden=true;

        }
        inquire_employee.onclick=function () {
            document.getElementById('inquire').hidden=false;
            document.getElementById('acquiescence').hidden=true;
            document.getElementById('add').hidden=true;
            document.getElementById('divide').hidden=true;
        }
        divide_out.onclick=function () {
            document.getElementById('divide').hidden=false;
            document.getElementById('acquiescence').hidden=true;
            document.getElementById('add').hidden=true;
            document.getElementById('inquire').hidden=true;
        }
        document.getElementsByTagName("button")[0].onclick=function () {
            document.getElementById('acquiescence').hidden=false;
            document.getElementById('divide').hidden=true;
            document.getElementById('add').hidden=true;
            document.getElementById('inquire').hidden=true;
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
                <li><input type="button" id="add_employee" value="添加员工" ></input></li>
                <li><input type="button" id="inquire_employee" value="查询员工"></input></li>
                <li><input type="button" id="divide_out" value="分配员工"></input></li>
            </ul>
        </div>
    </div>
    <div id="right">
        <div id="acquiescence">
            <h1>
                欢迎登录IT科技任务管理系统
            </h1>
        </div>
        <iframe src="add_employee.jsp" id="add" >
        </iframe>
        <iframe src="${pageContext.request.contextPath}/inqurie_employeeServlet" id="inquire" >
        </iframe>
        <iframe src="${pageContext .request.contextPath}/dividerOutServlet" id="divide" >
        </iframe>
    </div>
</body>
</html>