﻿<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="produto.aspx.cs" Inherits="projetoWeb.produto2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">
    
    <div id="area-principal">
        <div id="postagem">
            <h2> Página do Produto </h2>
            <input id="cadastrar" type="button" value="Cadastrar"/>
            <input id="editar" onclick="editarProduto()" type="button" value="Editar" />
            <input id="remover" type="button" value="Remover" />
            <label >Digite o codigio do produto:</label>
            <input id="inputProduto" value="" />
        </div>
    </div>
    <asp:GridView ID="gridProduto" CssClass="grid_Produto" runat="server">

   </asp:GridView>
</asp:Content>