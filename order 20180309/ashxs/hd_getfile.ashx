<%@ WebHandler Language="C#" Class="hd_getfile" %>

using System;
using System.Web;
using System.IO;
public class hd_getfile : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {

        string fid = context.Request.QueryString["fid"],
            filetype = context.Request.QueryString["type"];

        if (fid != null)
        {
            FileExc fe = new FileExc();
            if (filetype != null)
            {
                //根据类型推送内容
                switch (filetype)
                {
                    case "jpg":
                        //读取文件信息
                        fe.FileID = fid;
                        FileStream MyFileStream = new FileStream(fe.FilePath, FileMode.Open);
                        long FileSize = MyFileStream.Length;
                        byte[] Buffer = new byte[(int)FileSize];
                        MyFileStream.Read(Buffer, 0, (int)FileSize);
                        MyFileStream.Close();
                        //显示处理
                        context.Response.AddHeader("Content-Disposition", "attachment;filename=\"" + fe.FileName + "\""); //把 attachment 改为 online 则在线打开
                        context.Response.ContentType = "image/jpg";  //流文件   "application/octet-stream"
                        context.Response.BinaryWrite(Buffer);
                        break;
                    default:
                        break;
                }
            }
            else
            {

                fe.FileID = fid;
                if (fe.CheckExist())
                {
                    /*
                    //读取文件流，并推送至客户端（适合地址不可访问时）
                    FileStream MyFileStream = new FileStream(fe.FilePath, FileMode.Open);
                    long FileSize = MyFileStream.Length;
                    byte[] Buffer = new byte[(int)FileSize];
                    MyFileStream.Read(Buffer, 0, (int)FileSize);
                    MyFileStream.Close();
                    context.Response.Charset = System.Text.Encoding.UTF8.EncodingName;
                    string filename = fe.FileID + fe.FileType;
                    context.Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filename + "\""); //把 attachment 改为 online 则在线打开
                    context.Response.ContentType = "application/octet-stream";  //流文件   "application/octet-stream"
                    context.Response.BinaryWrite(Buffer);
                    */
                    //跳转至地址下载
                    context.Response.Redirect(fe.DownFileURL());
                    //输出地址
                    //context.Response.Write(fe.DownFileURL());
                }
                else
                {
                    context.Response.ContentType = "text/plain";
                    context.Response.Write("很抱歉，文件已被删除");
                }
            }
        }
        else
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("很抱歉，指定文件不存在");
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