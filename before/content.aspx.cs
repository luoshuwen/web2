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
using System.Web.Security;

public partial class before_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = SqlHelper.link("select articletitle from Table_article where articlenumber = '"+Session["articlenumber"].ToString()+"'");
        Label mylabel=(Label)this.Master.FindControl("ContentPlaceHolder1").FindControl("Label1");
        mylabel.Text = ds.Tables[0].Rows[0][0].ToString();
        ds = SqlHelper.link("select articlecontent from Table_article where articlenumber = '" + Session["articlenumber"].ToString() + "'");
        Literal myliteral = (Literal)this.Master.FindControl("ContentPlaceHolder1").FindControl("Literal1");
        myliteral.Text = ds.Tables[0].Rows[0][0].ToString();
    }
}