<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebSiteMenu.aspx.cs" Inherits="WebSiteIdentity_v2.WebSiteMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>MENU DO SITE</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p> <asp:Literal runat="server" ID="StatusMessage" /> </p>                
            <asp:Label ID="Label1" runat="server" Text="MENU DO SITE" Font-Bold="True" Font-Names="Calibri"></asp:Label>
            <hr />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Calibri" ForeColor="#0066FF" NavigateUrl="~/View/Login.aspx">Login de Usuário</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="Calibri" ForeColor="#CC33FF" NavigateUrl="~/View/Register.aspx">Registro de Usuário</asp:HyperLink>
            <br />            
            <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Calibri" ForeColor="#FF3300" NavigateUrl="~/View/WebSiteUser.aspx">Página do Usuário</asp:HyperLink>

        </div>
    </form>
</body>
</html>
