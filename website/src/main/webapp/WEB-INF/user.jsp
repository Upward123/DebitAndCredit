<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>主页面</title>

    <style>

        .addUser {
            display: block;
            width: 100px;
            text-align: center;
            margin: 50px auto;
        }

        table {
            background-color: white;
            border-collapse: collapse;
            border: 1px solid pink;
            width: fit-content;
            margin-top: 100px;
        }


    </style>

</head>
<body>

<a class="addUser" href="${pageContext.request.contextPath}
/insertUser.do">添加用户</a>
<table border="1" style="margin: auto" width="300px">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>密码</th>
        <th>操作</th>
    </tr>
    <tbody>
    <c:forEach items="${users}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.username}</td>
            <td>${item.password}</td>
            <td> <a href="${pageContext.request.contextPath}/deleteUserById.do?id=${item.id}">删除</a>
                 <a href="${pageContext.request.contextPath}/updateUserById.do?id=${item.id}">修改</a> </td>
        </tr>
    </c:forEach>
    </tbody>

</table>

</body>
</html>
