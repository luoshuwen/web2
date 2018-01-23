<%@ Page Title="" Language="C#" MasterPageFile="../after/aftermain.master" AutoEventWireup="true" CodeFile="afterpasswordchange.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
            <asp:Label ID="Label1" runat="server" Text="原密码："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="新密码："></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="重复新密码："></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click" />
            <asp:Label ID="Label4" runat="server" ></asp:Label>
        </div>
</asp:Content>

