<%--
  Created by IntelliJ IDEA.
  User: 80665
  Date: 2019/4/12
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="application/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <script type="text/javascript">
        $(function(){
            $.ajax({

                type:'GET',
                url:'${pageContext.request.contextPath}/getOneInfo',
                data:{"eid":${param.eid}},
                dataType:'json',
                success:function(rn){
                    console.log(rn);
                    $("#cid").val(rn.id);
                    $("#cname").val(rn.comname);
                    $("#cperson").val(rn.companyperson);
                    $("#caddr").val(rn.comaddress);
                    $("#cphone").val(rn.comphone);
                    $("#ctel").val(rn.camera);
                    $("#produce").val(rn.present);
                    $("#remark").val(rn.remark);
                }
            });
        });
        function save(){
            $("#form2").submit();
        }

    </script>
</head>
<body>
<form id="form2" action="${pageContext.request.contextPath}/updateEmp">

    <input type="hidden" id="cid" name="eid">
    <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
        <tr bgcolor="#E7E7E7">
            <td height="24" colspan="2" >&nbsp;编辑客户信息&nbsp;</td>
        </tr>
        <tr >
            <td align="right" bgcolor="#FAFAF1" height="22" >公司名称：</td>
            <td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
                <input  name="comname" id="cname"/></td>
        </tr>
        <tr >
            <td align="right" bgcolor="#FAFAF1" height="22">公司联系人：</td>
            <td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
                <input name="companyperson" id="cperson"/></td>
        </tr>
        <tr >
            <td align="right" bgcolor="#FAFAF1" height="22">公司地址：</td>
            <td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
                <input size="60" name="comaddress" id="caddr"/></td>
        </tr>
        <tr >
            <td align="right" bgcolor="#FAFAF1" height="22">联系电话：</td>
            <td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
                <input  name="comphone" id="cphone"/></td>
        </tr>
        <tr >
            <td align="right" bgcolor="#FAFAF1" height="22">座机：</td>
            <td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
                <input name="camera" id="ctel"/></td>
        </tr>
        <tr >
            <td align="right" bgcolor="#FAFAF1" height="22">公司简介：</td>
            <td align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
                <textarea rows=15 cols=130 name="present" id="produce"></textarea></td>
        </tr>

        <tr >
            <td align="right" bgcolor="#FAFAF1" >备注：</td>
            <td colspan=3 align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" >
                <textarea rows=10 cols=130 name="remark" id="remark"></textarea>
            </td>
        </tr>


        <tr bgcolor="#FAFAF1">
            <td height="28" colspan=4 align=center>
                &nbsp;
                <a href="javascript:save()" class="coolbg" >保存</a>
                <a href="customer.jsp" class="coolbg">返回</a>
            </td>
        </tr>
    </table>

</form>
</body>
</html>
