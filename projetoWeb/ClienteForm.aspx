<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="ClienteForm.aspx.cs" Inherits="projetoWeb.ClienteForm " %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">

    <div class="form-group col-3 mt-5">
        <label for="nomeCliente">Nome:</label>
        <input id="nomeCliente" type="text" class="form-control ml-3 mb-2" placeholder="Novo nome">
        <label for="cpfCliente">CPF:</label>
        <input id="cpfCliente" type="text" class="form-control ml-3" placeholder="Novo CPF">
    </div>

    <div class="form-row mb-0">
        <div class="col-12">
            <button class="btn btn-primary ml-4 mr-2" onclick="BotaoSalvar_Click" id="BotaoSalvar">Salvar</button>
            <button class="btn btn-secondary" type="reset">Cancelar</button>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
