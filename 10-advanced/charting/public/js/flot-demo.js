$(document).ready( function () {
  $.getJSON('/beverages.json').done(function( beverageData) {
    var coffee = _zip_(beverageData).pluck('coffee');
    var water = _(beverageData).pluck('water');
    var beer = _(beverageData).pluck('beer');
    var whiskey = _(beverageData).pluck('whiskey');

    $.plot($('#hydration-week'), [[coffee, water, beer, whiskey]])

  });
});

$(document).ready( function () {
  $.plot($("#placeholder"), [ [[0, 0], [1, 1]] ], { yaxis: { max: 1 } });
});