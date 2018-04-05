<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_xt_gngl, EswisOrderByBeaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_left" runat="Server">
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cph_r_expand">
    请选择一级栏目：<asp:DropDownList ID="pn_lm" runat="server" AutoPostBack="True" OnSelectedIndexChanged="pn_lm_SelectedIndexChanged" />
    <asp:Label ID="msg_panel" runat="server" CssClass="msgstr" />
    <div class="linkpanel">
        <asp:LinkButton ID="add" runat="server" Text="新增功能" OnClick="add_Click" />
        <asp:LinkButton ID="find" runat="server" Text="检查功能页" OnClick="find_Click" />
    </div>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="cph_right" runat="Server">
    <div id="right_list" visible="True" runat="server" class="right_content">
        <asp:GridView ID="gv1" runat="server" DataSourceID="ds1" OnRowEditing="gv1_RowEditing" OnRowCommand="gv1_RowCommand" OnRowDeleting="gv1_RowDeleting" OnDataBound="gv1_DataBound">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="Edit" runat="server" CommandName="Edit" Text="编辑" />
                        <asp:LinkButton ID="Delete" runat="server" CommandName="Delete" Text="删除" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:ButtonField runat="server" Text="↑升" HeaderText="上移" CommandName="Up" />
                <asp:ButtonField runat="server" Text="↓降" HeaderText="下移" CommandName="Down" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ds1" runat="server" />

        <div class="r_bottom">
            <div>共找到
                <asp:Label ID="recordcount" runat="server" Text="0" />
                条记录</div>
        </div>
    </div>

    <div id="right_edit" visible="false" runat="server" class="right_form">
        <div class="r_panel_nav">
                <asp:LinkButton ID="pn_pre" runat="server" Text="上一项" OnClick="pn_pre_Click" />
                <asp:LinkButton ID="pn_next" runat="server" Text="下一项" OnClick="pn_next_Click" />
            <asp:LinkButton ID="Back_Submit" runat="server" Text="返回列表" OnClick="Back_Click" />
        </div>

        <dl>
            <dt>栏目名称</dt>
            <dd>
                <asp:TextBox ID="lmtitle" runat="server" />
                <asp:HiddenField ID="lmid" runat="server" Visible="false" />
                <asp:Label ID="sysmsg" runat="server" CssClass="msgstr" /></dd>
        </dl>
        <dl style="display:none;">
            <dt>栏目简介</dt>
            <dd>
                <asp:TextBox ID="lmbody" runat="server" TextMode="MultiLine" Rows="3" /></dd>
        </dl>
        <dl>
            <dt>父级栏目</dt>
            <dd>
                <asp:DropDownList ID="lmfid" runat="server" /></dd>
        </dl>
        <dl>
            <dt>栏目序号</dt>
            <dd>
                <asp:TextBox ID="lmtaxis" runat="server" /></dd>
        </dl>
        <dl>
            <dt>操作页面</dt>
            <dd>
                <asp:TextBox ID="lmlink" runat="server" /></dd>
        </dl>
        <dl style="display:none;">
            <dt>特权用户</dt>
            <dd>
                <asp:TextBox ID="lmspuser" runat="server" /></dd>
        </dl>
        <dl>
            <dt>角色列表</dt>
            <dd>
                <asp:CheckBoxList ID="lmroles" runat="server" CssClass="checkbox" /></dd>
        </dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd>
                <asp:Button ID="usinf_submit" Text="提交保存" runat="server" CssClass="submit" OnClick="clk_save_Click" /></dd>
        </dl>
    </div>
</asp:Content>

