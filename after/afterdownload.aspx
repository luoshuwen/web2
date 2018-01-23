<%@ Page Title="" Language="C#" MasterPageFile="../after/aftermain.master" AutoEventWireup="true" CodeFile="afterdownload.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div>
             <asp:Repeater ID="Repeater1" runat="server" 
            onitemdatabound="Repeater1_ItemDataBound">
            <HeaderTemplate>
                <table>
                <tr>
                <td>编号</td><td>标题</td><td>发布时间</td><td>发布者</td><td>操作</td>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                <td>
                        <%#Eval("filenumber") %>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%#Eval("filepass") %>'><%#Eval("filename") %></asp:HyperLink>
                        
                    </td>
                    <td>
                       <%#Eval("filetime") %>
                    </td>
                    <td>
                       <%#Eval("fileauthor") %>
                    </td>
                    <td>
                       <a href='filedelete.aspx?fid=<%#Eval("filenumber")%>'>删除</a>
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
 <asp:Label ID="Label9" runat="server" Text="上传资源（仅限于txt、doc、rar或zip格式）："></asp:Label>
            &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="上传" />
            <asp:Label ID="Label10" runat="server"></asp:Label>
        </div>
</asp:Content>

