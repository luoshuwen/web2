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

public partial class before_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = pds();
        Repeater1.DataBind();
    }
    private PagedDataSource pds()
    {
        DataSet ds = SqlHelper.link("select * from Table_article order by articlenumber desc");
        PagedDataSource pds = new PagedDataSource();
        pds.DataSource = ds.Tables[0].DefaultView;
        pds.AllowPaging = false;
        pds.PageSize = 6;
        return pds;
    }
}