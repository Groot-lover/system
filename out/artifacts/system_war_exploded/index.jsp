<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
</head>
<style type="text/css">
  *{
    padding: 0;
    margin: 0;
  }
  body{
    background: url("${pageContext.request.contextPath}/imgs/cover.jpg") no-repeat ;
    background-size: 100%;
    /*background-image: rgba(225,225,225,0.3);*/
    /*opacity: 80%;*/
    /*-moz-opacity: 80%;*/
  }
  #title{
    padding: 150px;
  }
  h1{
    display: inline-block;
    word-spacing: 5px;
    font-family: PingFangSC-Regular, Verdana, Arial, 微软雅黑, 宋体;
    color: crimson;
  }span{
     margin-left: 20px;
     color: darkgoldenrod;
   }
  #login{
    padding-left: 150px;
    width: 400px;
    height: 400px;
  }
  input{
    margin-left: 10px;
  }
  select{
    margin-left: 25px;
  }button{
     margin-left: 175px;
     padding: 2px;
     border-color: chocolate;
   }
  a{
    text-decoration: none;
  }#error{
    padding: 25px;
       color: red;
     }
</style>
<body>
<form action="${pageContext.request.contextPath}/loginServlet" method="post">
<div >
  <div id="title">
    <h1>
      IT科技
    </h1>
    <span>任务管理系统</span>
  </div>
  <!-- 登录页面-->
  <!-- jsp->servlet -->
  <div id="login">
    username:<input type="text" id="username" name="username"><br><br>
    password:<input type="password" id="password" name="password"><br><br>
    identity:<select name="flag">
    <option value="acquiescence" >请选择</option>
    <option value="admin" name="flag">管理员</option>
    <option value="supervisor" name="flag">主管</option>
    <option value="employee" name="flag">员工</option>
  </select><br>
    <button  type="submit">login</button>
    <div id="error">
      <%=request.getAttribute("cc_error")==null?"":request.getAttribute("cc_error")%>
    </div>
  </div>

</div>
</form>

</body>
</html>