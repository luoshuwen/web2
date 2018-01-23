<%@ Page Title="" Language="C#" MasterPageFile="~/before/main.master" AutoEventWireup="true" CodeFile="content.aspx.cs" Inherits="before_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class=" contentPage">
    <div class="realcontent">
        <h1 >
            <asp:Label ID="Label1" runat="server" ></asp:Label></h1>
        <%--<h2>第三届研究生国学活动节之传统艺术作品大赛正在进行</h2>--%>
        <p><asp:Literal ID="Literal1" runat="server"></asp:Literal></p>
    </div>
</div>
</asp:Content>

