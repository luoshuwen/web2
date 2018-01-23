<%@ Page Title="" Language="C#" MasterPageFile="../after/aftermain.master" AutoEventWireup="true" CodeFile="aftermanager.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
            <p>欢迎进入后台管理系统</p>
            <table>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="../after/aftermanager.aspx">admin</asp:HyperLink>
                    </td>

                </tr>
                <tr>
                    <td>

                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="../after/Default.aspx">退出登录</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="../after/afterpasswordchange.aspx">修改密码</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="../after/aftermanageradd.aspx">添加管理员</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="../after/afterarticle.aspx">文章管理</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="../after/afterarticle.aspx">文章列表</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="../after/afterarticlesubmit.aspx">发布文章</asp:HyperLink></td>
                </tr>
            </table>
            <br />
            <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="../after/afterdownload.aspx">下载资源</asp:HyperLink>
        </div>
</asp:Content>

