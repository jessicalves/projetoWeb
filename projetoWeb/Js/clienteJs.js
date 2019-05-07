function editarCliente() {
    var c1 = document.getElementById("inputCliente").value;
    console.log('aqui');
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
                alert("Cliente nao existe.");
            }
        },
        error: function (res) {
            alert("Informe o ID do cliente", res);
        }
    });
}

$(document).ready(function () { //quando o documento estiver pronto chame essa função
    var grid = $('#Corpo_gridCliente');
    grid.addClass('table table-striped ');
});
$(document).ready(function () {
    $("tbody").attr("id", "idBody");
});

//var rows = $('tr.immediate');
//var table = $('#Corpo_gridCliente');
//var a = table.click.idCliente;

//var rowData = table.rows(rows).data();
//console.log(a);

//var table = $('#Corpo_gridCliente').DataTable();

//$('#idBody').on('click', 'tr', function () {
//    var table = $('#Corpo_gridCliente');
//    var rowData = table.row(this).data();
//    console.log(rowData);
//    // ... do something with `rowData`

//var rows = document.getelementsbytagname('tr');
//for (var row in rows) {
//    row.addeventlistener('click', function (e) {
//        console.log(e.target);
//    });
//}

//document.addEventListener('click', function () {
//    //console.log(e.target);
//    var table = $('#Corpo_gridCliente');
//    var rowData = table.row(this).data();
//    console.log(rowData);
//})
