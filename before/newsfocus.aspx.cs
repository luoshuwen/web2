﻿using System;
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
        Repeater1.DataSource = pds();
        Repeater1.DataBind();
    }
    private PagedDataSource pds()
    {
        DataSet ds = SqlHelper.link("select * from Table_article where articleclass = '"+"新闻聚焦"+"' order by articlenumber desc");
        PagedDataSource pds = new PagedDataSource();
        pds.DataSource = ds.Tables[0].DefaultView;
        pds.AllowPaging = true;
        pds.PageSize = 6;
        pds.CurrentPageIndex = Convert.ToInt32(Request.QueryString["page"]);
        return pds;
    }
    protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Footer)
        {//判断当前项是页脚模板
            int n = pds().PageCount;//将分页总数赋给变量n
            int i = pds().CurrentPageIndex;//将当前分页码赋给i

            Label Label1 = (Label)this.Master.FindControl("ContentPlaceHolder1").FindControl("Repeater1").FindControl("Label1");
            Label1.Text = n.ToString();
            //找到lblpc这个Label，将总页码赋给他


            Label Label2 = (Label)this.Master.FindControl("ContentPlaceHolder1").FindControl("Repeater1").FindControl("Label2");
            Label2.Text = Convert.ToString(pds().CurrentPageIndex + 1);
            //找到lblp这个Label，将当前页码赋给他，但是注意，因为页码从0开始，这里要直观的话就得加1

            HyperLink hlfir = (HyperLink)this.Master.FindControl("ContentPlaceHolder1").FindControl("Repeater1").FindControl("hlfir");

            hlfir.NavigateUrl = "?page=0";
            HyperLink hlla = (HyperLink)this.Master.FindControl("ContentPlaceHolder1").FindControl("Repeater1").FindControl("hlla");
            hlla.NavigateUrl = "?page=" + Convert.ToInt32(n - 1);
            //找到表示最前页和末页的Label，为他们的NavigateUrl属性赋为第0页和最大页码减1
            HyperLink hlp = (HyperLink)this.Master.FindControl("ContentPlaceHolder1").FindControl("Repeater1").FindControl("hlp");
            HyperLink hln = (HyperLink)this.Master.FindControl("ContentPlaceHolder1").FindControl("Repeater1").FindControl("hln");
            //找到表示上页和下页这两个控件
            if (i <= 0)
            {//如果当前页已经是第0页
                hlp.Enabled = false;
                hlfir.Enabled = false;
                hln.Enabled = true;
            }
            else
            {
                //Response.Redirect("card.aspx?id=" + unamel.ToString());
                hlp.NavigateUrl = "?page=" + Convert.ToInt32(i - 1);
            }
            if (i > n - 2)
            {//如果当前项已经是最末页
                hln.Enabled = false;
                hlla.Enabled = false;
                hlp.Enabled = true;
            }
            else
            {
                //Response.Redirect("card.aspx?id=" + unamel.ToString());
                hln.NavigateUrl = "?page=" + Convert.ToInt32(i + 1);
            }
        }
    }
}