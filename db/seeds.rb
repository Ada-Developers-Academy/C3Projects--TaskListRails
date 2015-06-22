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
  { name: "The First Task", description: "it is the first task", completed_at: random_time, completion_status: true, complete_by: random_time, person_id: 1 },
  { name: "Go to Brunch", description: "mimosas and beignets", completion_status: false, person_id: 3 },
  { name: "Go to Lunch", description: "yummy", completed_at: random_time, completion_status: true },
  { name: "Go to Second Lunch", description: "because food", completion_status: false },
  { name: "Play Video Games", description: "all of them", completed_at: random_time, completion_status: true },
  { name: "High Five Somebody You Don't Know", description: "", completed_at: random_time, completion_status: true },
  { name: "Plant Flowers", description: "sunflowers and daffodils", completed_at: random_time, completion_status: true },
  { name: "Call Mom", description: "at your sister's", completion_status: false },
  { name: "She worries, you know.", description: "always", completion_status: false },
  { name: "Nap.", description: "sweet dreams!", completed_at: random_time, completion_status: true }
]

tasks.each do |task|
  Task.create task
end

people = [
  {name: "Lindsey"},
  {name: "Michelle"},
  {name: "Kari"}
]

people.each do |person|
  Person.create person
end
