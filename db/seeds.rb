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
  {name: "Go to brunch", desc: "mmm foood"},
  {name: "Go to lunch", desc: "MORE FOOD", comp_date: random_time},
  {name: "Bathroom time", desc: "poop", comp_date: random_time},
  {name: "Go to second lunch", desc: "can't stop, won't stop"},
  {name: "Play video games", desc: "beerio kart", comp_date: random_time},
  {name: "High five somebody you don't know", desc: "or don't", comp_date: random_time},
  {name: "Bake a potato", desc: "sour cream!"},
  {name: "Plant flowers", desc: "peonies", comp_date: random_time},
  {name: "Call Mom", desc: "she's been calling lots"},
  {name: "She worries, you know.", desc: "worrying sucks"},
  {name: "Nap", desc: "zzzzz", comp_date: random_time},
  {name: "Have sangria", desc: "red wine"},
  {name: "Finish building app", desc: "almost there"},
  {name: "Delete this task", desc: "for testing", comp_date: random_time}
]

tasks.each do |task|
  Task.create task
end

