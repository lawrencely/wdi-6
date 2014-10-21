$(document).ready( function () {
  $('#search').on('click', searchFlickr);
  $('#clear').on('click', clearPhotos);
  $(window).on('scroll', maybeLoad);
});

var requestInProgress = false;
var pageNumber = 1;

var changeScrollPage = function () {
  pageNumber = pageNumber + 1
}

var maybeLoad = function () {
  if (requestInProgress) {
    return;
  }
  var scrollTop = $(window).scrollTop();
  var docHeight = $(document).height();
  var windowHeight = $(window).height();

  if (scrollTop > docHeight - (3 * windowHeight )) {
    searchFlickr();
  }
}

var clearPhotos = function () {
  $('#images').empty();
};

var searchFlickr = function (event) {
  var query = $('#query').val()
  var flickrUrl = 'https://api.flickr.com/services/rest/?jsoncallback=?';
  requestInProgress = true;
  $.getJSON(flickrUrl, {
    method: 'flickr.photos.search',
    api_key: '2f5ac274ecfac5a455f38745704ad084',
    page: pageNumber,
    text: query,
    format: 'json',
  }, processImages);
};

var processImages = function (result) {

  requestInProgress = false
  changeScrollPage();

  if (result.stat != 'ok') {
    return;
  }

  _(result.photos.photo).each( function (photo) {
    var title = photo.title;
    var url = [
      'https://farm',
      photo.farm,
      '.staticflickr.com/',
      photo.server,
      '/', photo.id,
      '_', photo.secret,
      '_q.jpg'
      ].join('');

    $contain = $('<div>', {"class": 'thumb'});

      $('<img>', {
        src: url
      }).appendTo($contain);

    $contain.append($('<p>').text(title));
    $contain.appendTo('#images');
  });
};