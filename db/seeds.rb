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
  { name: "Breakfast", completed_at: random_time },
  { name: "Second breakfast"},
  { name: "Elevenses", description: "Comes after 2nd breakfast but before lunch"},
  { name: "Luncheon", completed_at: random_time},
  { name: "Afternoon tea"},
  { name: "Dinner", description: "before supper", completed_at: random_time },
  { name: "Supper"},
]

seed_tasks.each do |task|
  Task.create task
end
