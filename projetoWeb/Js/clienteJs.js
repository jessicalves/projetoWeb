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
                window.location.href = "clienteForm.aspx?&id=" + c1;
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

}

$(document).ready(function () { //quando o documento estiver pronto chame essa função
    var grid = $('#Corpo_gridCliente');
    grid.addClass('table table-hover');

    $('#Corpo_gridCliente tbody').dblclick(function (e) {
        var id = e.target.parentElement.children[0].innerHTML;
        editarCliente(id);
        //console.log(e);
        //console.log(id);
    })
});


