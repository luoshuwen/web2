﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class before_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["articlenumber"] = Request.QueryString["articlenumber"].ToString();
        Response.Redirect("~/before/content.aspx");
    }
}