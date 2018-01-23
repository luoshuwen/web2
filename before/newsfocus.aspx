<%@ Page Title="" Language="C#" MasterPageFile="~/before/main.master" AutoEventWireup="true" CodeFile="newsfocus.aspx.cs" Inherits="before_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="contentPage">
    <div style="width:800px; margin:0 auto;">
        <div class="listTitle"> <img src="../研究生会/images/images/images/12_03.png" /><span>新闻聚焦</span> </div>
    </div>
    <div class="listCont">
        <asp:Repeater ID="Repeater1" runat="server" >
            <ItemTemplate>
                 <li><a href='temparticle.aspx?articlenumber=<%#Eval("articlenumber") %>'><%#Eval("articletitle") %></a><span><%#Eval("articletime") %></span></li>
            </ItemTemplate>
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
       <%-- <ul>
            <li><a href="#">第三届研究生国学活动节之传统艺术作品大赛正在进行</a><span>2013-4-7  22：:50:57</span></li>
            <li><a href="#">第三届研究生国学活动节之传统艺术作品大赛正在进行</a><span>2013-4-7  22：:50:57</span></li>
            <li><a href="#">第三届研究生国学活动节之传统艺术作品大赛正在进行</a><span>2013-4-7  22：:50:57</span></li>
            <li><a href="#">第三届研究生国学活动节之传统艺术作品大赛正在进行</a><span>2013-4-7  22：:50:57</span></li>
            <li><a href="#">第三届研究生国学活动节之传统艺术作品大赛正在进行</a><span>2013-4-7  22：:50:57</span></li>
            <li><a href="#">第三届研究生国学活动节之传统艺术作品大赛正在进行</a><span>2013-4-7  22：:50:57</span></li>
        </ul>--%>
    </div>
</div>
</asp:Content>

