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

seed_tasks = [
  { name: "Breakfast", description: "", completed_at: random_time, person_id: 1 },
  { name: "Second breakfast", description: "",  person_id: 1},
  { name: "Elevenses", description: "Comes after 2nd breakfast but before lunch",  person_id: 1},
  { name: "Luncheon", description: "", completed_at: random_time,  person_id: 1},
  { name: "Afternoon tea", description: "",  person_id: 1},
  { name: "Dinner", description: "before supper", completed_at: random_time, person_id: 1 },
  { name: "Supper", description: "",  person_id: 1},
  { name: "Enjoy the sun", description: "It's CA, so it's always sunny!",  person_id: 2},
  { name: "Meditate", description: "I want to be a zen master!",  person_id: 2},
  { name: "Walk Bentley", description: "I miss that guy :(",  person_id: 2},
  { name: "Call Ash", description: "She's the best!",  person_id: 2}
]

seed_tasks.each do |task|
  Task.create task
end

seed_people = [
  { name: "Ashley" },
  { name: "Mike" }
]

seed_people.each do |person|
  Person.create(person)
end
