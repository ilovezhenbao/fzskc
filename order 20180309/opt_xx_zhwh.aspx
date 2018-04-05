<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_zhwh, EswisOrderByBeaming" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_left" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_right" Runat="Server">
    <div id="right_edit" runat="server" class="right_form">
        <dl>
            <dt>信息提示</dt>
            <dd><asp:Label ID="msg_Edit" runat="server" CssClass="msgstr" /></dd></dl>
        <dl>
            <dt>账号信息</dt>
            <dd><asp:Label ID="userinf" runat="server" /></dd></dl>
        <dl id="undiv" runat="server" visible="false">
            <dt>登录名<span>3~16位字母、数字或者汉字</span></dt>
            <dd><asp:TextBox TextMode="SingleLine" ID="usname" ReadOnly="true" runat="server" MaxLength="16" /></dd></dl>
        <dl>
            <dt>当前密码<span>请输入当前密码以确认权限</span></dt>
            <dd><asp:TextBox TextMode="Password" ID="psw_old" runat="server" /><span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_op" runat="server" ErrorMessage="当前密码不能为空" 
                    ControlToValidate="psw_old" ValidationGroup="zhwh" /></dd></dl>
        <dl>
            <dt>新密码<span>6~32位字母、数字或者字符</span></dt>
            <dd><asp:TextBox TextMode="Password" ID="psw_new" runat="server" /></dd></dl>
        <dl>
            <dt>确认新密码<span>6~32位字母、数字或者字符</span></dt>
            <dd><asp:TextBox TextMode="Password" ID="psw_new2" runat="server" />
                <asp:CompareValidator ID="rv_password" runat="server" ControlToCompare="psw_new" 
                    ControlToValidate="psw_new2" CssClass="msgstr" ErrorMessage="密码不一致" 
                    ValidationGroup="zhwh" /></dd></dl>
        <dl>
            <dt>电子邮箱<span>取回密码及重要通知使用</span></dt>
            <dd><asp:TextBox TextMode="SingleLine" ID="email" runat="server" /><span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_ml1" runat="server" ErrorMessage="邮箱地址不能为空" 
                    ControlToValidate="email" Display="Dynamic" ValidationGroup="zhwh" />
            <asp:RegularExpressionValidator ID="rv_ml2" runat="server" CssClass="msgstr" 
                    ErrorMessage="请输入有效的电子邮箱" ControlToValidate="email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    Display="Dynamic" ValidationGroup="zhwh" /></dd></dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd><asp:Button ID="usinf_submit" Text="提交保存" runat="server" 
                CssClass="submit" OnClick="clk_save_Click" ValidationGroup="zhwh" />
                <div>
                    注意：<br />
                    1.本功能仅限于修改本地登录所使用的账号密码，该账号体系与“统一身份认证登录”的并不一致，也互不关联。<br />
                    2.所以，您无法凭统一认证密码来修改本地密码；同时，在这里修改本地登录密码，也不会影响统一认证密码。<br />
                    3.当然，并不是所有使用本系统的高校均启用了统一身份认证，如有疑问请与学校管理部门联系。
                </div>
            </dd></dl>
    </div>
</asp:Content>

