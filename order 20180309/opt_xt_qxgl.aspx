<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_xt_qxgl, EswisOrderByBeaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_left" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="cph_r_expand">
    为选中的功能
    <asp:DropDownList ID="sel_ex" runat="server">
        <asp:ListItem Value="add" Text="添加" />
        <asp:ListItem Value="move" Text="删除" />
    </asp:DropDownList>
    用户角色 <asp:DropDownList ID="pn_roles" runat="server" />
    <asp:Button ID="sel_submit" Text="批量操作" runat="server" onclick="sel_submit_Click" />
    <asp:Label ID="msg_panel" runat="server" CssClass="msgstr" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_right" Runat="Server">
    <div id="right_list" visible="True" runat="server" class="right_content">
        <asp:GridView ID="gv1" runat="server" DataSourceID="ds2" >
            <Columns>
                <asp:TemplateField ControlStyle-CssClass="checkbox">
                    <HeaderTemplate><asp:CheckBox ID="sel_all" runat="server" AutoPostBack="true" oncheckedchanged="sel_all_CheckedChanged" CssClass="checkbox" /></HeaderTemplate>
                    <ItemTemplate><asp:CheckBox ID="sel" runat="server" Text="" /></ItemTemplate>
                    <ControlStyle CssClass="checkbox"></ControlStyle>
                </asp:TemplateField>   
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ds1" runat="server" />
        <div class="r_bottom"><div>共找到 <asp:Label ID="recordcount" runat="server" Text="0" /> 条记录</div></div>
    </div>
</asp:Content>


