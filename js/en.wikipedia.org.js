$( 'a' ).css({
    'border-bottom': '1px solid rgba(0, 0, 0, 0.1)'
});

$( 'a' ).hover( function(){
    $( this ).css({
        'border-bottom': '1px solid rgba(0, 0, 0, 0.3)',
        'text-decoration': 'none'
    });
}, function(){
    $( this ).css({
        'border-bottom': '1px solid rgba(0, 0, 0, 0.1)'
    });
});
