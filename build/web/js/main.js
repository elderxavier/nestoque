/******************* READY ************************/
$(document).ready(function () {
    var iframe_height = parseInt($('html').height());
    window.parent.postMessage(iframe_height, 'http://bootsnipp.com');    
    /*****************consulta_estoque.jspf******************/
    $("[data-toggle=tooltip]").tooltip();
    $('#datatable').dataTable();
    $(tr).appendTo($('#tab_logic'));
            $(tr).find("td button.row-remove").on("click", function() {
    $(this).closest("tr").remove();
    });
    /*****************fim consulta_estoque.jspf******************/
    
});
/******************* FIM READY ************************/

var defaultCSS = document.getElementById('bootstrap-css');
function changeCSS(css) {
    if (css)
        $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="' + css + '" type="text/css" />');
    else
        $('head > link').filter(':first').replaceWith(defaultCSS);
}

var defaultCSS = document.getElementById('bootstrap-css');

function changeCSS(css) {
    if (css)
        $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="' + css + '" type="text/css" />');
    else
        $('head > link').filter(':first').replaceWith(defaultCSS);
}

$(document).ready(function () {
    var iframe_height = parseInt($('html').height());
    window.parent.postMessage(iframe_height, 'http://bootsnipp.com');
});

var defaultCSS = document.getElementById('bootstrap-css');
function changeCSS(css) {
    if (css)
        $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="' + css + '" type="text/css" />');
    else
        $('head > link').filter(':first').replaceWith(defaultCSS);
}
$(document).ready(function () {
    var iframe_height = parseInt($('html').height());
    window.parent.postMessage(iframe_height, 'http://bootsnipp.com');
});

