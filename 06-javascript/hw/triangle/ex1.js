
var area = function (triangle) {
  if (triangle.sideA + triangle.sideB > triangle.sideC &&
      triangle.sideA + triangle.sideC > triangle.sideB &&
      triangle)

  // via Heron's Formula
  s = (triangle.sideA + triangle.sideB + triangle.sideC) / 2,
  a = Math.sqrt(s * (s - triangle.sideA)*(s - triangle.sideB)*(s - triangle.sideC));

  return a;
};

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 5
};

console.log(area(triangle));