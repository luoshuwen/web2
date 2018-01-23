using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.ForeColor = Color.DarkRed;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "")
        {
            if (TextBox2.Text == TextBox3.Text)
            {
                DateTime dt = DateTime.Now;
                SqlDataReader sdr = SqlHelper.cmdexecutereader("SELECT username FROM Table_user WHERE username ='" + TextBox1.Text + "'");
                if (sdr.HasRows)
                {

                    Label4.Text = "用户名无效！";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
                int i = SqlHelper.ExecuteNonQuery("INSERT INTO Table_user (username,userpassword,usertime)VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + dt.ToString() + "')");
                Response.Redirect("../after/aftermanager.aspx");
            }
            else
            {
                Label4.Text = "密码不一致";
            }
        }
        else
        {
            Label4.Text = "输入不能为空";
        }
    }
}