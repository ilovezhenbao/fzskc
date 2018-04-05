<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_jx_zxgl, EswisOrderByBeaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_default" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_left" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_r_expand" Runat="Server">
    <div id="right_exp" runat="server">
        管理单位：<asp:DropDownList ID="pn_gldw" runat="server" OnSelectedIndexChanged="databind" AutoPostBack="true" />
        预约日期：<asp:DropDownList ID="pn_yydate" runat="server" OnSelectedIndexChanged="databind" AutoPostBack="true" />
        <asp:Label ID="Label1" runat="server" CssClass="msgstr" />
    </div>
    <asp:Label ID="msg_panel" runat="server" CssClass="msgstr" Text="" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cph_right" Runat="Server">
    <div id="right_list" runat="server" class="right_content">
        <asp:GridView ID="gv1" runat="server" DataSourceID="ds1" 
            OnDataBound="gv1_DataBound">
            <Columns>
                <asp:TemplateField HeaderText="操作" ControlStyle-CssClass="inline" Visible="false">
                    <ItemTemplate>
                        <asp:LinkButton ID="Select" runat="server" CommandName="Select" Text="审核/取消" />
                        <asp:LinkButton ID="Delete" runat="server" CommandName="Delete" Text="删除" OnClientClick="return confirm('您确定要删除这一项吗？该操作不可恢复');" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ds1" runat="server" />
        <div class="r_bottom">
            共找到
            <asp:Label ID="recordcount" runat="server" Text="0" />
            条记录
        </div>
    </div>
</asp:Content>

