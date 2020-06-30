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
        color: #ccc029;
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
        margin: 50px 0 10px 200px;
        display: inline-block;
        word-spacing: 5px;
        font-family: PingFangSC-Regular, Verdana, Arial, 微软雅黑, 宋体;
        color: crimson;
    }
    a{
        color: cyan;
        text-decoration: none;
    }
</style>
<body>
<h3>
    未分配员工信息查询
</h3>
<form>
    <div>
        <table>
            <tr>
                <td>员工编号</td>
                <td>密码</td>
                <td>真实姓名</td>
                <td>性别</td>
                <td>出生日期</td>
                <td>职位</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${users}" var="user" >
                <c:if test="${user.super_id==-1}" >
                <tr>
                    <td>${user.id}</td>
                    <td>${user.password}</td>
                    <td>${user.emp_name}</td>
                    <td>${user.sex}</td>
                    <td>${user.birthday}</td>
                    <td>${user.flag}</td>
                    <td ><a href="${pageContext.request.contextPath}/divideUserServlet?id=${user.id}">分配</a></td>
                </tr>
                </c:if>
            </c:forEach>

        </table>
    </div>
</form>
</body>
</html>