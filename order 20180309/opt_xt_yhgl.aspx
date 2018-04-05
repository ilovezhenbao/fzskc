<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_xt_yhgl, EswisOrderByBeaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_left" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_r_expand" runat="Server">
    类型
    <asp:DropDownList ID="list_userkind" runat="server" AutoPostBack="True" OnSelectedIndexChanged="list_userkind_SelectedIndexChanged" />
    角色
    <asp:DropDownList ID="list_role" runat="server" AutoPostBack="True" OnSelectedIndexChanged="databind" />
    单位
    <asp:DropDownList ID="yx" runat="server" AutoPostBack="true" OnSelectedIndexChanged="databind" />
    <br />
    姓名
    <asp:TextBox ID="sc_xm" runat="server" AutoPostBack="true" OnTextChanged="databind" />
    学号/工号
    <asp:TextBox ID="sc_bh" runat="server" AutoPostBack="true" OnTextChanged="databind" />
    <asp:Button ID="sc_submit" runat="server" Text="查找" OnClick="databind" />
    <asp:Label ID="msg_panel" runat="server" CssClass="msgstr" />

    <div class="linkpanel">
        <asp:LinkButton ID="Back_Submit" runat="server" Text="返回列表" OnClick="Back_Click" />
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_right" runat="Server">
    <div id="right_list" runat="server" class="right_content">
        <asp:GridView ID="gv1" runat="server" DataSourceID="ds1" OnRowEditing="gv1_RowEditing" OnRowDeleting="gv1_RowDeleting" OnDataBound="gv1_DataBound">
            <Columns>
                <asp:TemplateField HeaderText="操作" ControlStyle-CssClass="inline">
                    <ItemTemplate>
                        <asp:LinkButton ID="Edit" runat="server" CommandName="Edit" Text="编辑" />
                        <asp:LinkButton ID="Delete" runat="server" CommandName="Delete" Visible="false" Text="删除" OnClientClick="return confirm('您确定要删除这一项吗？该操作不可恢复！');" />
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
            <dt>信息提示</dt>
            <dd><asp:Label ID="msg_reg" runat="server" CssClass="msgstr" />
                <asp:HiddenField ID="usid" runat="server" Visible="false" /></dd>
        </dl>
        <dl>
            <dt>登录名</dt>
            <dd>
                <asp:TextBox TextMode="SingleLine" ID="e_usname" runat="server" MaxLength="16" /></dd>
        </dl>
        <dl>
            <dt>学号/工号</dt>
            <dd>
                <asp:TextBox TextMode="SingleLine" ID="e_yhbh" runat="server" />
            </dd>
        </dl>
        <dl>
            <dt>新密码</dt>
            <dd>
                <asp:TextBox TextMode="SingleLine" ID="e_newpsw" runat="server" /></dd>
        </dl>
        <dl>
            <dt>单位类型</dt>
            <dd>
                <asp:DropDownList ID="e_dwlx" runat="server" AutoPostBack="true" OnSelectedIndexChanged="e_dwlx_SelectedIndexChanged" /></dd>
        </dl>
        <dl>
            <dt>所属单位</dt>
            <dd>
                <asp:DropDownList ID="e_ssdw" runat="server" /></dd>
        </dl>
        <dl>
            <dt>用户角色</dt>
            <dd>
                <asp:DropDownList ID="e_role" runat="server" />
                <asp:RequiredFieldValidator ID="rv_role" runat="server" ControlToValidate="e_role" ErrorMessage="必须选择用户角色" /></dd>
        </dl>
        <dl runat="server" visible="false">
            <dt>用户角色</dt>
            <dd>
                <asp:CheckBoxList ID="e_roles" runat="server" CssClass="checkbox" /></dd>
        </dl>
        <dl>
            <dt>电子邮箱</dt>
            <dd>
                <asp:TextBox TextMode="SingleLine" ID="e_email" runat="server" />
                <asp:RegularExpressionValidator ID="chk_email" runat="server" CssClass="msgstr" ErrorMessage="请输入有效的电子邮箱"
                     ControlToValidate="e_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></dd>
        </dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd>
                <asp:Button ID="usinf_submit" Text="提交保存" runat="server" CssClass="submit" OnClick="clk_save_Click" /></dd>
        </dl>
    </div>
</asp:Content>

