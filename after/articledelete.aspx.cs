using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
using System.Drawing;

public partial class articledelete : System.Web.UI.Page
{
    string aid;
    protected void Page_Load(object sender, EventArgs e)
    {
        aid = this.Request["aid"].ToString();
        int i = SqlHelper.ExecuteNonQuery("delete from Table_article where articlenumber = '"+aid+"'");
        //editor1.InnerText = SqlHelper.ExecuteScalar("select articlecontent from Table_article where articlenumber = '" + aid + "'").ToString();
        Response.Redirect("../after/afterarticle.aspx");
    }
}