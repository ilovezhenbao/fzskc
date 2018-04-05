<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_yxsz, EswisOrderByBeaming" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_left" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_r_expand" Runat="Server">
    单位类型 
    <asp:DropDownList ID="pn_type" runat="server" AutoPostBack="true" OnSelectedIndexChanged="databind" />
    所在校区 
    <asp:DropDownList ID="pn_fid" runat="server" AutoPostBack="true" OnSelectedIndexChanged="databind" />
    <asp:Button ID="pn_search" runat="server" Text="查询" OnClick="databind" />
    <asp:Label ID="msg_panel" runat="server" CssClass="msgstr" />

    <div class="r_panel_nav">
        <asp:LinkButton ID="pn_add" runat="server" Text="新增单位" onclick="pn_add_Click" />
        <asp:LinkButton ID="pn_back" runat="server" Text="返回列表" onclick="pn_back_Click" />
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_right" Runat="Server">
    <asp:Panel ID="right_list" runat="server" CssClass="right_content">
        <asp:GridView ID="gv1" runat="server"  
            OnRowDeleting="RowDeleting" OnSelectedIndexChanged="gv1_SelectedIndexChanged" OnDataBound="gv1_DataBound" >
            <Columns>
                <asp:TemplateField HeaderText="" ControlStyle-CssClass="inline">
                    <ItemTemplate>
                        <asp:LinkButton ID="Select" runat="server" CommandName="Select" Text="编辑" />
                        <asp:LinkButton ID="Delete" runat="server" CommandName="Delete" Text="删除" OnClientClick="return confirm('操作不可恢复，您确定要删除这一项吗？');" />
                    </ItemTemplate>
                </asp:TemplateField> 
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ds1" runat="server" />
        <div class="r_bottom">共找到 <asp:Label ID="recordcount" runat="server" Text="0" /> 条记录</div>
    </asp:Panel>

    <asp:Panel ID="right_edit" runat="server" CssClass="right_form" Visible="false">
        <dl>
            <dt>信息提示</dt>
            <dd><asp:CheckBox ID="e_isnew" runat="server" Text="新增" Checked="false" Visible="false" />
                <asp:Label ID="e_msg" runat="server" CssClass="msgstr" /></dd>
        </dl>
        <dl>
            <dt>单位编号</dt>
            <dd><asp:TextBox ID="e_code" runat="server" />
                <span class="msgstr">行政以00开头，勤工以98开头</span></dd>
        </dl>
        <dl>
            <dt>单位名称</dt>
            <dd><asp:TextBox ID="e_name" runat="server" /></dd>
        </dl>
        <dl>
            <dt>单位类型</dt>
            <dd><asp:DropDownList ID="e_type" runat="server" /></dd>
        </dl>
        <dl>
            <dt>所在校区</dt>
            <dd><asp:TextBox ID="e_fid" runat="server" /></dd>
        </dl>
        <dl><dt>&nbsp;</dt>
            <dd><asp:Button ID="e_save" runat="server" Text="保存信息" CssClass="submit" 
                    onclick="e_save_Click" /></dd></dl>    
    </asp:Panel>
</asp:Content>

