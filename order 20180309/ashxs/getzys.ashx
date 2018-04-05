<%@ WebHandler Language="C#" Class="getzys" %>

using System;
using System.Web;
using System.Data;
using System.Text;

public class getzys : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        string type = context.Request.QueryString["type"];
        StringBuilder sb = new StringBuilder();
        if (!string.IsNullOrEmpty(type))
        {
            SqlDatacns dc = new SqlDatacns();
            DataTable dt = dc.dt("select mc from [zy_list] where type like '%" + type + "%'");
            foreach (DataRow dr in dt.Rows)
            {
                sb.Append(dr[0] + ",");
            }
        }
        context.Response.ContentType = "text/plain";
        context.Response.Write(sb.ToString());
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}