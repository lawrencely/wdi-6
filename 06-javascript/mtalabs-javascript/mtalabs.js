var stations = {
  n: ["times_square", "34th", "28th_n", "23rd", "union_square", "8th_n"],
  l: ["8th_l", "6th", "union_square", "3rd", "1st"],
  six: ["grand_central", "33rd", "28th_6", "23rd", "union_square", "astor_place"]
}

var originLine = function (station) { // the variable originLine has a function w/ one argurment
  for (var line in stations) { //loop all the stations into line
    if (stations[line].indexOf(station) > -1){ // if index
      return line;
    }
  }
};

var stationStops = function (stopA,stopB,line) {
    var distance = Math.abs(stations[line].indexOf(stopA) - stations[line].indexOf(stopB));
    return distance;
};

var distanceBetweenStops = function (stopA, stopB){
  var lineA = originLine(stopA);
  var lineB = originLine(stopB);
  if (lineA === lineB) {
    return stationStops(stopA, stopB, lineA);
    } else {
      var distanceA = stationStops(stopA, 'union_square', lineA);
      var distanceB = stationStops('union_square', stopB, lineB);
      return (distanceA + distanceB);

  }
};

var listStationsOnWords = function (stopA, stopB, line) {
  //for (line in stations) {
    var indexOfStopA = stations[line].indexOf(stopA);
    var indexOfStopB = stations[line].indexOf(stopB);
    var listOfStops = '';
    for (i = indexOfStopA; i <= indexOfStopB; i++) {
      listOfStops += stations[line][i];
    }
  //}
  return listOfStops;
};

$(document).ready(function() {

  $('button').on('click', function (e) {
    e.preventDefault();

    var start = $('#stopA').val().split(',');
    var startLine = start[0];
    var startStation = start[1];

    var stop = $('#stopB').val().split(',');
    var stopLine = stop[0];
    var stopStation = stop[1];

    var textInTheDiv = '';

    if (startLine === stopLine) {
      textInTheDiv += distanceBetweenStops( startStation, stopStation);
      textInTheDiv += listStationsOnWords(startStation, stopStation, startLine);
      $('#result').text(textInTheDiv);

    } else {
      textInTheDiv += listStationsOnWords(startStation, 'union_square', startLine);
      textInTheDiv += listStationsOnWords('union_square', stopStation, stopLine);

      textInTheDiv += distanceBetweenStops( startStation, stopStation );
      $('#result').text(textInTheDiv);


  }

  // var textInTheDiv = '';
  // textInTheDiv += distanceBetweenStops( $('#stopA').val(), $('#stopB').val())
  // textInTheDiv += listStationsOnWords($('#stopA').val(), $('#stopB').val());
  // $('#result').text(textInTheDiv);

  });
});




// for (i = 0; i < 2; i++) { console.log(stations['n'][i])};



// var origin_line = $('button').on('click', station)
// var origin_station = stations[line_answer].index(first_line_station)
// var destination_line = stations[second_line_answer]
// var destination_station = stations[second_line_answer].index(second_line_station)
// var start_intersect_index = 0

// if (originLine === destinationLine) {
//     result = Math.abs(originStation - destinationStation);

//     console.log((originStation .. destinationStation)
// }

//##################################

















