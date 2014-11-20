$(document).ready(function () {
  $('h1').text('zombie hotdgos')
  $('#bill').fadeIn(9000);


  $.getJSON('/numbers').done(function () {
    console.log("ajax done")
  });

  var oldYeller = function (words) {
    words.split(' ').join('').toUpperCase
  };

});

