<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="ClienteForm.aspx.cs" Inherits="projetoWeb.ClienteForm " %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">
    <div>
        <label>Nome</label>
        <input id="nomeCliente" runat="server" />
    </div>
    <div>
        <label>Cpf</label>
        <input id="cpfCliente" runat="server" />
    </div>
    <asp:Button runat="server" OnClick="BotaoSalvar_Click" ID="BotaoSalvar" Text="Salvar" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
