<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_jx_zydr, EswisOrderByBeaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_r_expand" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cph_right" Runat="Server">
    <div id="right_adduser" runat="server" class="right_form">
        <dl>
            <dt>信息提示</dt>
            <dd>
                <asp:Label ID="sysmsg" runat="server" CssClass="msgstr" /></dd>
        </dl>
        <dl>
            <dt>数据文件</dt>
            <dd><asp:FileUpload ID="e_file" runat="server" /> 
                <a href="templates/tp_zydr.xls">模板下载</a>
            </dd>
        </dl>
        <dl>
            <dt>数据列表</dt>
            <dd>
                <span id="gvhead" runat="server"></span>
                <asp:TextBox ID="add_users" runat="server" TextMode="MultiLine" ValidationGroup="add" />
                <br />
                数据格式：<b>控制器IP,资产编号,资源名称,资源类型,资源所在地（可略）</b>
                <br />
                每行一个账号（可按上述数据列直接从Excel文件复制）
            </dd>
        </dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd>
                <asp:Button ID="upload" runat="server" Text="数据预览" CssClass="submit" OnClick="upload_Click" ValidationGroup="add" />
                <asp:Button ID="addusers" runat="server" Text="添加资源" Visible="false" CssClass="submit" OnClick="addusers_Click" ValidationGroup="add" /></dd>
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

