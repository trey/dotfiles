$('body').css({
    'font': '18px Helvetica, sans-serif',
    'color': 'rgba(0, 0, 0, 0.8)'
});
// Main text description and first subheading at the top of the page
$('center + p, h1 + p').css({
    'text-align': 'left',
    'max-width': '900px',
    'margin': '20px auto',
    'line-height': '1.3em'
});
// Date above image
$('h1 + p + p').css({
    'color': 'rgba(0, 0, 0, 0.2)',
    'line-height': '2.0em'
});
// Image credits below image
$('center + center').css({
    'margin': '30px 0'
});
$('hr').css({
    'border': '1px solid rgba(0, 0, 0, 0.1)'
});
