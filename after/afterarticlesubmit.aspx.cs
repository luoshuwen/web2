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
    bool f = false;//用于封锁默认选项
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Text = Session["UserSession"].ToString();
        f = false;
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        DateTime dt = DateTime.Now;
        string t1 = Request.Form["editor1"];
        int i = SqlHelper.ExecuteNonQuery("insert into Table_article (articlesubtitle,articletitle,articleclass,articletime,articleauthor,articlecontent) values ('" + TextBox2.Text + "','" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + dt.ToString() + "','" + Session["UserSession"] + "','" + editor1.InnerText + "')");
        Response.Redirect("../after/afterarticle.aspx");
    }
}