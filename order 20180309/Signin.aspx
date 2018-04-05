<%@ page language="C#" autoeventwireup="true" inherits="Signin, EswisOrderByBeaming" %>

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
            <h2>预约签到</h2>
            <asp:TextBox ID="e_macid" runat="server" TextMode="SingleLine" placeholder="IP地址" Enabled="false" />
            <asp:TextBox ID="e_macname" runat="server" TextMode="SingleLine" placeholder="机器名" Enabled="false" />
            <asp:TextBox ID="e_ordername" runat="server" TextMode="SingleLine" placeholder="预约人"  Enabled="false" />
            <asp:TextBox ID="e_signcode" runat="server" TextMode="SingleLine" placeholder="签到码" />
            <asp:Button ID="logon" runat="server" Text="签到" OnClick="logon_Click" />
            <input id="gologon" type="button" runat="server" value="去预约" onserverclick="gologin_Click" />
            <label>
                <asp:Label ID="msg_logon" runat="server" CssClass="msgstr" Text="限预约人凭签到码登录使用" /></label>
        </form>
    </div>

    <div class="footing">
        <asp:Label ID="msg_sysinf" runat="server" />
        <br />
        <asp:Label ID="msg_unitinf" runat="server" />
    </div>
</body>
</html>
