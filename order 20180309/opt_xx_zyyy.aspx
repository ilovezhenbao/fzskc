<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_xx_zyyy, EswisOrderByBeaming" %>

<asp:Content ID="con" ContentPlaceHolderID="head" runat="server">
    <style>
        .right_form * {
            /*border: 1px solid;*/
        }
        div.zylist {
            padding: 15px;
            display: block;
            clear: both;
        }

        .zylist dl {
            display: inline-block;
        }

        .zylist dt {
            display: inline-block;
            float: left;
        }

        .zylist dd {
            display: inline-block;
            float: left;
        }

        .zylist .checkboxlist {
            width: 100px;
        }

        .zylist tr {
            line-height: 18px;
        }
        input[type='checkbox']+label{
            padding:7px 15px;
        }
        input[type='checkbox']:checked + label {
            background: #36B6BB;
            color: #fff;
            border-color: #F0F3F5;
            border-radius: 4px;
        }
        input[type='checkbox']:disabled + label {
            background: #999;
            color: #F0F3F5;
        }
        .right_form table{
            margin:0px;
        }
        .yycode{
            font-size:30px;
            color:red;
            line-height:40px;
            padding-left:20px;
        }
        /*.zylist *{ border:1px solid;}*/
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_r_expand" runat="Server">
    管理单位：<asp:DropDownList ID="pn_gldw" runat="server" OnSelectedIndexChanged="databind" AutoPostBack="true" />
    预约日期：<asp:DropDownList ID="pn_yydate" runat="server" OnSelectedIndexChanged="databind" AutoPostBack="true" />
    <asp:Label ID="msg_panel" runat="server" CssClass="msgstr" />

    <div class="linkpanel button1">
        <asp:LinkButton ID="pn_showmyorder" runat="server" Text="我的预约" OnClick="Pn_Showmyorder_Click" />
        <asp:LinkButton ID="pn_back" runat="server" Text="返回列表" OnClick="pn_back_Click" />
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_right" runat="Server">

    <div id="right_list" runat="server" class="right_content table1">


        <div id="showdetails" runat="server" class="zylist">
            <dl>
                <dt>
                    <img width="100" height="100" alt="设备图标" src="images\computer.jpg" /></dt>
                <dd>设备名</dd>
                <dd>
                    <table id="r1col" class="checkboxlist" border="0">
                        <tr>
                            <td>
                                <input id="r1col1" type="checkbox" name="r1col1" /><label for="r1col1">上午</label></td>
                        </tr>
                        <tr>
                            <td>
                                <input id="r1col2" type="checkbox" name="r1col2" /><label for="r1col2">下午</label></td>
                        </tr>
                        <tr>
                            <td>
                                <input id="r1col3" type="checkbox" name="r1col3" /><label for="r1col3">晚上</label></td>
                        </tr>
                    </table>
                </dd>
            </dl>
        </div>

        <asp:GridView ID="gv1" runat="server" DataSourceID="ds1"
            OnDataBound="gv1_DataBound"
            OnSelectedIndexChanged="gv1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="操作" ControlStyle-CssClass="inline">
                    <ItemTemplate>
                        <asp:LinkButton ID="Edit" runat="server" CommandName="Select" Text="预约" />
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
        <h3>资源预约</h3>
        <dl class="msg">
            <dt>操作提示</dt>
            <dd>
                <asp:Label ID="e_msg" runat="server" CssClass="msgstr" />
                <asp:HiddenField ID="he_id" runat="server" Visible="false" />
            </dd>
        </dl>
        <dl>
            <dt>资源编号</dt>
            <dd>
                <asp:TextBox ID="e_bh" runat="server" Enabled="false" />
            </dd>
        </dl>
        <dl>
            <dt>资源名称</dt>
            <dd>
                <asp:TextBox ID="e_mc" runat="server" Enabled="false" /></dd>
        </dl>
        <dl>
            <dt>资源所在地</dt>
            <dd>
                <asp:TextBox ID="e_szd" runat="server" Enabled="false" /></dd>
        </dl>
        <dl>
            <dt>可预约时段</dt>
            <dd>
                <asp:CheckBoxList ID="e_yycols" runat="server" CssClass="checkboxlist">
                    <asp:ListItem Value="col1" Text="上午" />
                    <asp:ListItem Value="col2" Text="下午" />
                    <asp:ListItem Value="col3" Text="晚上" />
                </asp:CheckBoxList>
            </dd>
        </dl>
        <dl>
            <dt>预约(签到)码</dt>
            <dd><asp:Label ID="e_yycode" runat="server" Text="未分配"  CssClass="yycode"/></dd>
        </dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd>
                <asp:Button ID="e_submit" runat="server" Text="保存信息" CssClass="submit" OnClick="e_submit_Click" ValidationGroup="e" /></dd>
        </dl>
    </div>
</asp:Content>
