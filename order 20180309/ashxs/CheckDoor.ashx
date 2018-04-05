<%@ WebHandler Language="C#" Class="CheckDoor" %>

using System;
using System.Web;
using System.Data;
using System.Text;

public class CheckDoor : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        string ip = "", key = "", cardno = "";
        if (context.Request.QueryString["ip"] != null)
            ip = context.Request.QueryString["ip"].Trim();
        if (context.Request.QueryString["key"] != null)
            key = context.Request.QueryString["key"].Trim();
        if (context.Request.QueryString["cardno"] != null)
            cardno = context.Request.QueryString["cardno"].Trim();

        //存储
        StringBuilder sb = new StringBuilder();
        foreach(string tmp in context.Request.QueryString.AllKeys)
        {
            sb.AppendLine(string.Format("{0}={1},", tmp, context.Request.QueryString[tmp]));
        }

        //处理
        StrCoding sc = new StrCoding();
        string scrkey = "9a5881244682dc74";
        string md5key = sc.get_MD5Str(ip + scrkey + cardno);
        bool state = false;

        context.Response.ContentType = "text/plain";
        if (ip == "192.168.20.199" && key ==md5key )
        {
            state = true;
            context.Response.Write(state);
        }
        else
        {
            context.Response.Write(state);
            context.Response.Write("\nkey="+md5key);
        }

        SystemLogs sl = new SystemLogs();
        sl.Save("Get", state.ToString() + ":" + sb.ToString());
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}