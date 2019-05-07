<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="produto.aspx.cs" Inherits="projetoWeb.produto2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="Js/produtoJs.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">

    <h2>Página do Produto </h2>
    <input class="btn btn-primary" id="cadastrar" type="button" value="Cadastrar" />
    <input class="btn btn-primary" id="editar" onclick="editarProduto()" type="button" value="Editar" />
    <input class="btn btn-primary" id="remover" type="button" value="Remover" />
    <div class="input-group w-25 mb-2 p-3">
        <label>ID do produto: </label>
        <input class="form-control" id="inputProduto" value="" placeholder="Informe o id" />
    </div>
    <asp:GridView ID="gridProduto" OnPreRender="gridProduto_PreRender" runat="server">
    </asp:GridView>

</asp:Content>
