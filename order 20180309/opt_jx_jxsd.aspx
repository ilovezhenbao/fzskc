<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_jx_jxsd, EswisOrderByBeaming" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_r_expand" runat="Server">
    <asp:Label ID="msg_panel" runat="server" CssClass="msgstr" />
    <div class="linkpanel">
        <asp:LinkButton ID="add" runat="server" Text="新增学期" OnClick="add_Click" />
        <asp:LinkButton ID="pn_back" runat="server" Text="返回列表" OnClick="pn_back_Click" />
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_right" runat="Server">
    <div id="right_list" runat="server" class="right_content">
        <asp:GridView ID="gv1" runat="server" DataSourceID="ds1"
            OnDataBound="gv1_DataBound" OnRowDeleting="gv1_RowDeleting"
            OnSelectedIndexChanged="gv1_SelectedIndexChanged" EnableModelValidation="True">
            <Columns>
                <asp:TemplateField HeaderText="操作" ControlStyle-CssClass="inline">
                    <ItemTemplate>
                        <asp:LinkButton ID="Edit" runat="server" CommandName="Select" Text="编辑" />
                        <asp:LinkButton ID="Delete" runat="server" CommandName="Delete" Text="删除" OnClientClick="return confirm('您确定要删除这一项吗？该操作不可恢复');" />
                    </ItemTemplate>
                </asp:TemplateField> 
                <asp:BoundField HeaderText="编号" DataField="code" />
                <asp:BoundField HeaderText="学期名称" DataField="name" />
                <asp:CheckBoxField HeaderText="活动学期" DataField="iskkxq" />
                <asp:BoundField HeaderText="教学周数" DataField="weeks" />
                <asp:BoundField HeaderText="学期开始时间" DataField="xqstr" DataFormatString="{0:yyyy-MM-dd}" />
                <asp:BoundField HeaderText="学期结束时间" DataField="xqend" DataFormatString="{0:yyyy-MM-dd}" />
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
                <asp:Label ID="e_msg" runat="server" CssClass="msgstr" /></dd>
        </dl>
        <dl>
            <dt>学期代码</dt>
            <dd>
                <asp:TextBox ID="e_xqdm" runat="server" />
                <span>如:201709</span>
                <asp:HiddenField ID="he_xqdm" runat="server" Visible="false" />
            </dd>
        </dl>
        <dl>
            <dt>学期名称</dt>
            <dd>
                <asp:TextBox ID="e_xqmc" runat="server" />
                <span>如:2017-2018(1)</span></dd>
        </dl>
        <dl>
            <dt>当前开课学期</dt>
            <dd>
                <asp:CheckBox ID="e_iskkxq" runat="server" Text="勾选为是" CssClass="checkbox" /></dd>
        </dl>
        <dl>
            <dt>教学周数</dt>
            <dd>
                <asp:TextBox ID="e_weeks" runat="server" Text="20" />
                <span>请填写整数</span></dd>
        </dl>
        <dl>
            <dt>学期开始时间</dt>
            <dd>
                <asp:TextBox ID="e_xksj_str" runat="server" />
                <span>时间格式：<%=DateTime.Now.ToShortDateString() %></span></dd>
        </dl>
        <dl>
            <dt>学期结束时间</dt>
            <dd>
                <asp:TextBox ID="e_xksj_end" runat="server" /></dd>
        </dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd>
                <asp:Button ID="e_submit" runat="server" Text="保存信息" CssClass="submit" OnClick="e_submit_Click" ValidationGroup="e" /></dd>
        </dl>
    </div>
</asp:Content>

