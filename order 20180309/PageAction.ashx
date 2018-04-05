<%@ WebHandler Language="C#" Class="PageAction" %>

using System;
using System.Web;
using System.Web.SessionState;
using System.Data;

public class PageAction : IHttpHandler, IRequiresSessionState
{

    public void ProcessRequest(HttpContext context)
    {
        if (context.Request.QueryString["ip"] != null)
        {
            SqlDatacns dc = new SqlDatacns();
            dc.Exc("update [zy_list] set state='离线' where lastupdate<'" + DateTime.Now.AddMinutes(-30) + "'");
            dc.Exc("update [zy_list] set state='在线',lastupdate='" + DateTime.Now + "' where kzqip='" + context.Request.QueryString["ip"] + "'");
        }

        if (MySession.UserName != "")
        {
            string act = "", ip = "", key = "", cardno = "";
            if (context.Request.QueryString["act"] != null)
                act = context.Request.QueryString["act"];
            if (context.Request.QueryString["ip"] != null)
                ip = context.Request.QueryString["ip"];
            if (context.Request.QueryString["key"] != null)
                key = context.Request.QueryString["key"];
            if (context.Request.QueryString["cardno"] != null)
                cardno = context.Request.QueryString["cardno"];
            switch (act)
            {
                case "login":
                    context.Response.Redirect("login.aspx");
                    break;
                case "zyyy":
                    context.Response.Redirect("opt_xx_zyyy.aspx?key=" + MySession.Key);
                    break;
                case "sign":
                    context.Response.Redirect("signin.aspx?key=" + key + "&ip=" + ip);
                    break;
                case "bind":
                    context.Response.Redirect("opt_xx_cardbind.aspx?key=" + MySession.Key + "&cardno=" + cardno);
                    break;
                case "door":
                    context.Response.Redirect("ashxs/CheckDoor.ashx?key=" + key + "&ip=" + ip + "&cardno=" + cardno);
                    break;
                case "down":
                    context.Response.Redirect("ashxs/CheckDown.ashx?key=" + key + "&ip=" + ip);
                    break;
                default:
                    context.Response.Redirect("default.aspx");
                    break;
            }
        }
        else
        {
            context.Response.Redirect("login.aspx");
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}