$(document).ready( function (){
  var nums = [80, 53, 125, 200, 28, 97];

  var svg = d3.select('body').append('svg').attr('width', 200).attr('height', 200);

  var bars = svg.selectAll('rect').data(nums);

  bars.enter().append('rect');
});