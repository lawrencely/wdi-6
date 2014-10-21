
// finding out the exchange rate with only variables
var greatBritishPound = 0.5434
var audDollar = 1

var audAmount = 5

console.log("$" + audAmount + " is £" + Math.round(audAmount * greatBritishPound));

var greatBritishPound = 0.5434
var audDollar = 1.8404

var audAmount = 5
var gbpamount = 10
var conversion = audDollar * gbpamount

console.log("£" + gbpamount + " is $" + conversion);

//finding out exchange rate with function
var dollarToPound = function (aud) {
  var gbp = 0.5434
  var rate = (aud * gbp);
  var result = ("$" + aud + " is " + "£" + rate);
  console.log(result);
};

console.log(dollarToPound(10));

var poundToDollar = function (gbp) {
  var aud = 1.8404
  var rate = (gbp * aud);
  var result = ("£" + gbp + " is $" + rate);
  console.log(result);
};

console.log(poundToDollar(5.434));







