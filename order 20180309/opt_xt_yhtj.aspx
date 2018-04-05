<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_xt_yhtj, EswisOrderByBeaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_left" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_r_expand" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_right" runat="Server">
    <div id="right_adduser" runat="server" class="right_form">
        <dl>
            <dt>信息提示</dt>
            <dd>
                <asp:Label ID="sysmsg" runat="server" CssClass="msgstr" /></dd>
        </dl>
        <dl>
            <dt>用户角色</dt>
            <dd>
                <asp:DropDownList ID="add_roles" runat="server" ValidationGroup="add" />
                <asp:RequiredFieldValidator ID="rv_js" runat="server" ControlToValidate="add_roles" ErrorMessage="必须选择用户角色" ValidationGroup="add" /></dd>
        </dl>
        <dl>
            <dt>所在单位</dt>
            <dd>
                <asp:DropDownList ID="add_dw" runat="server" ValidationGroup="add" />
                <asp:RequiredFieldValidator ID="rv_dw" runat="server" ControlToValidate="add_dw" ErrorMessage="必须选择用户所在单位" ValidationGroup="add" /></dd>
        </dl>
        <dl>
            <dt>数据文件</dt>
            <dd><asp:FileUpload ID="e_file" runat="server" /> 
                <a href="templates/tp_yhtj.xls">模板下载</a>
            </dd>
        </dl>
        <dl>
            <dt>数据列表</dt>
            <dd>
                <span id="gvhead" runat="server"></span>
                <asp:TextBox ID="add_users" runat="server" TextMode="MultiLine" ValidationGroup="add" />
                <br />
                数据格式：<b>用户编号（学号/工号）,初始密码,姓名,性别</b>
                <br />
                每行一个账号（可按上述数据列直接从Excel文件复制）
            </dd>
        </dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd>
                <asp:Button ID="upload" runat="server" Text="数据预览" CssClass="submit" OnClick="upload_Click" ValidationGroup="add" />
                <asp:Button ID="addusers" runat="server" Text="添加用户" Visible="false" CssClass="submit" OnClick="addusers_Click" ValidationGroup="add" /></dd>
        </dl>

        <div id="add_list" runat="server" class="right_content" visible="false">
            <asp:GridView ID="gv2" runat="server" />
            <asp:SqlDataSource ID="ds2" runat="server" />
            <div class="r_bottom">
                共找到
                <asp:Label ID="rc2" runat="server" Text="0" />
                条记录
            </div>
        </div>
    </div>
</asp:Content>

