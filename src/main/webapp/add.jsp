<%--
  Created by IntelliJ IDEA.
  User: 80665
  Date: 2019/4/10
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div align="center">
    <h1>小组长</h1>

    <form method="post" action="addInfo">
    <table align="center" border="1px" >
        <tr>
            <td>
                员工名称:<input name="ename">
            </td>
            </tr>
        <tr>
            <td>
                工作: <input name="job">
            </td>
        </tr>

        <tr>
            <td>
                工资:<input name="salary">
            </td>
        </tr>
        <tr>
            <td>
                部门编号:<input name="deptno">
            </td>
        </tr>
        <tr>
            <td>
                部门名称:<input name="dname">
            </td>
        </tr>
        <tr>
            <td>
                部门位置:<input name="local">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>
