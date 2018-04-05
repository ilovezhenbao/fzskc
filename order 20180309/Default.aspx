<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="_Default, EswisOrderByBeaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="css/nologin_style.css" />
    <link rel="stylesheet" href="css/banner.css" type="text/css" />
    <script type="text/javascript" src="js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_default" runat="Server">
    <div class="banner">

<div id="slideBox" class="slideBox">
    <div class="hd">
        <ul><li>1</li><li>2</li><li>3</li><li>4</li></ul>
    </div>
    <div class="bd">
        <ul>
            <li><img src="images/1.jpg" /></li>
            <li><img src="images/2.jpg" /></li>
            <li><img src="images/3.jpg" /></li>
            <li><img src="images/4.jpg" /></li>
        </ul>
    </div>

    <!-- 下面是前/后按钮代码，如果不需要删除即可 -->
    <a class="prev" href="javascript:void(0)"></a>
    <a class="next" href="javascript:void(0)"></a>

</div>

<script type="text/javascript">
    jQuery(".slideBox").slide({mainCell:".bd ul",autoPlay:true});
</script>



    </div>
    <div class="notice">
        <h2>校园资讯<a href="#" style="display: none;">[更多]</a></h2>
        <ul id="post" runat="server" class="notices">
            <li><a href="#">test公告</a><span>[2017/11/14]</span></li>
            <li><a href="#">test公告</a><span>[2017/11/13]</span></li>
            <li><a href="#">test公告</a><span>[2017/11/12]</span></li>
        </ul>
    </div>
    <div class="process">
        <h2>预约流程<a href="#" style="display: none;">[更多]</a></h2>
        <img src="images/process.jpg" alt="预约流程" />
    </div>
</asp:Content>
