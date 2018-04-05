<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_xtrz, EswisOrderByBeaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_r_expand" Runat="Server">
    页面 <asp:DropDownList ID="thepage" runat="server" AutoPostBack="true" OnSelectedIndexChanged="databind" />
    返回 <asp:DropDownList ID="st_records" runat="server" 
        AutoPostBack="true" onselectedindexchanged="databind">
        <asp:ListItem Value="100" />
        <asp:ListItem Value="500" />
        <asp:ListItem Value="2500" />
        <asp:ListItem Value="0" Text="所有" />
    </asp:DropDownList>
    <br />
    操作 <asp:DropDownList ID="operation" runat="server" AutoPostBack="true" OnSelectedIndexChanged="databind" />
    日期 <asp:TextBox ID="thedate" runat="server" AutoPostBack="True" ontextchanged="databind" />
    IP <asp:TextBox ID="ip" runat="server" AutoPostBack="True" ontextchanged="databind" />
    <br />
    内容 <asp:TextBox ID="contents" runat="server" AutoPostBack="True" ontextchanged="databind" />
    用户编号 <asp:TextBox ID="theobject" runat="server" AutoPostBack="True" ontextchanged="databind" />
    <asp:LinkButton ID="sc_submit" runat="server" Text="查询" OnClick="databind" />
    <asp:Label ID="msg_panel" runat="server" CssClass="msgstr" />

    <div class="linkpanel">
        <asp:Label ID="msg_userinf" runat="server" />
        <asp:LinkButton ID="sc_lookup" runat="server" Text="更多" Visible="False" />
        <asp:LinkButton ID="sc_stat" runat="server" Text="登录统计" 
            onclick="sc_stat_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_right" Runat="Server">
    <div id="right_list" runat="server" class="right_content">
        <asp:GridView ID="gv1" runat="server" DataSourceID="ds1" OnSelectedIndexChanging="gv1_rowselect" >
            <Columns>
                <asp:CommandField ButtonType="Link" ShowSelectButton="true" SelectText="查看" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ds1" runat="server" />
        <div class="r_bottom">共找到 <asp:Label ID="recordcount" runat="server" Text="0" /> 条记录</div>
    </div>

    <div id="right_stat" runat="server" class="right_content" visible="false">
        <asp:GridView ID="gv2" runat="server" DataSourceID="ds2" />
        <asp:SqlDataSource ID="ds2" runat="server" />
    </div>
</asp:Content>

