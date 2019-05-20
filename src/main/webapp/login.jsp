<%--
  Created by IntelliJ IDEA.
  User: 80665
  Date: 2019/4/10
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="application/javascript" src="js/jquery-3.3.1.js"></script>
    <script type="application/javascript">

        $(function(){
            $.ajax({
                type:'GET',
                url:'${pageContext.request.contextPath}/showInfo',
                dataType:'json',
                success:function(resultData){

                    $(resultData).each(function(index,item){


                        if(item != null){
                            var date = new Date(item.hirdate);
                            var dd = null;
                            if(date != null) {
                                date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()
                            }
                        }

                        var tr =" <tr class='addtr' align='center'"
                            +"<td>"+item.eid+"</td>"
                            +"<td>"+item.ename+"</td>"
                            +"<td>"+item.job+"</td>"
                            +"<td>"+dd+"</td>"
                            +"<td align='center'>"+item.salary+"</td>"
                            +"<td align='center'>"+item.dept.deptno+"</td>"
                            +"<td align='center'>"+item.dept.dname+"</td>"
                            +"<td align='center'>"+item.dept.local+"</td>"

                            +"<td><a href='${pageContext.request.contextPath}/deleEmp?eid="+item.eid+"'>删除</a> | <a href='${pageContext.request.contextPath}/empUpdate.jsp?eid="+item.eid+"'>修改</a></td> </tr>";
                        $("#tr2").after(tr);
                    });
                },
                error:function(){
                    alert("-----");
                }
            });
        });

    </script>
    <title>Title</title>
</head>
<body>

<div align="center">
    <h1>员工</h1>
    <h2 style="background-color: #dc311d"><a href="add.jsp">增加员工</a></h2>
    <table align="center" border="1px" bgcolor="#6aa0fa">
        <tr id="tr2">
            <td>
                员工编号
            </td>
            <td>
                员工名称
            </td>
            <td>
                工作
            </td>
            <td>
                入职时间
            </td>
            <td>
                工资
            </td>
            <td>
                部门编号
            </td>
            <td>
                部门名称
            </td>
            <td>
                部门位置
            </td>
            <td>
                操作
            </td>
        </tr>
    </table>
</div>

</body>
</html>
