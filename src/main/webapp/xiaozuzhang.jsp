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
                url:'${pageContext.request.contextPath}/showInfoAct',
                dataType:'json',
                success:function(resultData){

                    $(resultData).each(function(index,item){

                        var nState = item.nState;
                        if(nState == 1) {
                            nState = "通过"
                        }else if(nState == 2) {
                            nState = "拒绝"
                        }else  if(nState == 3) {
                            nState = "未审批"
                        }
                        if(item.tApprovemessage != null){
                            var date = new Date(item.tApprovemessage.dDate);
                            var dd = null;
                            if(date != null) {
                                date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()
                            }
                        }
                        if(item.tApprovemessage != null) {
                            var cad = item.tApprovemessage.cAdvice
                        }
                        var tr =" <tr class='addtr' align='center'"
                            +"<td>"+item.cName+"</td>"
                            +"<td>"+item.cContent+"</td>"
                            +"<td>"+item.nMoney+"</td>"
                            +"<td>"+dd+"</td>"
                            +"<td>"+cad+"</td>"
                            +"<td align='center'>"+nState+"</td>"

                            +"<td><a href='${pageContext.request.contextPath}/actEdit.jsp?cId="+item.cId+"'>编辑</a> | <a href='${pageContext.request.contextPath}/actDelete?cId="+item.cId+"'>删除</a></td> </tr>";
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
        <h1>小组长</h1>
        <h2 style="background-color: #dc311d"><a href="add.jsp">增加新活动</a></h2>
        <table align="center" border="1px" bgcolor="#6aa0fa">
            <tr id="tr2">
                <td>
                    活动名称
                </td>
                <td>
                    活动内容
                </td>
                <td>
                    活动经费
                </td>
                <td>
                    审批时间
                </td>
                <td>
                    领导审批意见
                </td>
                <td>
                    审批状态
                </td>
                <td>
                    操作
                </td>
                <td>
                    活动审批历史查看
                </td>
            </tr>
        </table>
    </div>

</body>
</html>
