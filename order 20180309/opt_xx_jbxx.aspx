<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_xx_jbxx, EswisOrderByBeaming" %>

<asp:Content ID="Content6" ContentPlaceHolderID="cph_right" runat="Server">
    <div id="right_edit" runat="server" class="right_form">
        <dl>
            <dt>信息提示</dt>
            <dd>
                <asp:Label ID="e_message" runat="server" CssClass="msgstr" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="SingleParagraph" CssClass="msgstr"
                    HeaderText="请检查带*项目及数据格式提示（汇总）：" ValidationGroup="e" />
            </dd>
        </dl>

        


        <div class="jbxx_left">
         <dl>
            <dt>姓名</dt>
            <dd>
                <asp:TextBox TextMode="SingleLine" ID="xm" runat="server" MaxLength="32" />
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_xm" runat="server" ControlToValidate="xm" Display="Dynamic" CssClass="msgstr"
                    ErrorMessage="必须输入姓名" ValidationGroup="e" />
            </dd>
         </dl>

        <dl>
            <dt>民族</dt>
            <dd>
                <asp:DropDownList ID="mz" runat="server" />
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_mz" runat="server" ControlToValidate="mz" Display="Dynamic" CssClass="msgstr"
                    ErrorMessage="必须选择民族" ValidationGroup="e" /></dd>
        </dl>

          <dl>
            <dt>身份证件类型</dt>
            <dd>
                <asp:DropDownList ID="zjlx" runat="server" />
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="e" Display="Dynamic" CssClass="msgstr"
                    ControlToValidate="zjlx" ErrorMessage="请选择类型" />
            </dd>
        </dl>

          <dl>
            <dt>出生日期</dt>
            <dd>
                <asp:TextBox TextMode="SingleLine" ID="csrq" runat="server" MaxLength="16" />
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_csrq" runat="server" ControlToValidate="csrq" Display="Dynamic" CssClass="msgstr"
                    ErrorMessage="必须输入出生日期" ValidationGroup="e" />
                <asp:CompareValidator ID="cv_csrq" runat="server" ControlToValidate="csrq" Display="Dynamic" CssClass="msgstr"
                    Operator="DataTypeCheck" Type="Date" ErrorMessage="请输入日期，如：2010-10-1" ValidationGroup="e" /></dd>
        </dl>

         <dl>
            <dt>校区</dt>
            <dd>
                <asp:DropDownList ID="xq" runat="server" />
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_xq" runat="server" ControlToValidate="xq" Display="Dynamic" CssClass="msgstr"
                    ErrorMessage="校区不能为空" ValidationGroup="e" /></dd>
        </dl>

        <dl>
            <dt>电子邮箱</dt>
            <dd>
                <asp:TextBox ID="email" runat="server" />
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_ml1" runat="server" ControlToValidate="email" Display="Dynamic" CssClass="msgstr"
                    ErrorMessage="邮箱用于重设密码，不能留空" ValidationGroup="e" />
                <asp:RegularExpressionValidator ID="rv_ml2" runat="server" ControlToValidate="email" Display="Dynamic" CssClass="msgstr"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ErrorMessage="邮箱格式有误" ValidationGroup="e" /></dd>
        </dl>

         <dl>
            <dt>集群短号</dt>
            <dd>
                <asp:TextBox ID="yddhs" runat="server" />
                <asp:RegularExpressionValidator ID="rv_dh" runat="server" ControlToValidate="yddhs" Display="Dynamic" CssClass="msgstr"
                    ValidationExpression="\d{4,8}"
                    ErrorMessage="请填写4-8位纯数字" ValidationGroup="e" /></dd>
        </dl>


         <dl>
            <dt>邮政编码</dt>
            <dd>
                <asp:TextBox ID="yzbm" runat="server" MaxLength="3" />
                <asp:RegularExpressionValidator ID="rv_yb" runat="server" ControlToValidate="yzbm" Display="Dynamic" CssClass="msgstr"
                    ValidationExpression="\d{6}"
                    ErrorMessage="邮编格式有误" ValidationGroup="e" /></dd>
        </dl>

        </div>

        <div class="jbxx_right">

        <dl>
            <dt>性别</dt>
            <dd>
                <asp:DropDownList ID="xb" runat="server">
                    <asp:ListItem Text="" Value="" />
                    <asp:ListItem Text="男" Value="男" />
                    <asp:ListItem Text="女" Value="女" />
                </asp:DropDownList>
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_xb" runat="server" ControlToValidate="xb" Display="Dynamic" CssClass="msgstr"
                    ErrorMessage="必须选择性别" ValidationGroup="e" /></dd>
        </dl>

        <dl>
            <dt>籍贯</dt>
            <dd>
                <asp:TextBox TextMode="SingleLine" ID="jg" runat="server" MaxLength="32" placeholder="格式：**省**市" />
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_jg" runat="server" ControlToValidate="jg" Display="Dynamic" CssClass="msgstr"
                    ErrorMessage="必须填写籍贯信息" ValidationGroup="e" /></dd>
        </dl>

        <dl>
            <dt>身份证号</dt>
            <dd>
                <asp:TextBox TextMode="SingleLine" ID="sfzh" runat="server" MaxLength="18" />
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_sfzh" runat="server" ControlToValidate="sfzh" Display="Dynamic" CssClass="msgstr"
                    ErrorMessage="必须输入身份证号" ValidationGroup="e" /></dd>
        </dl>

        <dl>
            <dt>政治面貌</dt>
            <dd>
                <asp:DropDownList ID="zzmm" runat="server" />
                <asp:Label ID="msg_zzmm" runat="server" CssClass="msgstr" />
            </dd>
        </dl>


        <dl>
            <dt id="msg_ssdz" runat="server">宿舍地址</dt>
            <dd>
                <asp:TextBox ID="ss" runat="server" />
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_ss" runat="server" ControlToValidate="ss" Display="Dynamic" CssClass="msgstr"
                    ErrorMessage="不能留空" ValidationGroup="e" />
            </dd>
        </dl>

        <dl>
            <dt>移动电话</dt>
            <dd>
                <asp:TextBox ID="yddh" runat="server" />
                <span class="msgstr">*</span>
                <asp:RequiredFieldValidator ID="rv_sj1" runat="server" ControlToValidate="yddh" Display="Dynamic" CssClass="msgstr"
                    ErrorMessage="用于紧急联系，不能留空" ValidationGroup="e" />
                <asp:RegularExpressionValidator ID="rv_sj2" ControlToValidate="yddh" runat="server" Display="Dynamic" CssClass="msgstr"
                    ValidationExpression="\d{11,12}"
                    ErrorMessage="请填写手机号码" ValidationGroup="e" /></dd>
        </dl>

        <dl>
            <dt>QQ号码</dt>
            <dd>
                <asp:TextBox ID="qq" runat="server" />
                <asp:RegularExpressionValidator ID="rv_qq" runat="server" ControlToValidate="qq" Display="Dynamic" CssClass="msgstr"
                    ValidationExpression="\d{0,16}"
                    ErrorMessage="请填写纯数字" ValidationGroup="e" /></dd>
        </dl>
        </div>





       
        <div class="jbxx_bottom">
        <dl>
            <dt>邮寄地址</dt>
            <dd>
                <asp:TextBox ID="yjdz" runat="server" Rows="2" TextMode="MultiLine" />
                <asp:RegularExpressionValidator ID="rv_yjdz" runat="server" ControlToValidate="yjdz" Display="Dynamic" CssClass="msgstr"
                    ValidationExpression=".{0,100}"
                    ErrorMessage="字符超限(100Max)" ValidationGroup="e" /></dd>
        </dl>

        <dl id="picdiv" runat="server">
            <dt>头像照片</dt>
            <dd>
                <asp:FileUpload ID="picupload" runat="server" /><br />
                <span>该照片将在正式表格中出现，请使用标准免冠证件照<br />
                    （规格：*.jpg，120*160像素，小于30K）</span><br />
                <asp:Label ID="picmsg" runat="server" CssClass="msgstr" />
            </dd>
        </dl>

        <dl>
            <dt>&nbsp;</dt>
            <dd>
                <asp:Button ID="usinf_submit" Text="提交保存" runat="server" CssClass="submit"
                    OnClick="clk_save_Click" ValidationGroup="e" /></dd>
        </dl>


      </div>

    </div>
</asp:Content>

