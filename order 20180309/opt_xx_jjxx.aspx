<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_xx_jjxx, EswisOrderByBeaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%--    <link rel="stylesheet" href="css/form_style.css" />--%>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cph_right" runat="Server">
    <div id="right_edit" runat="server" class="right_form">
        <dl>
            <dt>信息提示</dt>
            <dd>
                <asp:Label ID="e_message" runat="server" CssClass="msgstr" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="SingleParagraph" CssClass="msgstr"
                    HeaderText="请检查带*项目及数据格式提示（汇总）：" ValidationGroup="e" />
            </dd>
        </dl>
        <dl>
            <dt>工号/学号</dt>
            <dd><asp:Label ID="bh" runat="server" /></dd>
        </dl>
        <dl>
            <dt>姓名</dt>
            <dd>
                <asp:TextBox TextMode="SingleLine" ID="xm" runat="server" MaxLength="32" />
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_xm" runat="server" ControlToValidate="xm" Display="Dynamic" CssClass="msgstr"
                    ErrorMessage="必须输入姓名" ValidationGroup="e" />
            </dd>
        </dl>
        <dl>
            <dt>性别</dt>
            <dd>
                <asp:DropDownList ID="xb" runat="server">
                    <asp:ListItem Text="" Value="" />
                    <asp:ListItem Text="男" Value="男" />
                    <asp:ListItem Text="女" Value="女" />
                </asp:DropDownList>
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_xb" runat="server" ControlToValidate="xb" Display="Dynamic" CssClass="msgstr"
                    ErrorMessage="必须选择性别" ValidationGroup="e" /></dd>
        </dl>
        <dl>
            <dt>民族</dt>
            <dd>
                <asp:DropDownList ID="mz" runat="server" />
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_mz" runat="server" ControlToValidate="mz" Display="Dynamic" CssClass="msgstr"
                    ErrorMessage="必须选择民族" ValidationGroup="e" /></dd>
        </dl>
        <dl>
            <dt>电子邮箱</dt>
            <dd>
                <asp:TextBox ID="email" runat="server" />
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_ml1" runat="server" ControlToValidate="email" Display="Dynamic" CssClass="msgstr"
                    ErrorMessage="邮箱用于重设密码，不能留空" ValidationGroup="e" />
                <asp:RegularExpressionValidator ID="rv_ml2" runat="server" ControlToValidate="email" Display="Dynamic" CssClass="msgstr"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ErrorMessage="邮箱格式有误" ValidationGroup="e" /></dd>
        </dl>
        <dl>
            <dt>移动电话</dt>
            <dd>
                <asp:TextBox ID="yddh" runat="server" />
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_sj1" runat="server" ControlToValidate="yddh" Display="Dynamic" CssClass="msgstr"
                    ErrorMessage="用于紧急联系，不能留空" ValidationGroup="e" />
                <asp:RegularExpressionValidator ID="rv_sj2" ControlToValidate="yddh" runat="server" Display="Dynamic" CssClass="msgstr"
                    ValidationExpression="\d{11,12}"
                    ErrorMessage="请填写手机号码" ValidationGroup="e" /></dd>
        </dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd>
                <asp:Button ID="usinf_submit" Text="提交保存" runat="server" CssClass="submit"
                    OnClick="clk_save_Click" ValidationGroup="e" /></dd>
        </dl>
    </div>
</asp:Content>

