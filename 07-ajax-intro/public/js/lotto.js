$(document).ready( function () {
  setInterval(function () {
    $.ajax('/time.json').done(function (stamp) {
      $('body').html('<p>Current time:' + stamp.now + '</p>')
      $('<p></p>').text('Lucky Number:' + stamp.lucky_number).appendTo('body');
    });
  }, 1000);
});

// $(document).ready(function () {
//   $.ajax('/hi.json').done(function (result){
//   var $heading = $('<h1></h1>');
//   $heading.text( result.word2 + ' ' + result.word1   );
//   $('body').append($heading);
//   });
// });


//   $.ajax('/hi', {
//     success: function (result) {
//       $('body').html(result);

//     }
//   })
// });


// var request = new XMLHttpRequest();
// request.open('GET', '/lotto', false);
// request.send();

// //The request is still running in the background at this point.
// console.log("received", request.responseText);
// alert(request.responseText);

// var slowRequest = function () {
//   var request = new XMLHttpRequest();
//   request.open('GEt','/lotto', true );
//   request.onreadystatechange = function () {
//       console.log("readyState updated", request.readyState);
//     if (request.readyState === 4 ) {
//       alert(request.responseText);
//     }
//   }
//   request.send();
// };

// slowRequest();
