/********************************ONLOAD******************************/
$(document).ready(function () {
    $('body').css('overflow', 'auto');
    Consultar();
    $(document).on('click', '.btn-success', function () {
        t = $(this).closest('tr');
        Cadastrar($(t));
    });
    $(document).on('keydown change', '.preco, .preco_compra, #preco, #preco_compra, .quantidade, #quantidade', function (evt) {
        texto = $(this).val();
        texto = texto.replace(/[!|@|#|$|%|¨|&|*|(|)|+|<|>|;|:|`|´|{|}]/gi, "");
        texto = texto.replace(/[abcdefghijklmnopqrstuvwxyz]/gi, "");
        //texto = texto.replace(/\D+/g, "")
        $(this).val(texto);
    });
    $(document).on('click', '.edit', function () {
        //id = $(this).closest('tr').find('.id').text();
        $('#id').val($(this).closest('tr').find('.id').text());
        $('#nome').val($(this).closest('tr').find('.nome').text());
        $('#tipo').val($(this).closest('tr').find('.tipo').text());
        $('#descricao').val($(this).closest('tr').find('.descricao').text());
        $('#fabricante').val($(this).closest('tr').find('.fabricante').text());
        $('#quantidade').val($(this).closest('tr').find('.quantidade').text());
        $('#tipo_uni').val($(this).closest('tr').find('.tipo_uni').text());
        $('#preco').val($(this).closest('tr').find('.preco').text());
        $('#preco_compra').val($(this).closest('tr').find('.preco_compra').text());
        $('#preco_compra').val($(this).closest('tr').find('.preco_compra').text());
    });
    $(document).on('click', '.btn-update', function () {
        ParaEditar();
    });
    $(document).on('click', '.delete', function () {
        id = $(this).closest('tr').find('.id').text();
        swal({
            title: "Tem certeza que deseja excluir o registro?",
            text: "Os dados do registro serão apagados permanentemente!",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "Yes, delete it!",
            closeOnConfirm: false
        },
        function () {
            $(function () {
                Excluir(id);
                //
            });
        });

    });
    /********************************FIM ONLOAD******************************/
});
function Excluir(id) {
    datas = "id=" + id;
    $.ajax({
        type: "POST",
        url: "resorce/excluir.jsp",
        data: datas,
        dataType: "html",
        timeout: 7000,
        success: function (response) {
            $('#loading').css('display', 'none');
            //swal("Erro: ", response, "error");
            var resp = JSON.parse(response);
            swal(resp.title, resp.messsage, resp.type);
            $(document).on('click', '.confirm', function () {
                setTimeout(function () {
                    Consultar();
                }, 1000);

            });
        },
        error: function (x, t, m) {
            $('#loading').css('display', 'none');
            if (t === "timeout") {
                $('#loading').css('display', 'none');
                swal("Erro: ", "Tempo de requisição esgotado :( ", "error");
            } else {
                swal("Erro: ", "Erro ao requisitar servidor " + t + x + m + ":(", "error");
            }
        }
    });
}
function ParaEditar() {
    id = "id=" + $('#id').val();

    if ($('#nome').val().trim() == "") {
        nome = "&nome=Nome";
    } else {
        nome = "&nome=" + $('#nome').val();
    }

    if ($('#tipo').val().trim() == "") {
        tipo = "&tipo=padrao";
    } else {
        tipo = "&tipo=" + $('#tipo').val();
    }
    if ($('#descricao').val().trim() == "") {
        descricao = "&descricao=descricao";
    } else {
        descricao = "&descricao=" + $('#descricao').val();
    }
    if ($('#fabricante').val().trim() == "") {
        fabricante = "&fabricante=fabricante";
    } else {
        fabricante = "&fabricante=" + $('#fabricante').val();
    }
    if ($('#quantidade').val().trim() == "") {
        quantidade = "&quantidade=1";
    } else {
        quantidade = "&quantidade=" + $('#quantidade').val();
    }
    tipo_uni = "&tipo_uni=" + $('#tipo_uni').val();
    preco = "&preco=" + $('#preco').val().replace(",", ".");

    preco_compra = "&preco_compra=" + $('#preco_compra').val().replace(",", ".");

    datas = id + nome + tipo + descricao + fabricante + quantidade + tipo_uni + preco + preco_compra;
    $.ajax({
        type: "POST",
        url: "resorce/editar.jsp",
        data: datas,
        dataType: "html",
        timeout: 7000,
        success: function (response) {
            $('#loading').css('display', 'none');
            //swal("Erro: ", response, "error");
            var resp = JSON.parse(response);
            swal(resp.title, resp.messsage, resp.type);
            Consultar();
        },
        error: function (x, t, m) {
            $('#loading').css('display', 'none');
            if (t === "timeout") {
                $('#loading').css('display', 'none');
                swal("Erro: ", "Tempo de requisição esgotado :( ", "error");
            } else {
                swal("Erro: ", "Erro ao requisitar servidor " + t + x + m + ":(", "error");
            }
        }
    });
}


function Consultar() {
    $('#loading').css('display', 'block');
    $.ajax({
        type: "POST",
        url: "resorce/consulta.jsp",
        //data: datas,
        dataType: "html",
        timeout: 10000,
        success: function (response) {
            $('#loading').css('display', 'none');
            $('#datatable').find('tbody').empty();
            $('#datatable').append(response);
        },
        error: function (x, t, m) {
            $('#loading').css('display', 'none');
            if (t === "timeout") {
                $('#loading').css('display', 'none');
                swal("Erro: ", "Tempo de requisição esgotado :( ", "error");
            } else {
                swal("Erro: ", "Erro ao requisitar servidor " + t + ":(", "error");
            }
        }
    });
}


function Cadastrar(tr) {
    $('#loading').css('display', 'block');
    if (tr.find('.nome').val().trim() == "") {
        nome = "nome=Nome";
    } else {
        nome = "nome=" + tr.find('.nome').val();
    }
    if (tr.find('.tipo').val().trim() == "") {
        tipo = "&tipo=padrao";
    } else {
        tipo = "&tipo=" + tr.find('.tipo').val();
    }
    if (tr.find('.descricao').val().trim() == "") {
        descricao = "&descricao=descricao";
    } else {
        descricao = "&descricao=" + tr.find('.descricao').val();
    }
    if (tr.find('.fabricante').val().trim() == "") {
        fabricante = "&fabricante=fabricante";
    } else {
        fabricante = "&fabricante=" + tr.find('.fabricante').val();
    }
    if (tr.find('.quantidade').val().trim() == "") {
        quantidade = "&quantidade=1";
    } else {
        quantidade = "&quantidade=" + tr.find('.quantidade').val();
    }
    if (tr.find('.tipo_uni').val().trim() == "") {
        tipo_uni = "&tipo_uni=uni";
    } else {
        tipo_uni = "&tipo_uni=" + tr.find('.tipo_uni').val();
    }
    preco = "&preco=" + tr.find('.preco').val().replace(",", ".");

    preco_compra = "&preco_compra=" + tr.find('.preco_compra').val().replace(",", ".");

    datas = nome + tipo + descricao + fabricante + quantidade + tipo_uni + preco + preco_compra;
    //swal("Mensagem: ", datas, "success");
    $.ajax({
        type: "POST",
        url: "resorce/cadastro.jsp",
        data: datas,
        dataType: "html",
        timeout: 7000,
        success: function (response) {
            $('#loading').css('display', 'none');
            swal("Erro: ", response, "error");
            var resp = JSON.parse(response);
            swal(resp.title, resp.messsage, resp.type);
            Consultar();
        },
        error: function (x, t, m) {
            $('#loading').css('display', 'none');
            if (t === "timeout") {
                $('#loading').css('display', 'none');
                swal("Erro: ", "Tempo de requisição esgotado :( ", "error");
            } else {
                swal("Erro: ", "Erro ao requisitar servidor " + t + ":(", "error");
            }
        }
    });
}


function soNums(e) {
    keyCodesPermitidos = new Array(8, 9, 37, 39, 46, 44);
    for (x = 48; x <= 57; x++) {
        keyCodesPermitidos.push(x);
    }
    for (x = 96; x <= 105; x++) {
        keyCodesPermitidos.push(x);
    }
    keyCode = e.which;
    if ($.inArray(keyCode, keyCodesPermitidos) != -1) {
        return true;
    }
    return false;
}
