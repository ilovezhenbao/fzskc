<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="ShowContent, EswisOrderByBeaming" %>

<asp:Content ID="con" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/post.css"/>
    <style>
        h1.posts_title{
            line-height:50px;
        }
        h2.posts_vtitle{
            font-size:14px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_default" runat="Server">
    <div id="M_right" runat="server" class="notice" style="margin:40px;margin-bottom:200px;">
        <div id="right_show_list" runat="server" class="list_li"></div>
        <div id="right_show_contents" runat="server" class="list_main"></div>
    </div>
    <div class="clean clear"></div>
</asp:Content>

