$('#EsconderFilmes').click(function(){
    $('#dosFilmes').hide();
})
$('#MostrarFilmes').click(function(){
    $('#dosFilmes').show();
});
$('#EsconderSerie').click(function(){
    $('#dasSeries').hide();
})
$('#MostrarSerie').click(function(){
    $('#dasSeries').show();
});
$('#EsconderAnimes').click(function(){
    $('#dosAnimes').hide();
})
$('#MostrarAnimes').click(function(){
    $('#dosAnimes').show();
});
$('#fundoPrimary').click(function(){
    $('body').addClass('bg-primary')
});
$('#fundoSecondary').click(function(){
    $('body').addClass('bg-secondary')
});
$('#fundoSuccess').click(function(){
    $('body').addClass('bg-success')
});
$('#fundoDanger').click(function(){
    $('body').addClass('bg-danger')
});
$('#fundoWarning').click(function(){
    $('body').addClass('bg-warning')
});
$('#fundoInfo').click(function(){
    $('body').addClass('bg-info')
});
$('#fundoLight').click(function(){
    $('body').addClass('bg-light')
});
$('#fundoDark').click(function(){
    $('body').addClass('bg-dark')
});
$('#semFundo').click(function(){
    $('body').removeClass('bg-dark bg-light bg-info bg-warning bg-danger bg-success bg-secondary bg-primary')
});
$('#enviar').click(function(){
    alert("Nome: " + $('#nome').val() + "\n E-Mail: " + $('#email').val() + "\n Mensagem: " + $('#mensagem').val());
});