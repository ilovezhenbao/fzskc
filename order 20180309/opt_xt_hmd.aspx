<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_xt_hmd, EswisOrderByBeaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_left" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_r_expand" Runat="Server">
    <asp:Label ID="pn_msg" runat="server" CssClass="msgstr" />
    <div class="linkpanel">
        <asp:LinkButton ID="CheckInj" runat="server" Text="入侵自动检测" OnClick="CheckInj_Click" />
        <asp:LinkButton ID="DeleteAll" runat="server" Text="清空所有" OnClick="DeleteAll_Click" />
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_right" Runat="Server">
    <asp:Panel ID="right_list" runat="server" CssClass="right_content">
        <asp:GridView ID="gv1" runat="server" DataSourceID="ds1" 
            OnDataBound="gv1_DataBound" OnSelectedIndexChanged="gv1_SelectedIndexChanged" OnRowDeleting="gv1_RowDeleting" >
            <Columns>
                <asp:TemplateField HeaderText="操作" ControlStyle-CssClass="inline">
                    <ItemTemplate>
                        <asp:LinkButton ID="Select" runat="server" CommandName="Select" Text="禁/解禁" />
                        <asp:LinkButton ID="Delete" runat="server" CommandName="Delete" Text="删除"
                             OnClientClick="return confirm('您确定要删除这一项吗？该操作不可恢复！');" />
                    </ItemTemplate>
                </asp:TemplateField> 
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ds1" runat="server" />
        <div class="r_bottom">共找到 <asp:Label ID="recordcount" runat="server" Text="0" /> 条记录</div>
    </asp:Panel>

</asp:Content>

