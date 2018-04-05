<%@ WebHandler Language="C#" Class="GetType" %>

using System;
using System.Web;
using System.Data;

public class GetType : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        string ip = context.Request.QueryString["ip"];
        string key = context.Request.QueryString["key"];

        string type = "";
        Com_CheckIP cip = new Com_CheckIP();
        if (cip.CheckIP(ip, key))
        {
            SqlDatacns dc = new SqlDatacns();
            type = dc.Scl("select type from [zy_list] where kzqip='" + ip + "'").ToString();
            if (string.IsNullOrEmpty(type))
            {
                type = "未登记IP";
            }
            SystemLogs sl = new SystemLogs();
            sl.Save(OperKind.MacReg, ip + " " + type);
        }
        else
        {
            type = "通信失败";
        }
        context.Response.ContentType = "text/plain";
        context.Response.Write("TYPE:" + type);
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}