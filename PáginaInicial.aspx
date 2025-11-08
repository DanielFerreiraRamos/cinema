<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PáginaInicial.aspx.cs" Inherits="WebApplication1.PáginaInicial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CineTesp</title>
</head>
<body>
    <form id="form1" runat="server">
        <%-- Cabeçalho --%>
        <div>
            <a>logo</a>
            <asp:Button ID="Button1" runat="server" Text="Entrar" />
            <asp:Button ID="Button6" runat="server" Text="Cadastrar" />
        </div>
        <%-- Cabeçalho --%>

        <%-- Barra de Seleção --%>
        <div>
            <asp:Button ID="Button2" runat="server" Text="Programação" />
            <asp:Button ID="Button3" runat="server" Text="Sua Sessão" />
            <asp:Button ID="Button5" runat="server" Text="Consulta de Ingressos" />
            <asp:Button ID="Button4" runat="server" Text="Histórico de Ingressos" />
        </div>
        <%-- Barra de Seleção --%>

        <%-- Filme em destaque --%>
        <div>
            (Cartaz do filme em destaque)
        </div>
        <%-- Filme em destaque --%>

        <%-- Endereço e características das salas --%>
        <div>
            <h1>Características dos cinemas</h1>
            <div>
                (endereço + características)
            </div>
            <div>
                (endereço + características)
            </div>
        </div>
        <%-- Endereço e características das salas --%>

        <%-- Cabeçalho Superior --%>
        <div>
            <a>Copyright © 2025</a>
            <a>Política de Privacidade</a>
            <a>Termos de uso</a>
        </div>
        <%-- Cabeçalho Superior --%>
    </form>
</body>
</html>
