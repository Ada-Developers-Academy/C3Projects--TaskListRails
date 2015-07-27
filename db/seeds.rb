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
  {name: "Go to brunch", desc: "mmm foood", person_id: 1},
  {name: "Go to lunch", desc: "MORE FOOD", comp_date: random_time, person_id: 1},
  {name: "Bathroom time", desc: "poop", comp_date: random_time, person_id: 3},
  {name: "Go to second lunch", desc: "can't stop, won't stop", person_id: 2},
  {name: "Play video games", desc: "beerio kart", comp_date: random_time, person_id: 5},
  {name: "High five somebody you don't know", desc: "or don't", comp_date: random_time, person_id: 4},
  {name: "Bake a potato", desc: "sour cream!", person_id: 4},
  {name: "Plant flowers", desc: "peonies", comp_date: random_time, person_id: 2},
  {name: "Call Mom", desc: "she's been calling lots", person_id: 3},
  {name: "She worries, you know.", desc: "worrying sucks", person_id: 3},
  {name: "Nap", desc: "zzzzz", comp_date: random_time },
  {name: "Have sangria", desc: "red wine", person_id: 2},
  {name: "Finish building app", desc: "almost there", person_id: 4},
  {name: "Delete this task", desc: "for testing", comp_date: random_time, person_id: 5}
]

tasks.each do |task|
  Task.create task
end

people = [
  {name: "Rufio", occupation: "lost boy", age: 14},
  {name: "Smee", occupation: "manservant", age: 57},
  {name: "Peter", occupation: "attorney", age: 40},
  {name: "Hook", occupation: "ship captain", age: 678},
  {name: "Tink", occupation: "fairy", age: 29}
]

people.each do |person|
  Person.create person
end

