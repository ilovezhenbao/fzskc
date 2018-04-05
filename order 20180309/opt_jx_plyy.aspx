<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_jx_plyy, EswisOrderByBeaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        input[type='checkbox']+label{
            padding:7px 15px;
            display:inline-block;
            width:110px;
            margin-top:0px;
            margin-bottom:0px;
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
        .yycode{
            font-size:20px;
            color:red;
            line-height:30px;
            padding-left:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_default" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_left" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_r_expand" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cph_right" Runat="Server">
    <div id="right_edit" runat="server" class="right_form">
        <dl class="msg">
            <dt>操作提示</dt>
            <dd>
                <asp:Label ID="e_msg" runat="server" CssClass="msgstr" />
            </dd>
        </dl>
        <dl>
            <dt>预约日期</dt>
            <dd><asp:DropDownList ID="e_yydate" runat="server" /></dd>
        </dl>
        <dl>
            <dt>预约时段</dt>
            <dd>
                <asp:CheckBoxList ID="e_yycols" runat="server" CssClass="checkboxlist">
                    <asp:ListItem Value="col1" Text="第1节 (8:00-8:40)" />
                    <asp:ListItem Value="col2" Text="第2节 (8:50-9:30)" />
                    <asp:ListItem Value="col3" Text="第3节 (10:10-10:50)" />
                    <asp:ListItem Value="col4" Text="第4节 (11:05-11:45)" />
                    <asp:ListItem Value="col5" Text="第5节 (14:20-15:00)" />
                    <asp:ListItem Value="col6" Text="第6节 (15:10-15:50)" />
                    <asp:ListItem Value="col7" Text="第7节 (16:00-16:40)" />
                    <asp:ListItem Value="col8" Text="第8节 (16:50-17:30)" />
                </asp:CheckBoxList>
            </dd>
        </dl>
        <dl>
            <dt>预约(签到)码</dt>
            <dd><asp:Label ID="e_yycode" runat="server" Text="666666"  CssClass="yycode"/></dd>
        </dl>
        <dl>
            <dt>数据文件</dt>
            <dd><asp:FileUpload ID="e_file" runat="server" /> 
                <a href="templates/tp_plyy.xls">模板下载</a>
            </dd>
        </dl>
        <dl>
            <dt>数据列表</dt>
            <dd>
                <span id="gvhead" runat="server"></span>
                <asp:TextBox ID="add_users" runat="server" TextMode="MultiLine" ValidationGroup="add" />
                <br /><span>格式格式：<b>设备编号，学号；</b></span> 
                <br /><span>每行一组数据（可按上述数据列直接从Excel文件复制）</span>
            </dd>
        </dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd>
                <asp:Button ID="upload" runat="server" Text="数据预览" CssClass="submit" OnClick="upload_Click" ValidationGroup="add" />
                <asp:Button ID="addusers" runat="server" Text="添加资源" Visible="false" CssClass="submit" OnClick="addusers_Click" ValidationGroup="add" /></dd>
        </dl>

        <div id="add_list" runat="server" class="right_content" visible="false">
            <asp:GridView ID="gv2" runat="server" OnDataBound="gv2_DataBound" />
            <asp:SqlDataSource ID="ds2" runat="server" />
            <div class="r_bottom">
                共找到
                <asp:Label ID="rc2" runat="server" Text="0" />
                条记录
            </div>
        </div>
    </div>
</asp:Content>

