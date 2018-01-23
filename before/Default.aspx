<%@ Page Title="" Language="C#" MasterPageFile="~/before/main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="before_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner"><div id="banner"> <a href="#"><img class="turn" src="../研究生会/images/images/left_07.png" /></a> 
		<div class="circle"><img class=" picture" src="../研究生会/images/images/picture_07.png" /> 
    <div ><img src="../研究生会/images/images/c_18.png" />
        <img src="../研究生会/images/images/c_18.png" />
        <img src="../研究生会/images/images/cc_18.png" /></div></div>
		</div>
    <a href="#"><img class="turn" src="../研究生会/images/images/right_07.png" /></a> </div>

<!--内容-->
<div class="content">
    <div class="left">
        <h1>新闻公告</h1>
        <ul class="news">
            <asp:Repeater ID="Repeater1" runat="server">
               
                <ItemTemplate>
                  <%--  <ul class="news">
              
                    <td class="news">
                        <a href='#?id=<%#Eval("articletitle") %>'><%#Eval("articletitle") %></a>
                    </td>
             
             </ul>--%>
                    <ul>
                     <li class="news">
                        <a href='temparticle.aspx?articlenumber=<%#Eval("articlenumber") %>'><%#Eval("articletitle") %></a>
                    </li>
                        </ul>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <div class="left"> <br />
        <br />
        <br />
        <ul>
            <li><a href="#">【新闻聚焦】   中国海洋大学2013研究会顺利召开</a></li>
            <li><a href="#">【新闻聚焦】   第三届研究生活动节正在进行</a></li>
            <li><a href="#">【新闻聚焦】   纪念共青团成立90周年活动</a></li>
            <li><a href="#">【新闻聚焦】   创业资讯站我们身边的明星</a></li>
            <li><a href="#">【新闻聚焦】   创业资讯站小小创业宝典</a></li>
            <li><a href="#">【权益之声】   大学生维权常见问题汇编</a></li>
        </ul>
    </div>
    <div class="usually">
        <h1>常用链接</h1>
        <br />
        <img src="../研究生会/images/images/images/444_24.jpg"/>
        <p><a href="#">海大首页</a><img src="../研究生会/images/images/4_11.gif" /> <a href="#">海大青年</a><img src="../研究生会/images/images/4_11.gif" /> <a href="#">图书馆</a><br />
            <a href="#">助学在线</a><img src="../研究生会/images/images/4_11.gif" /> <a href="#">就业信息</a><img src="../研究生会/images/images/4_11.gif" /> <a href="#">智能卡</a><br />
            <a id="long" href="#">研究生教育中心</a><img src="../研究生会/images/images/4_11.gif" /> <a href="#">网络中心</a> </p>
        <img src="../研究生会/images/images/images/444_24.jpg"/><br />
        <h1>新媒体阵地</h1>
        <a href="#"><img src="../images/10_26.gif"/></a> <a href="#"><img src="../images/11_28.gif" /></a> </div>
</div>
</asp:Content>

