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
        color: #ffbd83;
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
        margin: 50px 0 10px 250px;
        display: inline-block;
        word-spacing: 5px;
        font-family: PingFangSC-Regular, Verdana, Arial, 微软雅黑, 宋体;
        color: crimson;
    }
    a{
        color: cyan;
        text-decoration: none;
    }input{
         background-color: darkgray;
         margin-left: 25px;
         border-block-color: rgba(144, 39, 47, 0.78);
         padding: 2px;
     }#back{
                   padding-left: 450px;
     }
</style>
<script>
    function delete1(id){
        if(confirm("您确定删除吗？")){
            location.href="${pageContext.request.contextPath}/delUserServlet?id="+id;
        }
    }
</script>
<body>
<h3>
    员工信息查询
</h3>
<form>
    <div>
        <table>
            <tr>
<%--                <td>序号</td>--%>
                <td>员工编号</td>
                <td>密码</td>
                <td>用户名</td>
                <td>性别</td>
                <td>出生日期</td>
                <td>职位</td>
                <td colspan="2">操作</td>
            </tr>
            <c:forEach items="${users}" var="user" >
                <tr>
<%--                    <td>${i.count}</td>--%>
                    <td>${user.id}</td>
                    <td>${user.password}</td>
                    <td>${user.username}</td>
                    <td>${user.sex}</td>
                    <td>${user.birthday}</td>
                    <td>${user.flag}</td>
                    <td ><a href="${pageContext.request.contextPath}/userInformationServlet?id=${user.id}">查看</a></td>
                    <td><a href="javascript:delete1(${user.id});">删除</a></td>
                </tr>
            </c:forEach>

        </table>
        <div id="back">
            <input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
        </div>
    </div>
</form>
</body>
</html>