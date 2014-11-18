$(document).ready(function () {
  $('h1').text('zombie hotdgos')
  $('#bill').fadeIn(9000);


  $.getJSON('/numbers');

  var oldYeller = function (words) {
    words.split(' ').join('').toUpperCase
  };

});

