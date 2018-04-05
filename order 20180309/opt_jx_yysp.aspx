<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_jx_yysp, EswisOrderByBeaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_default" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_left" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_r_expand" runat="Server">
    管理单位：<asp:DropDownList ID="pn_gldw" runat="server" OnSelectedIndexChanged="databind" AutoPostBack="true" />
    预约日期：<asp:DropDownList ID="pn_yydate" runat="server" OnSelectedIndexChanged="databind" AutoPostBack="true" />
    <asp:Label ID="msg_panel" runat="server" CssClass="msgstr" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cph_right" runat="Server">
    <div id="right_list" runat="server" class="right_content">
        <asp:GridView ID="gv1" runat="server" DataSourceID="ds1"
            OnSelectedIndexChanged="gv1_SelectedIndexChanged"
            OnDataBound="gv1_DataBound" OnRowDeleting="gv1_RowDeleting">
            <Columns>
                <asp:TemplateField ControlStyle-CssClass="checkbox">
                    <HeaderTemplate>
                        <asp:CheckBox ID="sel_all" runat="server" AutoPostBack="true" OnCheckedChanged="sel_all_CheckedChanged" CssClass="checkbox" /></HeaderTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="sel" runat="server" Text="" /></ItemTemplate>
                    <ControlStyle CssClass="checkbox"></ControlStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="操作" ControlStyle-CssClass="inline">
                    <ItemTemplate>
                        <asp:LinkButton ID="Select" runat="server" CommandName="Select" Text="审核/取消" />
                        <asp:LinkButton ID="Delete" runat="server" CommandName="Delete" Text="删除" OnClientClick="return confirm('您确定要删除这一项吗？该操作不可恢复');" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ds1" runat="server" />
        <div class="r_bottom">
            <div class="bt_panel" style="float:left;">
                对选中记录执行
                <asp:DropDownList ID="sel_ex" runat="server" AutoPostBack="true">
                    <asp:ListItem Value="" />
                    <asp:ListItem Value="sh" Text="审核通过" />
                    <asp:ListItem Value="nsh" Text="审核不通过" />
                    <asp:ListItem Value="del" Text="删除记录" />
                </asp:DropDownList>
                <asp:Button ID="sel_submit" Text="批量操作" runat="server" OnClick="sel_submit_Click" />
            </div>
            <div>
                共找到
                <asp:Label ID="recordcount" runat="server" Text="0" />
                条记录
            </div>
        </div>
    </div>
</asp:Content>

