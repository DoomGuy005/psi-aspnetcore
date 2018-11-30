<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebSiteIdentity_v2.View.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> REGISTRO DE USUÁRIO</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4 style="font-size: large; font-family: Calibri">Cadastrar novo usuário</h4>
        <hr />
        <p>
            <asp:Literal runat="server" ID="StatusMessage" />
        </p>                
        <div style="margin-bottom:10px">
            <asp:Label style="font-size: medium; font-family: Calibri" runat="server" AssociatedControlID="UserName" Font-Bold="True">Usuário</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="UserName" />                
            </div>
        </div>
        <div style="margin-bottom:10px">
            <asp:Label style="font-size: medium; font-family: Calibri" runat="server" AssociatedControlID="Password" Font-Bold="True">Senha</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" />                
            </div>
        </div>
        <div style="margin-bottom:10px">
            <asp:Label style="font-size: medium; font-family: Calibri" runat="server" AssociatedControlID="ConfirmPassword" Font-Bold="True">Confirma senha</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />                
            </div>
        </div>
        <div>
            <div>
                <asp:Button style="font-size: medium; font-family: Calibri" runat="server" Text="Cadastrar" OnClick="Unnamed4_Click" Font-Bold="True" BackColor="#33CC33" BorderStyle="Solid" ForeColor="Black"/>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
