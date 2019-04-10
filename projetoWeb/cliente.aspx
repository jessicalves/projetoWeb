<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="cliente.aspx.cs" Inherits="projetoWeb.cliente2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Js/clienteJs.js" type="text/javascript"></script>
    <script src="Scripts/jquery-3.3.1.min.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">
    
            <h2> Página do cliente </h2>
            <input value="Cadastrar" type="button" onclick="document.getElementById('cadastrar').click();" />
            <a href="clienteForm.aspx" style="display:none" id="cadastrar"></a>
            <input id="editar" onclick="editarCliente()" type="button" value="Editar" />
            <input id="remover" type="button" value="Remover" />
            <label >Digite o id do cliente:</label>
            <input id="inputCliente" value="" />

   <asp:GridView ID="gridCliente" CssClass="grid_Cliente" runat="server">
   </asp:GridView>
</asp:Content>
 