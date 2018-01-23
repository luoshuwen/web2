using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class filedelete : System.Web.UI.Page
{
    string fid;
    protected void Page_Load(object sender, EventArgs e)
    {
        fid = this.Request["fid"].ToString();
        string filepass = SqlHelper.ExecuteScalar("select filepass from Table_file where filenumber="+fid).ToString();
        System.IO.File.Delete(Server.MapPath(filepass));
        int i = SqlHelper.ExecuteNonQuery("delete from Table_file where filenumber = '" + fid + "'");
        //editor1.InnerText = SqlHelper.ExecuteScalar("select articlecontent from Table_article where articlenumber = '" + aid + "'").ToString();
        Response.Redirect("../after/afterdownload.aspx");
    }
}