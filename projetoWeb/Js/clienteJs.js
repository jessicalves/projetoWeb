function editarCliente() {
    var c1 = document.getElementById("inputCliente").value;
    console.log('aqui');
    $.ajax({
        type: "POST",
        url: "Cliente.aspx/ClienteExiste",
        data: JSON.stringify({idCliente:c1}),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (res) {
            if (res.d == true) {
                window.location.href = "clienteForm.aspx?&id=" + c1;
            }
            else {
                alert("Cliente nao existe.");
            }
        },
        error: function (res) {
            alert("erro", res);
        }
    });
}

$(document).ready(function () {
    var grid = $('#Corpo_gridCliente');
    grid.addClass('table table-striped');
});

