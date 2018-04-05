<%@ page language="C#" autoeventwireup="true" inherits="ShowImages, EswisOrderByBeaming" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Fx 高校资源预约管理系统</title>
    <meta http-equiv="keywords" content="资源预约,学生工作,综合服务,服务平台,信息系统,管理系统" />
    <meta http-equiv="author" content="华南师范大学,唐小煜,beaming@qq.com" />
	<style>
		body{
			background-position: center;
			transition: background 2s;
		}
	</style>
</head>
<body>
    <a href ="login.aspx" style="display:block; width:100%;height:1000px;"> </a>
	<script>
		window.onload=function(){
			var body=document.body;
			var index=1;
			var changeBg=function(){
				body.style.background='url(./images/'+index+'.jpg) no-repeat center center fixed';
				body.style.backgroundSize='cover';
				if(index<5){
					index++
				}else{
					index=1
				}
			};
			changeBg();
			window.setInterval(changeBg,5000)
		}
	</script>
</body>
</html>
