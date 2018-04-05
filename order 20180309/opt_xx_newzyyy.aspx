<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_xx_newzyyy, EswisOrderByBeaming" %>

<asp:Content ID="msg" ContentPlaceHolderID="cph_default" runat="server">
        <div class="pWindow_bg"></div>
    <div id="right_edit" runat="server" visible="false" class="popup_window">
        <h3>资源预约<a><img src="images/close.png" /></a></h3>
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
            <dd class="special_dd">
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
            <dd>
                <asp:Label ID="e_yycode" runat="server" Text="未分配" CssClass="yycode" /></dd>
        </dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd>
                <asp:Button ID="e_submit" runat="server" Text="保存信息" CssClass="submit" OnClick="e_submit_Click" ValidationGroup="e" /></dd>
        </dl>
    </div>
</asp:Content>

<asp:Content ID="con" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .right_form input[type='checkbox']+label{
            padding:7px 15px;
            display:inline-block;
            width:110px;
            margin-top:0px;
            margin-bottom:0px;
        }
    </style>
    <link rel="stylesheet" href="css/zyyy.css" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_r_expand" runat="Server">
    <div class="content">
        预约时间:<select>
            <option value ="1">今天 2018/3/12</option>
            <option value ="2">明天 2018/3/13</option>
            <option value="3">后天 2018/3/14</option>
        </select>
        预约场所:<select>
            <option value ="1">[01]多媒体室</option>
            <option value ="2">[02]图书馆</option>
        </select>
    </div>
    <div id="right_exp" runat="server" visible="false">
        管理单位：<asp:DropDownList ID="pn_gldw" runat="server" OnSelectedIndexChanged="databind" AutoPostBack="false" />
        预约日期：<asp:DropDownList ID="pn_yydate" runat="server" OnSelectedIndexChanged="databind" AutoPostBack="false" />
        <asp:Label ID="msg_panel" runat="server" CssClass="msgstr" />
    </div>
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="cph_right" runat="Server">
    <asp:HiddenField ID="thetime" runat="server" Value="" Visible="true" />
    <asp:HiddenField ID="theplace" runat="server" Value="" Visible="true" />
    <h4><asp:Label ID="pn_msg" runat="server" Text="" /></h4>

    <div id="rightdiv_time" runat="server" visible="true" style="margin:0 auto;">
        <div class="time" id="seltime" runat="server">
            <dl>
                <dt>
                    <a href="#"></a>
                </dt>
                <dd>
                    <input id="1" type="checkbox" name="1" />
                    <label for="1">
                        <img width="100" height="100" alt="图标" src="images\time.png" />
                        <span>2017/12/16 今天上午</span>
                    </label>
                </dd>
            </dl>

            <dl>
                <dt>
                    <a href="#"></a>
                </dt>
                <dd>
                    <input id="2" type="checkbox" name="2" />
                    <label for="2">
                        <img width="100" height="100" alt="图标" src="images\time.png" />
                        <span>2017/12/16 今天下午</span>
                    </label>
                </dd>
            </dl>

            <dl>
                <dt>
                    <a href="#"></a>
                </dt>
                <dd>
                    <input id="3" type="checkbox" name="3" />
                    <label for="3">
                        <img width="100" height="100" alt="图标" src="images\time.png" />
                        <span>2017/12/16 今天晚上</span>
                    </label>
                </dd>
            </dl>

        </div>
    </div>

    <div id="rightdiv_room" runat="server" visible="false" style="margin:0 auto;">
        <div class="room" id="selroom" runat="server">
            <dl>
                <dt><a href="#"></a></dt>
                <dd>
                    <input id="10" type="checkbox" name="10" />
                    <label for="10">
                        <img width="100" height="100" alt="图标" src="images\room.png" />
                        <span>电子阅览室</span>
                    </label>

                </dd>
                <dd style="margin-top: 30px; margin-left: 150px">
                    <span>共有设备20台</span>
                    <span>其中10台已被预约</span>
                    <span>可预约设备数量10台</span>
                </dd>
            </dl>

            <dl>
                <dt><a href="#"></a></dt>
                <dd>
                    <input id="11" type="checkbox" name="11" />
                    <label for="11">
                        <img width="100" height="100" alt="图标" src="images\room.png" />
                        <span>学生活动室</span>
                    </label>
                </dd>
                <dd style="margin-top: 30px; margin-left: 150px">
                    <span>共有设备20台</span>
                    <span>其中10台已被预约</span>
                    <span>可预约设备数量10台</span>
                </dd>
            </dl>

            <dl>
                <dt><a href="#"></a></dt>
                <dd>
                    <input id="12" type="checkbox" name="12" />
                    <label for="12">
                        <img width="100" height="100" alt="图标" src="images\room.png" />
                        <span>会议报告厅</span>
                    </label>
                </dd>
                <dd style="margin-top: 30px; margin-left: 150px">
                    <span>共有设备20台</span>
                    <span>其中10台已被预约</span>
                    <span>可预约设备数量10台</span>
                </dd>
            </dl>

        </div>
    </div>

    <div id="right_list" runat="server" >

        <div id="showdetails" runat="server" class="computer" style="margin:0 auto;">

            <dl>
                <dt>
                    <a href="#"><img width="100" height="100" alt="图标" src="images\computer.png" /></a>
                </dt>
                <dd><a href="#">电脑01</a>
                </dd>
            </dl>

            <dl>
                <dt>
                    <a href="#"></a>
                </dt>
                <dd>
                    <input id="15" type="checkbox" name="15" />
                    <label for="15">
                        <img width="100" height="100" alt="图标" src="images\computer.png" />
                        <span>电脑02</span>
                    </label>
                </dd>
            </dl>

            <dl>
                <dt>
                    <a href="#"></a>
                </dt>
                <dd>
                    <input id="16" type="checkbox" name="16" />
                    <label for="16">
                        <img width="100" height="100" alt="图标" src="images\computer.png" />
                        <span>电脑03</span>
                    </label>
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
    </div>



</asp:Content>
