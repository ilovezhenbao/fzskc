<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="opt_xxfb, EswisOrderByBeaming" validaterequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_left" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="cph_r_expand">
    <div class="r_panel_left xxfbContent">
        栏目 <asp:DropDownList ID="pn_flm" runat="server" AutoPostBack="true" OnSelectedIndexChanged="pn_flm_SelectedIndexChanged" />
        <asp:DropDownList ID="pn_lm" runat="server" AutoPostBack="true" OnSelectedIndexChanged="pn_sch_Click" />
        标题 <asp:TextBox ID="keyword" runat="server" />
        <asp:Button ID="pn_sch" runat="server" Text="查找" onclick="pn_sch_Click" />
        <asp:Label ID="msg_panel" runat="server" CssClass="msgstr" />
    </div>
    <div class="linkpanel">
        <asp:LinkButton ID="Insert" runat="server" Text="新的发布" OnClick="Insert_Click" />
        <asp:LinkButton ID="Back_Submit" runat="server" Text="返回列表" onclick="Back_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_right" Runat="Server">
    <asp:SqlDataSource ID="ds" runat="server" />
    <asp:SqlDataSource ID="ds2" runat="server" />

    <div id="right_xxfb" runat="server" class="right_content">
        <asp:GridView ID="gv" runat="server" OnRowEditing="gv1_RowEditing" OnRowDeleting="gv1_RowDeleting" OnDataBound="gv_DataBound" >
            <Columns>
                <asp:TemplateField HeaderText="操作" ControlStyle-CssClass="inline">
                    <ItemTemplate>
                        <asp:LinkButton ID="Edit" runat="server" CommandName="Edit" Text="编辑" />
                        <asp:LinkButton ID="Delete" runat="server" CommandName="Delete" Text="删除" OnClientClick="return confirm('您确定要删除这一项吗？该操作不可恢复');" />
                    </ItemTemplate>
                </asp:TemplateField> 
            </Columns>
        </asp:GridView>
        <div class="r_bottom">共找到 <asp:Label ID="recordcount" runat="server" Text="0" /> 条记录</div>
    </div>


    <div id="right_eidt" runat="server" class="right_form right_post" visible="false">
        <dl><dt>栏目</dt>
            <dd><asp:DropDownList ID="e_flm" runat="server" AutoPostBack="true" OnSelectedIndexChanged="e_flm_SelectedIndexChanged"  /><br />
                <asp:DropDownList ID="e_lm" runat="server" />
                <asp:Label ID="msg_postinf" runat="server" CssClass="msgstr" />
                <asp:HiddenField ID="e_id" runat="server" Visible="false" /></dd></dl>
        <dl><dt>标题</dt>
            <dd><asp:TextBox ID="e_title" runat="server" MaxLength="50" /></dd></dl>
        <dl style="display:none;"><dt>附件</dt>
            <dd><asp:FileUpload ID="e_annex" runat="server" />
                <asp:LinkButton ID="fileup" runat="server" Text="上传" OnClick="sm_save_Click" />
                <asp:LinkButton ID="fileclear" runat="server" Text="清除附件" onclick="fileclear_Click" />
                <asp:Label ID="msg_fileup" runat="server" CssClass="msgstr" />
                <asp:Label ID="e_annexinf" runat="server" />
                <asp:HiddenField ID="e_annexfile" runat="server" Visible="false" /></dd></dl>
        <dl><dt>内容</dt>
            <dd><asp:TextBox ID="e_contents" runat="server" TextMode="MultiLine" /></dd></dl>
        <dl><dt>&nbsp;</dt>
            <dd><asp:Button ID="sm_save" runat="server" CssClass="submit" Text="保存提交" OnClick="sm_save_Click" /></dd></dl>
    </div>
</asp:Content>



