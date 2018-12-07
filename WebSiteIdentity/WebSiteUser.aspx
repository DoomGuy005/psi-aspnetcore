<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebSiteUser.aspx.cs" Inherits="WebSiteIdentity.WebSiteUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:PlaceHolder ID="LoginStatus" runat="server" Visible="False">
        <asp:Literal ID="StatusText" runat="server"></asp:Literal>
            <hr />
        </asp:PlaceHolder>
            Página de Usuário Autenticado

        </div>
    </form>
</body>
</html>
