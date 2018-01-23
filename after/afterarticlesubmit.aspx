<%@ Page Title="" Language="C#" ValidateRequest="false" MasterPageFile="../after/aftermain.master" AutoEventWireup="true" CodeFile="afterarticlesubmit.aspx.cs" Inherits="after_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
            文章编辑
             
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Enabled="False" Selected="True">文章分类</asp:ListItem>
                <asp:ListItem>新闻聚焦</asp:ListItem>
                <asp:ListItem>权益之声</asp:ListItem>
                <asp:ListItem>硕博天空</asp:ListItem>
                <asp:ListItem>光影阅读</asp:ListItem>
                <asp:ListItem>公告</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label1" runat="server" Text="文章标题："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="文章副标题："></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="发布者:"></asp:Label><asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
           <textarea id="editor1" class="ckeditor" name="editor1" runat="server">Sample Text</textarea> 
            
            <br />
            <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click1" />
            </div>
</asp:Content>

