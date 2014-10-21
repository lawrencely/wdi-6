Planet.destroy_all

Planet.create(:name => 'Earth', :orbit => 364.25, :moons => 1)
Planet.create(:name => 'Mars', :orbit => 400, :moons => 2)
Planet.create(:name => 'Venus', :orbit => 300, :moons => 0)
Planet.create(:name => 'Jupiter', :orbit => 600, :moons => 7)
Planet.create(:name => 'Neptune', :orbit => 1000, :moons => 3)





# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
