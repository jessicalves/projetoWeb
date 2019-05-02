<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="cliente.aspx.cs" Inherits="projetoWeb.cliente2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="Js/clienteJs.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">

    <h2>Página do cliente </h2>
    <input class="btn btn-primary" value="Cadastrar" type="button" onclick="document.getElementById('cadastrar').click();" />
    <a href="clienteForm.aspx" style="display: none" id="cadastrar"></a>
    <input class="btn btn-primary" id="editar" onclick="editarCliente()" type="button" value="Editar" />
    <input class="btn btn-primary" id="remover" type="button" value="Remover" />

    <div class="input-group w-25 mb-2 p-3">
        <label>ID do Cliente:</label>
        <input class="form-control" id="inputCliente" value="" placeholder="Informe o id" />
    </div>

    <asp:GridView ID="gridCliente" CssClass="grid_Cliente" runat="server">
    </asp:GridView>
</asp:Content>
