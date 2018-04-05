<%@ page language="C#" autoeventwireup="true" inherits="Export, EswisOrderByBeaming" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>学生工作信息管理系统 - 数据导出</title>
    <meta http-equiv="keywords" content="学生工作,信息系统,管理系统,swis" />
    <meta http-equiv="author" content="华南师范大学,唐小煜,beaming@qq.com" />
    <style type="text/css">
        table,td,th
        {
        	border :1px solid #000;
        }
        h3 
        {
        	display:block;
        	line-height:40px;
        	text-align:center;
        }
        form,table,h3
        {
        	margin:0px auto;
        	width:720px auto;
        }
    </style>
</head>
<body><form id="form1" runat="server" style="border:none;">
<div>
    <h3 ID="head" runat="server" />
    <asp:GridView ID="gv1" runat="server" />
    <div id="tb1" runat ="server" />
</div>
</form></body>
</html>
