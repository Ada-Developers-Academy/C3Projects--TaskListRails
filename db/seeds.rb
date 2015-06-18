# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  {name: "The First Task", desc: "do it", comp_date: random_time},
  {name: "Go to Brunch", desc: "mmm foood"},
  {name: "Go to Lunch", desc: "MORE FOOD", comp_date: random_time},
  {name: "Go to Second Lunch", desc: "can't stop, won't stop"},
  {name: "Play Video Games", desc: "beerio kart", comp_date: random_time},
  {name: "High Five Somebody You Don't Know", desc: "or don't", comp_date: random_time},
  {name: "Bake a potato", desc: "don't forget the sour cream!"},
  {name: "Plant Flowers", desc: "peonies", comp_date: random_time},
  {name: "Call Mom", desc: "she's been calling lots",},
  {name: "She worries, you know.", desc: "worrying sucks",},
  {name: "Nap.", desc: "zzzzz", comp_date: random_time}
]

tasks.each do |task|
  Task.create task
end

