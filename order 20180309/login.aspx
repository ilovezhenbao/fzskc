<%@ page language="C#" autoeventwireup="true" inherits="login, EswisOrderByBeaming" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Fx 高校资源预约管理系统</title>
    <meta http-equiv="keywords" content="资源预约,学生工作,综合服务,服务平台,信息系统,管理系统" />
    <meta http-equiv="author" content="华南师范大学,唐小煜,beaming@qq.com" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    <link rel="stylesheet" href="css/index_style.css" type="text/css" />
</head>
<body>
    <div class="container">
        <img src="images/logo.png" alt="预约登录logo" class="logo" />

        <form id="form1" runat="server" class="loginForm">
            <h2>登录系统</h2>
            <asp:TextBox ID="log_username" runat="server" TextMode="SingleLine" placeholder="账号" />
            <asp:TextBox ID="log_password" runat="server" TextMode="Password" placeholder="密码" />
            <asp:Button ID="logon" runat="server" Text="登录" OnClick="logon_Click" />
            <a id="logon2" href="./setpass.aspx" >找回密码</a>
            <label>
                <asp:Label ID="msg_logon" runat="server" CssClass="msgstr" Text="请使用系统账号、密码登录" /><br />
                <span>已绑定一卡通用户请直接刷卡登录</span>
            </label>
        </form>
    </div>

    <div class="footing">
        <asp:Label ID="msg_sysinf" runat="server" />
        <br />
        <asp:Label ID="msg_unitinf" runat="server" />
    </div>
</body>
</html>
