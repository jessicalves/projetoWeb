<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="produto.aspx.cs" Inherits="projetoWeb.produto2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="Js/produtoJs.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">

    <div class="jumbotron p-1 my-1 mb-3">
        <h2>Página do Produto </h2>
    </div>

    <input class="btn btn-primary ml-4 mb-5 mx-2" value="Cadastrar" type="button"  />
    <a href="clienteForm.aspx" style="display: none" id="cadastrar"></a>
    <input class="btn btn-primary mb-5 mx-2" id="remover" type="button" value="Remover" />

    <asp:GridView ID="gridProduto" OnPreRender="gridProduto_PreRender" runat="server">
    </asp:GridView>

</asp:Content>
