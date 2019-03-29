<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="cliente2.aspx.cs" Inherits="projetoWeb.cliente2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Js/clienteJs.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">
    <div id="area-principal">
        <div id="postagem">         
            <h2> Página do cliente </h2>
            <button id="editar" onclick="editar();">Editar</button>
        </div>
    </div>
   <asp:GridView ID="gridCliente" CssClass="grid_Cliente" runat="server">

   </asp:GridView>
</asp:Content>

