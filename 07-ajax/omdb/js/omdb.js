$(document).ready(function () {
   $('#search').on('click', findMovie);
   $('#multipleSearch').on('click', multipleMovie);
   $('#clearHistory').on('click', clearHistory);
});

var findMovie = function () {

  var movieSearch = $('#movieSearch').val();
  var url = 'http://www.omdbapi.com/?t=' + movieSearch;
  $.ajax( url , {dataType: 'json'}).done(function (result) {
    $movie = $('<div>', {'class': 'title'});
    $movie.append($('<p>').text('Title: ' + result.Title));
    $movie.append($('<p>').text('Year: ' + result.Year));
    $movie.append($('<p>').text('Plot: ' + result.Plot));
    $('<img>', { src: result.Poster }).appendTo($movie);
    $movie.appendTo('.container');
  });
}

var multipleMovie = function () {

  var movieSearch = $('#movieSearch').val();
    $.ajax('http://www.omdbapi.com/?s=' + movieSearch, {dataType: 'json'}).done(function (result) {
      $.each(result.Search, function ( index ,value) {
      $movies = $('<div>', {'class': 'multipleMovie'});
      $movies.append($('<p>').text('Title: ' + value.Title ));
      $movies.append($('<p>').text('Year:  ' + value.Year  ));
      $movies.appendTo('.multipleContainer');
    });
  });
}

var clearHistory = function () {
  ('#movieSearch').empty();
  ('.container').empty();
}
