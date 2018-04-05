<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_jx_zycsgl, EswisOrderByBeaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_default" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_left" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_r_expand" Runat="Server">
    <span>
        代码：<asp:TextBox ID="pn_dwcode" runat="server" MaxLength="2" placeholder="2位数字" />
        名称：<asp:TextBox ID="pn_dwname" runat="server" />
        <asp:LinkButton ID="pn_adddw" runat="server" Text="新增单位" OnClick="pn_adddw_Click" />
    </span>
    <asp:Label ID="msg_panel" runat="server" CssClass="msgstr" />
    <div class="linkpanel button1">
        <asp:LinkButton ID="pn_back" runat="server" Text="返回列表" OnClick="pn_back_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cph_right" Runat="Server">
    <div id="right_list" runat="server" class="right_content">
        <asp:GridView ID="gv1" runat="server" DataSourceID="ds1"
            OnDataBound="gv1_DataBound" OnRowDeleting="gv1_RowDeleting" OnSelectedIndexChanged="gv1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="操作" ControlStyle-CssClass="inline">
                    <ItemTemplate>
                        <asp:LinkButton ID="Select" runat="server" CommandName="Select" Text="编辑" />
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
            <dt>场所编号</dt>
            <dd><asp:TextBox ID="e_csid" runat="server" Enabled="false" /></dd>
        </dl>
        <dl>
            <dt>场所名称</dt>
            <dd><asp:TextBox ID="e_csmc" runat="server" /></dd>
        </dl>
        <dl>
            <dt>值班员</dt>
            <dd><asp:TextBox ID="e_zby" runat="server" /></dd>
        </dl>
        <dl>
            <dt>联系电话</dt>
            <dd><asp:TextBox ID="e_zbydh" runat="server" /></dd>
        </dl>
        <dl>
            <dt>预约自动审核</dt>
            <dd class="checkboxlist"><asp:CheckBox ID="e_autosh" runat="server" Text="勾选保存表示预约自动审核" /></dd>
        </dl>
        <dl>
            <dt>禁止预约设定</dt>
            <dd>
                <div>勾选保存表示该日期 “闭馆”</div>
                <asp:CheckBoxList ID="e_times" runat="server" />
            </dd>
        </dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd>
                <asp:Button ID="e_submit" runat="server" Text="保存信息" CssClass="submit" OnClick="e_submit_Click" ValidationGroup="e" /></dd>
        </dl>
    </div>
</asp:Content>

