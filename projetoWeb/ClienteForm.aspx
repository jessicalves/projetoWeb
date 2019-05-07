<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="ClienteForm.aspx.cs" Inherits="projetoWeb.ClienteForm " %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">

    <div class="form-group col-3 mt-5">
        <label for="nomeCliente">Nome:</label>
        <input type="text" class="form-control ml-3" id="nomeCliente" placeholder="Novo nome">
    </div>
    <div class="form-group col-3 mt-5">
        <label for="cpfCliente">CPF:</label>
        <input type="text" class="form-control ml-3" id="cpfCliente" placeholder="Novo CPF">
    </div>
    <asp:Button class="btn btn-primary ml-4" runat="server" OnClick="BotaoSalvar_Click" ID="BotaoSalvar" Text="Salvar" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
