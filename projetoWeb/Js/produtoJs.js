$(document).ready(function () {
    var grid = $('#Corpo_gridProduto');
    grid.addClass('table table-hover');

    //$('#Corpo_gridProduto tbody').dblclick(function (e) {
    //    var id = e.target.parentElement.children[0].innerHTML;
    //    editarCliente(id);
    //    //console.log(e);
    //    //console.log(id);
    //})

    //$('#remover').click(function () {
    //    var id = $('.GridViewRowSelected')[0].children[0].innerHTML;
    //    excluirProduto(id);
    //})

    $('#Corpo_gridProduto tbody').click(function (e) {

        $('#Corpo_gridProduto tr').removeClass('GridViewRowSelected');
        $(e.target.parentElement).addClass('GridViewRowSelected');
        //console.log(e.target.parentElement);
    })
});