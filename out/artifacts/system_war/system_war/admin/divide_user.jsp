<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<style>
    table{
        border: 1px solid #8b8b90;
        color: #ccc029;
        text-align: center;
        padding: 0 5px 5px 0;
    }
    tr{
        padding: 5px;
    }td{
             padding: 5px;
         }
    input ,select{
        margin-left: 15px;
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
    #submit{
        margin: 15px 0 0 200px;
    }#down{
             color: #000;
         }
</style>
<body>
    <h3>
        分配用户
    </h3>
    <form action="updateUserSuperIdServlet">
        <input hidden name="id" value="${user.id}">
    <div>
        <table>
            <tr>
                <td>用户编号</td>
                <td>真实姓名</td>
                <td rowspan="2">主管
                    <select name="super_id">
                        <option>请选择</option>
                        <c:forEach items="${users}" var="user">
                            <c:if test="${user.flag!='employee'}">
                                <option value="${user.id}" >${user.emp_name}</option>
                            </c:if>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr id="down">
                <td>${user.id}</td>
                <td>${user.emp_name}</td>

            </tr>
        </table>
    </div>
    <div>
        <input type="submit" value="提交" name="submit" id="submit">
    </div>
    </form>
</body>
</html>