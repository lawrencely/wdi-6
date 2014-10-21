var button = document.getElementById('lib-button');
var makeMadLib = function () {
  var noun = document.getElementById('noun').value;
  var adjective = document.getElementById('adjective').value;
  var person = document.getElementById('person').value;
  p = person + " really likes " + adjective + " " + noun + ".";
  document.getElementById('story').innerHTML = p;

};

button.addEventListener('click', makeMadLib);
