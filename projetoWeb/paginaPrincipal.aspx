<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="paginaPrincipal.aspx.cs" Inherits="projetoWeb._Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">
        <div id="area-principal">
        <div class="postagem">
            <h2>Cliente</h2>
            <img class="img-postagem" src="img/cliente.png">
            <p>
                Em cliente você encontrará opções como cadastro, compras, listagem,etc;
            </p>
        </div>

        <div class="postagem">
            <h2>Produtos</h2>
            <img class="img-postagem" src="img/produto.png">
            <p>
                Em produtor você encontrará opções de listagem, cadastro, excluir,etc;
            </p>
        </div>
    </div>
</asp:Content>
