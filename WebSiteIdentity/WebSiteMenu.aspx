<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebSiteMenu.aspx.cs" Inherits="WebSiteIdentity.WebSiteMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <p>
                <asp:Literal runat="server" ID="StatusMessage" />
             </p>                
            <hr />

            <a href="Login.aspx"> Login de Usuário</a> <br />
            <a href="Register.aspx"> Registro de Usuário</a> <br />
            <a href="WebSiteUser.aspx">Área de Usuário</a> <br />
            <a href="RegisterAdm.aspx">Registro de Admin</a> <br />
            <a href="WebSiteAdm.aspx">Área de Admin</a> <br />

        </div>
    </form>
</body>
</html>
