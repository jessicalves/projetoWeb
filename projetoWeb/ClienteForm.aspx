<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="ClienteForm.aspx.cs" Inherits="projetoWeb.ClienteForm " %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">
    <div class="input-group w-25 mb-2 p-1">
        <label>Nome</label>
        <input class="form-control" id="nomeCliente" runat="server" placeholder="Novo nome" />
    </div>
    <div class="input-group w-25 mb-2 p-3">
        <label>CPF</label>
        <input class="form-control" id="cpfCliente" runat="server" placeholder="Novo CPF" />
    </div>
    <asp:Button class="btn btn-primary" runat="server" OnClick="BotaoSalvar_Click" ID="BotaoSalvar" Text="Salvar" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
