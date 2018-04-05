<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_xxhz, EswisOrderByBeaming" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_left" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_right" runat="Server">
    <div id="right_list" runat="server" class="right_content">

        <table id="table_userinf_stu" runat="server" class="right_showinf">
            <tr>
                <th style="width:20%;">学号</th>
                <td style="width:20%;">
                    <asp:Label ID="inf_xh" runat="server" /></td>
                <th style="width:20%;">姓名</th>
                <td style="width:20%;">
                    <asp:Label ID="inf_xm" runat="server" /></td>
                <th rowspan="4" style="width:20%;"><a href="<% = userpicurl %>" target="_blank">
                    <img alt="用户头像" src="<% = userpicurl %>" width="120" height="160" /></a></th>
            </tr>
            <tr>
                <th>性别</th>
                <td>
                    <asp:Label ID="inf_xb" runat="server" /></td>
                <th>民族</th>
                <td>
                    <asp:Label ID="inf_mz" runat="server" /></td>
            </tr>
            <tr>
                <th>出生日期</th>
                <td>
                    <asp:Label ID="inf_csrq" runat="server" /></td>
                <th>身份证号</th>
                <td>
                    <asp:Label ID="inf_sfzh" runat="server" /></td>
            </tr>
            <tr>
                <th>政治面貌</th>
                <td>
                    <asp:Label ID="inf_zzmm" runat="server" /></td>
                <th>籍贯</th>
                <td>
                    <asp:Label ID="inf_jg" runat="server" /></td>
            </tr>
            <tr>
                <th>培养层次</th>
                <td>
                    <asp:Label ID="inf_cc" runat="server" /></td>
                <th>单位</th>
                <td colspan="2">
                    <asp:Label ID="inf_dw" runat="server" /></td>
            </tr>
            <tr>
                <th>宿舍</th>
                <td>
                    <asp:Label ID="inf_ss" runat="server" /></td>
                <th>联系电话</th>
                <td colspan="2">
                    <asp:Label ID="inf_lxfs" runat="server" /></td>
            </tr>
            <tr>
                <th>QQ号码</th>
                <td>
                    <asp:Label ID="inf_qq" runat="server" /></td>
                <th>电子邮箱</th>
                <td colspan="2">
                    <asp:Label ID="inf_email" runat="server" /></td>
            </tr>
            <tr>
                <th>邮政编码</th>
                <td>
                    <asp:Label ID="inf_yzbm" runat="server" /></td>
                <th>邮寄地址</th>
                <td colspan="2">
                    <asp:Label ID="inf_yjdz" runat="server" /></td>
            </tr>
            <tr>
                <th>班主任</th>
                <td>
                    <asp:Label ID="inf_bzr" runat="server" /></td>
                <th>班主任电话</th>
                <td colspan="2">
                    <asp:Label ID="inf_bzrdh" runat="server" /></td>
            </tr>
        </table>

    </div>

</asp:Content>

