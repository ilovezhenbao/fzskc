<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_jx_tjbb, EswisOrderByBeaming" %>

<asp:Content ID="Content4" ContentPlaceHolderID="cph_r_expand" Runat="Server">
    <asp:LinkButton ID="sc_def" runat="server" Text="概要" OnClick="sc_def_Click" />
    <asp:LinkButton ID="sc_stat" runat="server" Text="登录统计" 
        onclick="sc_stat_Click" />
    <asp:LinkButton ID="LinkButton1" runat="server" Text="每天预约" />
    <asp:LinkButton ID="LinkButton2" runat="server" Text="设备利用" />
    <asp:Label ID="msg_panel" runat="server" CssClass="msgstr" Text="" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cph_right" Runat="Server">
    <div id="right_list" runat="server" class="right_content">
        <asp:GridView ID="gv1" runat="server" />
        <asp:SqlDataSource ID="ds1" runat="server" />
        <div class="r_bottom">
            共找到
            <asp:Label ID="recordcount" runat="server" Text="0" />
            条记录
        </div>
    </div>
</asp:Content>
