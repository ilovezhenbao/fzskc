<%@ WebHandler Language="C#" Class="CheckSigned" %>

using System;
using System.Web;
using System.Data;

public class CheckSigned : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        string ip = context.Request.QueryString["ip"];
        string key = context.Request.QueryString["key"];

        app_order od = new app_order();
        context.Response.ContentType = "text/plain";
        context.Response.Write(od.CheckSigned(ip, key));
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}