<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_xx_cardbind, EswisOrderByBeaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_default" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_left" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_r_expand" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cph_right" Runat="Server">
    <div id="right_eidt" runat="server" class="right_form right_post">
        <dl><dt>用户名</dt>
            <dd><asp:TextBox ID="e_username" runat="server" Enabled="false" /></dd>
        </dl>
        <dl>
            <dt>卡编号</dt>
            <dd><asp:TextBox ID="e_cardno" runat="server" Enabled="false" /></dd>
        </dl>
        <dl>
            <dt>操作提示</dt>
            <dd>
                <asp:Label ID="e_msg" runat="server" CssClass="msgstr" />
            </dd>
        </dl>
    </div>
</asp:Content>

