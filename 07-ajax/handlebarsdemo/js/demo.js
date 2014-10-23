var bros = [
  {
    name: 'Groucho',
    instrument: 'ROCKnROLL'
  },
  {
    name: 'Chico',
    instrument: 'JAZZ'
  }
];

$(document).ready( function () {
  var source = $('#brotherTemplate').html();
  var badBrotherHTML = Handlebars.compile(source);

  $.each(bros, function (index, brother) {
    $('#bros').append( badBrotherHTML(brother));
  });
});