<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebSiteIdentity_v2.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4 style="font-size: medium; font-family:Calibri">Conectar Usuário</h4>
         <hr />
         <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
            <p> <asp:Literal runat="server" ID="StatusText" /> </p>
         </asp:PlaceHolder>
         <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
            <div style="margin-bottom: 10px">
               <asp:Label style="font-size: medium; font-family:Calibri" Font-Bold="true" runat="server" AssociatedControlID="UserName">Usuário</asp:Label>
               <div>
                  <asp:TextBox runat="server" ID="UserName" />
               </div>
            </div>
         <div style="margin-bottom: 10px">
               <asp:Label style="font-size: medium; font-family:Calibri" Font-Bold="true" runat="server" AssociatedControlID="Password">Senha</asp:Label>
               <div>
                  <asp:TextBox runat="server" ID="Password" TextMode="Password" />
               </div>
            </div>
            <div style="margin-bottom: 10px">
               <div>
                  <asp:Button style="font-size: medium; font-family:Calibri" Font-Bold="true" runat="server" OnClick="SignIn" Text="Conectar" BackColor="Lime" BorderStyle="Solid" />
               </div>
            </div>
         </asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
            <div>
               <div>
                  <asp:Button style="font-size: medium; font-family:Calibri" Font-Bold="true" BackColor="#FF5050" BorderStyle="Solid" runat="server" OnClick="SignOut" Text="Desconectar" />
               </div>
            </div>
         </asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
