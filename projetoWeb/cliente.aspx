<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="cliente.aspx.cs" Inherits="projetoWeb.cliente2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="Js/clienteJs.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">

    <div class="jumbotron p-1 my-1 mb-3">
        <h2>Página do cliente</h2>
    </div>

    <input class="btn btn-primary ml-4 mb-5 mx-2" value="Cadastrar" type="button" onclick="document.getElementById('cadastrar').click();" />
    <a href="clienteForm.aspx" style="display: none" id="cadastrar"></a>
    <%--<input class="btn btn-primary mb-5 mx-2" id="editar" onclick="editarCliente()" type="button" value="Editar" />--%>
    <input class="btn btn-primary mb-5 mx-2" id="remover" type="button" value="Remover" />
    <input type="search" class="form-control ds-input" id="buscar-input" placeholder="Buscar..." style="width: 50%; margin-bottom: 50px; margin-left: 340px" />

    <asp:GridView ID="gridCliente" OnPreRender="gridCliente_PreRender" runat="server">
    </asp:GridView>

    <div id="mostrar" style="display: none; text-align:center" class="alert alert-danger" role="alert">
        <tr >
            <td colspan="3">Conteúdo não encontrado</td>
        </tr>
    </div>


</asp:Content>
