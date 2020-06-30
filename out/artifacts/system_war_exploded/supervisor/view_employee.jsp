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
        margin: 50px 0 10px 150px;
        display: inline-block;
        word-spacing: 5px;
        font-family: PingFangSC-Regular, Verdana, Arial, 微软雅黑, 宋体;
        color: crimson;
    }
    h3 button{
        color: black;
        text-decoration: none;
        float: right;
        margin-left: 175px;
        padding: 2px;
    }
    a{
        color: rgba(45, 204, 255, 0.82);
        text-decoration: none;
    }
</style>
<body>
<h3>
    人员信息
</h3>
<div>
    <table>
        <tr>
            <td>姓名</td>
            <td>性别</td>
            <td>入职信息</td>
            <td>职位</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${users}" var="user">
            <c:if test="${user.flag=='employee'}">
            <tr>
                <td>${user.username}</td>
                <td>${user.sex}</td>
                <td>${user.hire_date}</td>
                <td>${user.position}</td>
                <td><a href="${pageContext.request.contextPath}/userInformationServlet?id=${user.id}">详细信息</a></td>
            </tr>
            </c:if>
        </c:forEach>

    </table>
</div>

</body>
</html>