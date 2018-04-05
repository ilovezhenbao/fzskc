<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_jx_zygl, EswisOrderByBeaming" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_r_expand" runat="Server">
    管理单位：<asp:DropDownList ID="pn_gldw" runat="server" OnSelectedIndexChanged="databind" AutoPostBack="true" />
    类型：<asp:DropDownList ID="pn_lx" runat="server" OnSelectedIndexChanged="databind" AutoPostBack="true" />
    <asp:Label ID="msg_panel" runat="server" CssClass="msgstr" />

    <div class="linkpanel">
        <asp:LinkButton ID="add" runat="server" Text="新增资源" OnClick="add_Click" />
        <asp:LinkButton ID="pn_import" runat="server" Text="资源批量导入" OnClick="pn_import_Click" />
        <asp:LinkButton ID="pn_export" runat="server" Text="数据导出" OnClick="pn_pn_export_Click" />
        <asp:LinkButton ID="pn_back" runat="server" Text="返回列表" OnClick="pn_back_Click" />
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_right" runat="Server">
    <div id="right_list" runat="server" class="right_content">
        <asp:GridView ID="gv1" runat="server" DataSourceID="ds1"
            OnDataBound="gv1_DataBound" OnRowDeleting="gv1_RowDeleting"
            OnSelectedIndexChanged="gv1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="操作" ControlStyle-CssClass="inline">
                    <ItemTemplate>
                        <asp:LinkButton ID="Edit" runat="server" CommandName="Select" Text="编辑" />
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

    <div id="right_edit" runat="server" visible="false" class="right_form">
        <dl>
            <dt>操作提示</dt>
            <dd>
                <asp:Label ID="e_msg" runat="server" CssClass="msgstr" />
                <asp:HiddenField ID="he_id" runat="server" Visible="false" />
                <asp:HiddenField ID="formtoken" runat="server" Visible="false" />
            </dd>
        </dl>
        <dl>
            <dt>管理单位</dt>
            <dd>
                <asp:DropDownList ID="e_gldw" runat="server" /></dd>
        </dl>
        <dl>
            <dt>资源类型</dt>
            <dd>
                <asp:DropDownList ID="e_type" runat="server" Enabled="false" /></dd>
        </dl>
        <dl>
            <dt>资源编号</dt>
            <dd>
                <asp:TextBox ID="e_bh" runat="server" />
            </dd>
        </dl>
        <dl>
            <dt>资源名称</dt>
            <dd>
                <asp:TextBox ID="e_mc" runat="server" /></dd>
        </dl>
        <dl>
            <dt>可同时使用人数</dt>
            <dd>
                <asp:TextBox ID="e_ksyrs" runat="server" Text="1" Enabled="false" />
                <span>请填写整数</span></dd>
        </dl>
        <dl>
            <dt>资源所在地</dt>
            <dd>
                <asp:TextBox ID="e_szd" runat="server" /></dd>
        </dl>
        <dl>
            <dt>控制器IP</dt>
            <dd>
                <asp:TextBox ID="e_kzqip" runat="server" /></dd>
        </dl>
        <dl>
            <dt>是否开放预约</dt>
            <dd>
                <asp:CheckBox ID="e_isopen" runat="server" Text="勾选即开放允许预约" /></dd>
        </dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd>
                <asp:Button ID="e_submit" runat="server" Text="保存信息" CssClass="submit" OnClick="e_submit_Click" ValidationGroup="e" /></dd>
        </dl>
    </div>
</asp:Content>

