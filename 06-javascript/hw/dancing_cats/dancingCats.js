var movePixels = 10;
var delayMs = 50;
var catTimer = null;
var catWalk = function () {
  var img = document.getElementsByTagName('img')[0];
  var currentLeft = parseInt(img.style.left);
  img.style.left = (currentLeft + movePixels) + 'px';

  if (currentLeft > (window.innerWidth-img.width)) {
    // img.style.left = (currentLeft * 1) + 'px';
    movePixels = -10;
    return catWalk();

  }
  if (currentLeft < 0) {
    movePixels = 10;
    return catWalk();
  }
}
var This_is_an_array = []; //thanks V
var startCatWalk = function () {
  catTimer = window.setInterval(catWalk, delayMs);
  array.push(catTimer);
}

var speedCatwalk = function () {
  delayMs += 10;
  catTimer = window.setInterval(catWalk, delayMs);
  array.push(catTimer);
  // movePixels = movePixels + 10;
};

var slowCatwalk = function () {
  movePixels = movePixels - 10;
};

var stopCatWalk = function () {
  for (i=0; i < array.length; i++) {
  window.clearInterval(array[i]);
}
};


startButton = document.getElementById('start-button');
speedButton = document.getElementById('speed-button');
stopButton = document.getElementById('stop-button');

startButton.addEventListener('click',startCatWalk);
speedButton.addEventListener('click', speedCatwalk);
stopButton.addEventListener('click', stopCatWalk);
