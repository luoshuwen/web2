<%@ Page Title="" Language="C#" ValidateRequest="false" MasterPageFile="~/after/aftermain.master" AutoEventWireup="true" CodeFile="afterarticlechange.aspx.cs" Inherits="after_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div>
            文章编辑
             
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Enabled="True" Selected="True">文章分类</asp:ListItem>
                <asp:ListItem>新闻聚焦</asp:ListItem>
                <asp:ListItem>权益之声</asp:ListItem>
                <asp:ListItem>硕博天空</asp:ListItem>
                <asp:ListItem>光影阅读</asp:ListItem>
                <asp:ListItem>公告</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label1" runat="server" Text="文章标题："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
      
            <asp:Label ID="Label3" runat="server" Text="副标题："></asp:Label><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="发布者"></asp:Label><asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
           <textarea id="editor2" class="ckeditor" name="editor2" runat="server"></textarea> 
            
            <br />
            <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click1" />
            </div>
     <div>
            <a href="http://www.ouc.edu.cn/">中国海洋大学</a> <a href="http://it.ouc.edu.cn/itstudio/">爱特工作室</a>
        </div>
</asp:Content>

