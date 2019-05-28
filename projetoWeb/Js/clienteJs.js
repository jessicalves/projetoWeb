function editarCliente(e) {
    var c1 = e;
    $.ajax({
        type: "POST",
        url: "Cliente.aspx/ClienteExiste",
        data: JSON.stringify({ idCliente: c1 }), //JSON.stringify usa um valor JavaScript e retorna uma string codificada em JSON
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (res) {
            if (res.d == true) {
                window.location.href = "clienteForm.aspx?&id=" + c1 + "&Op=Editar";
            }
            else {
                alert("Cliente não existe.");
            }
        },
        error: function (res) {
            alert("Informe o ID do cliente", res);
        }
    });
}

function excluirCliente(e) {
    console.log(e);
        $.ajax({
            type: "POST",
            url: "Cliente.aspx/removerCliente",
            data: JSON.stringify({ idCliente: e}), //JSON.stringify usa um valor JavaScript e retorna uma string codificada em JSON
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (res) {
                if (res.d == true) {
                    window.location.href = "cliente.aspx";
                }
                else {
                    alert("Cliente não existe.");
                }
            },
            error: function (res) {
                alert("Informe o ID do cliente", res);
            }
        });
}

//const linha = $('#Corpo_gridCliente tr.GridViewRowSelected');
//if (linha == null) {
//    alert('Selecione um cliente');


$(document).ready(function () { //quando o documento estiver pronto chame essa função
    var grid = $('#Corpo_gridCliente');
    grid.addClass('table table-hover');

    $('#Corpo_gridCliente tbody').dblclick(function (e) {
        var id = e.target.parentElement.children[0].innerHTML;
        editarCliente(id);
        //console.log(e);
        //console.log(id);
    })

    $('#remover').click(function () {
        var id = $('.GridViewRowSelected')[0].children[0].innerHTML;
        excluirCliente(id);
    })

    $('#Corpo_gridCliente tbody').click(function (e) {

        $('#Corpo_gridCliente tr').removeClass('GridViewRowSelected');
        $(e.target.parentElement).addClass('GridViewRowSelected');
        //console.log(e.target.parentElement);
    })

});



