using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string oldpassword = SqlHelper.ExecuteScalar("select userpassword from Table_user where username = '" + Session["UserSession"] + "'").ToString();
        if (oldpassword == TextBox1.Text)
        {
            if (TextBox2.Text == TextBox3.Text)
            {
                int i = SqlHelper.ExecuteNonQuery("update Table_user set userpassword = '" + TextBox2.Text + "' where username = '" + Session["UserSession"] + "'");
                Response.Write("<script>alert('修改成功!')</script>");
                Response.Redirect("../after/aftermanager.aspx");
            }
            else
            {
                Label4.Text = "新密码输入不相符合";
            }
        }
        else
        {
            Label4.Text = "原密码错误";
        }
    }
}