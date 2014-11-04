items = ['beer1', 'beer2', 'beer3','beer4']

fridge = 'full of beer'

beer_lover = true if fridge == 'full of beer'

if fridge == 'full of beer' and items.length > 0
  console.log 'you love beer'

drinkBeer = ->
  beer = items.pop()
  console.log 'Drinking ' + beer # || "Drinking #{ beer }"

while items.length > 0 then drinkBeer()

for item in items
  console.log item

for i in [5..0]
  console.log i

for item in items when item isnt 'beer2'
  console.log 'You love ' + item

fridge =
  beer: ["beer1", "beer2", "beer3"]
  chips: ["bbq", "potato"]
  consume: (item) ->
    @beer.pop()

fridge.consume fridge.chips
console.log fridge

$(document).ready ->
  $('button').on 'click', ->
    console.log 'Thank you for clicking'

hedgehogs = [1..10]

#take existing javascript and write in coffee script