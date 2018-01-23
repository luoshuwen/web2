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


public partial class login : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ChangeCode_Click(object sender, EventArgs e)
    {
    } 
    protected void LoginCmd_Click(object sender, EventArgs e)
    {
        string code = txtcode.Text;
        if (Request.Cookies["CheckCode"].Value == code)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConnStr"].ConnectionString);
            con.Open();
            string pass = FormsAuthentication.HashPasswordForStoringInConfigFile(userpass.Text, "MD5");
            string sqlsel = "select count(*) from Table_user where username ='" + username.Text + "' and userpassword = '" + userpass.Text + "'";
            SqlCommand com = new SqlCommand(sqlsel, con);
            com.Parameters.Add(new SqlParameter("name", SqlDbType.VarChar, 20));
            com.Parameters["name"].Value = username.Text;
            com.Parameters.Add(new SqlParameter("pass", SqlDbType.VarChar, 50));
            com.Parameters["pass"].Value = pass;
            if (Convert.ToInt32(com.ExecuteScalar()) > 0)
            {
                Session["UserSession"] = username.Text;
                Response.Redirect("../after/aftermanager.aspx");
            }
            else
            {
                Label3.Text = "用户名或密码错误";
            }
        }
        else 
        {
            Label3.Text = "验证码输入错误";
        }

    }
}