<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="ProdutoForm.aspx.cs" Inherits="projetoWeb.ProdutoForm" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">
    <div class="jumbotron p-1 my-1 mb-3">
        <h2>Cadastrando Novo Produto</h2>
    </div>

    <div class="form-group col-3 mt-5">
        <label for="nomeProduto">Nome:</label>
        <asp:TextBox ID="nomeProduto" runat="server" CssClass="form-control ml-3 mb-2" placeholder="Novo nome"></asp:TextBox>
        <label for="codigoProduto">Código:</label>
        <asp:TextBox ID="codigoProduto" runat="server" CssClass="form-control ml-3" placeholder="Novo código"></asp:TextBox>
    </div>

    <%--<div class="form-row mb-0">
        <div class="col-12">
            <asp:Button class="btn btn-primary ml-4 mr-2" runat="server" OnClick="BotaoSalvarProduto_Click" ID="BotaoSalvarProduto" Text="Salvar" />
            <button class="btn btn-secondary" type="reset" onclick="window.location.href='cliente.aspx'">Cancelar</button>
        </div>
    </div>--%>
</asp:Content>



