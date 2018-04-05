<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_xx_myinfor, EswisOrderByBeaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="css/orderpage_style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_default" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_left" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_r_expand" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cph_right" runat="Server">
    <div class="myprofile" style="height:auto;">
        <h2>我的概况</h2>
        <div class="myprofile_left">
            <asp:Label ID="xx_usn" runat="server" /><br />
            <asp:Label ID="xx_xm" runat="server" /><br />
            <asp:Label ID="xx_tel" runat="server" />
        </div>

        <div class="myprofile_right">
            <asp:Label ID="xx_email" runat="server" /><br />
            <asp:Label ID="xx_dw" runat="server" />
        </div>

        <div style="clear:both;"></div>
        <br />

    </div>

    <br />
    <div class="myprofile" style="height:auto;">
        <h2>我的预约</h2>
        <div id="right_list" runat="server" class="right_content table1">
            <asp:GridView ID="gv1" runat="server" DataSourceID="ds1"
                OnDataBound="gv1_DataBound" OnRowDeleting="gv1_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="操作" ControlStyle-CssClass="inline">
                        <ItemTemplate>
                            <asp:LinkButton ID="Delete" runat="server" CommandName="Delete" Text="取消预约" OnClientClick="return confirm('您确定要删除这一项吗？该操作不可恢复');" />
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
        <br />
        </div>
    </div>

    <br />
    <div class="notice" style="height:auto;">
        <h2>校园资讯</h2>
        <ul id="post" runat="server" class="notices">
            <li><a href="#">test公告</a><span>[2017/11/14]</span></li>
            <li><a href="#">test公告</a><span>[2017/11/13]</span></li>
            <li><a href="#">test公告</a><span>[2017/11/12]</span></li>
        </ul>
        <br />
    </div>


</asp:Content>

