<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="SetPass, EswisOrderByBeaming" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_default" Runat="Server">

    <div id="right_getback" runat="server" class="right_form">
        <h1>取回密码</h1>
        <p>请填写用户信息，经确认正确后将重置您的密码。考虑到账号安全性，本功能仅限学生账号使用。</p>
        <dl>
            <dt>学号</dt>
            <dd><asp:TextBox TextMode="SingleLine" ID="gb_bh" runat="server" MaxLength="16" />
            <asp:RequiredFieldValidator ID="rfv_xh" ControlToValidate="gb_bh" runat="server" ValidationGroup="getpass" ErrorMessage="学号不能为空" CssClass="msgstr" /></dd></dl>
        <dl>
            <dt>姓名</dt>
            <dd><asp:TextBox TextMode="SingleLine" ID="gb_xm" runat="server" MaxLength="16" />
            <asp:RequiredFieldValidator ID="rfv_xm" ControlToValidate="gb_xm" runat="server" ValidationGroup="getpass" ErrorMessage="姓名不能为空" CssClass="msgstr" /></dd></dl>
        <dl>
            <dt>身份证号</dt>
            <dd><asp:TextBox TextMode="SingleLine" ID="gb_sfzh" runat="server" MaxLength="18" />
            <asp:RequiredFieldValidator ID="rfv_sfzh" ControlToValidate="gb_sfzh" runat="server" ValidationGroup="getpass" ErrorMessage="身份证号不能为空" CssClass="msgstr" /></dd></dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd><asp:Button ID="Getpass" Text="提交验证" runat="server" ValidationGroup="getpass" OnClick="Getpass_Click" CssClass="submit" />
            <asp:Label ID="msg_getback" runat="server" CssClass="msgstr" /></dd></dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd class="msgstr">注意：如果您无法通过本方式重设密码，请与学校学生处/资助管理中心联系。</dd></dl>
    </div>

    <div id="right_setpass" visible="false" runat="server" class="right_form">
        <h1>密码重设</h1>
        <p>请正确填写您预留的邮箱地址，并输入新密码重设账号。</p>
        <dl>
            <dt>用户名</dt>
            <dd><asp:Label ID="username" runat="server" /></dd></dl>
        <dl>
            <dt>新密码</dt>
            <dd><asp:TextBox ID="newpass" TextMode="Password" runat="server" /></dd></dl>
        <dl>
            <dt>确认新密码</dt>
            <dd><asp:TextBox ID="newpass2" TextMode="Password" runat="server" />
            <asp:CompareValidator ID="chk_password" runat="server" ValidationGroup="newpass" ControlToCompare="newpass" ControlToValidate="newpass2" CssClass="msgstr" ErrorMessage="密码不一致" /></dd></dl>
        <dl>
            <dt>安全邮箱</dt>
            <dd><asp:TextBox ID="mailname" runat="server" /><asp:Label ID="mailsite" runat="server" /></dd></dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd><asp:Button ID="Setpass" Text="重设密码" runat="server" ValidationGroup="newpass" OnClick="Setpass_Click" CssClass="submit" />
            <asp:Label ID="msg_setpass" runat="server" CssClass="msgstr" />
            <asp:HiddenField ID="key" runat="server" Visible="false" /></dd></dl>
    </div>
</asp:Content>

