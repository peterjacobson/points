//Toggle new point div
$('#new-point-anchor').click(function() {
  var $form = $('#new-point-form');
  console.log('anchor button clicked!');

  if ($form.css('height') != '0') {
    $form.css('height', '0');
  } else {
    $form.css('height', 'initial');
  }
});
