//Write a function named helloWorld that:
//takes 1 argument, a language code (e.g. "es", "de", "en")
//returns "Hello, World" for the given language, for atleast 3 languages. It should default to returning English.
//Call that function for each of the supported languages and log the result to make sure it works.

var helloWorld = function (languageCode) {
  if (! languageCode) {
    languageCode = 'en';
  }
};

var greeting;
  if languageCode == 'en' {
    return 'hello world';
} else if languageCode == "es" {
    return 'helles world';
} else if languageCode == "de" {
    return "helldes world";
};

