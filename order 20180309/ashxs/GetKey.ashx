<%@ WebHandler Language="C#" Class="GetKey" %>

using System;
using System.Web;
using System.Web.SessionState;
using Newtonsoft.Json.Linq;

public class GetKey : IHttpHandler, IRequiresSessionState
{

    public void ProcessRequest(HttpContext context)
    {
        JObject result = new JObject();

        if (MySession.UserID > 0)
        {
            result.Add("State", true);
            result.Add("UserName", MySession.UserName);
            result.Add("Key", MySession.Key);
        }
        else
        {
            result.Add("State", true);
            result.Add("UserName", "");
            result.Add("Key", "");
        }
        context.Response.ContentType = "text/plain";
        context.Response.AppendHeader("Access-Control-Allow-Origin", "*");
        context.Response.Write(result.ToString());
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}