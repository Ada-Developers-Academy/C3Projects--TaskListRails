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
{  name: "The First Task", description: "", completed: random_time},
{  name: "Go to Brunch", description: ""},
  {name: "Go to Lunch", description: "", completed: random_time},
  {name: "Go to Second Lunch", description: ""},
  {name: "Play Video Games", description: "", completed: random_time},
{name: "High Five Somebody You Don't Know", description: "", completed: random_time},
  {name: "Plant Flowers", description: "", completed: random_time},
{    name: "Call Mom", description: ""},
  {name: "She worries, you know.", description: ""},
  {name: "Nap.", description: "", completed: random_time},
  {name: "Basketball", description: "Play East-West College Bowl", completed: "Yes", date: "06/06/2013"},
  {name: "Play Guitar", description: "Be excellent", completed: "No"},
]

tasks.each do |task|
  Task.create task
end

# ---------------------------------------
# Seeds for person table

people = [
  {name: "Belinda", star_sign: "Aries"},
  {name: "Jammie-Jammie Jam"},
  {name: "Harry Potter", star_sign: "Pisces"},
  {name: "Norman Bates"},
  {name: "Seymour"}
]

people.each do |person|
  Person.create person
end
