<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="密码：" Width="63px"></asp:Label>
        <asp:TextBox ID="userpass" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:ImageButton ID="yzm" runat="server" ImageUrl="imagecode.aspx" /> 
        <asp:LinkButton ID="ChangeCode" runat="server" Text="看不清楚？换一个验证码" OnClick="ChangeCode_Click" /> 
        <br />
        <asp:Label ID="Label4" runat="server" Text="验证码："></asp:Label>
        <asp:TextBox ID="txtcode" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnlog" runat="server" OnClick="LoginCmd_Click" Text="登陆" Height="21px" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
    
    </div>
    </form>
</body>
</html>
