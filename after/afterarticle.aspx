<%@ Page Title="" Language="C#" MasterPageFile="../after/aftermain.master" AutoEventWireup="true" CodeFile="afterarticle.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div>
            <table>
                <tr>文章列表</tr>
                <tr>
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="../after/afterarticlesubmit.aspx">发表文章</asp:HyperLink>
                </tr>

            </table>
            <asp:Repeater ID="Repeater1" runat="server" 
            onitemdatabound="Repeater1_ItemDataBound">
            <HeaderTemplate>
                <table>
                <tr>
                <td>编号</td><td>标题</td><td>分类</td><td>发布时间</td><td>发布者</td><td>操作</td>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                <td>
                        <%#Eval("articlenumber") %>
                    </td>
                    <td>
                        <%#Eval("articletitle") %>
                    </td>
                    <td>
                       <%#Eval("articleclass") %>
                    </td>
                    <td>
                       <%#Eval("articletime") %>
                    </td>
                    <td>
                        <%#Eval("articleauthor") %>
                    </td>
                    <td>
                        <a href='afterarticlechange.aspx?aid=<%#Eval("articlenumber")%>'>修改</a>
                       <a href='articledelete.aspx?aid=<%#Eval("articlenumber")%>'>删除</a>
                    </td>
                </tr>
            </ItemTemplate>
            <SeparatorTemplate>
                <tr>
                    <td>
                    <hr>
                    </td>
                    <td>
                    <hr>
                    </td>
                    <td>
                    <hr>
                    </td>
                     <td>
                    <hr>
                    </td>
                    <td>
                    <hr>
                    </td>
                    <td>
                    <hr>
                    </td>
                </tr>
            </SeparatorTemplate>
            <FooterTemplate>
            <tr>
            <td colspan="2" style="font-size:12pt;color:#0099ff; background-color:#e6feda;">共<asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label>页  当前为第<asp:Label ID="Label2" runat="server" Text="Label2"></asp:Label>页
            <asp:HyperLink ID="hlfir" runat="server" Text="首页"></asp:HyperLink>
            <asp:HyperLink ID="hlp" runat="server" Text="上一页"></asp:HyperLink>
            <asp:HyperLink ID="hln" runat="server" Text="下一页"></asp:HyperLink>
            <asp:HyperLink ID="hlla" runat="server" Text="尾页"></asp:HyperLink>
            </td>
            </tr>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        </div>
</asp:Content>

