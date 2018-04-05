<%@ page language="C#" masterpagefile="~/MasterPage.master" enableeventvalidation="false" autoeventwireup="true" inherits="opt_xscx, EswisOrderByBeaming" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_r_expand" runat="Server">
    <div>
        单位
        <asp:DropDownList ID="sc_yx" runat="server" AutoPostBack="true" />
        姓名
        <asp:TextBox ID="sc_value" runat="server" />
        <asp:Button ID="sc_submit" Text="查找" runat="server" CssClass="submit" />
        <asp:Label ID="sysmsg" runat="server" CssClass="msgstr" />
    </div>
    <div class="linkpanel">
        <asp:LinkButton ID="export" runat="server" Text="导出结果" OnClick="export_Click" />
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_right" runat="Server">
    <div id="stulist" runat="server" class="stulist" visible="false"></div>
    <div id="right_list" runat="server" class="right_content">
        <asp:GridView ID="gv1" runat="server" OnSelectedIndexChanging="RowSelect" DataSourceID="ds1" OnDataBound="gv1_DataBound">
            <Columns>
                <asp:HyperLinkField HeaderText="操作" Text="详情"
                    DataNavigateUrlFields="编号,访问码"
                    DataNavigateUrlFormatString="~/opt_xx_xxhz.aspx?fid=7&uid={0}&key={1}"
                    NavigateUrl="~/Default.aspx" Target="_blank" />
                <asp:BoundField HeaderText="院系" DataField="院系" />
                <asp:BoundField HeaderText="学号" DataField="学号" />
                <asp:BoundField HeaderText="姓名" DataField="姓名" />
                <asp:BoundField HeaderText="性别" DataField="性别" />
                <asp:BoundField HeaderText="民族" DataField="民族" />
                <asp:BoundField HeaderText="联系方式" DataField="联系方式" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ds1" runat="server" />
        <div class="r_bottom">共找到
            <asp:Label ID="recordcount" runat="server" Text="0" />
            条记录</div>
    </div>
</asp:Content>

