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


public partial class after_Default2 : System.Web.UI.Page
{
    string aid;
    protected void Page_Load(object sender, EventArgs e)
    {
        aid = this.Request["aid"].ToString();

        editor2.InnerText = SqlHelper.ExecuteScalar("select articlecontent from Table_article where articlenumber = '" + aid + "'").ToString();
        TextBox1.Text = SqlHelper.ExecuteScalar("select articletitle from Table_article where articlenumber = '" + aid + "'").ToString();
        TextBox3.Text = SqlHelper.ExecuteScalar("select articlesubtitle from Table_article where articlenumber = '" + aid + "'").ToString();
        Label5.Text = Session["UserSession"].ToString();

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        editor2.InnerText = Request.Form["editor2"];        
        int i = SqlHelper.ExecuteNonQuery("UPDATE Table_article SET articlecontent=‘" + editor2.InnerText + "’,articletitle='" + TextBox1.Text + "',articlesubtitle='" + TextBox3.Text + "'  WHERE articlenumber=" + aid);
        
        Response.Redirect("../after/afterarticle.aspx");
    }
}