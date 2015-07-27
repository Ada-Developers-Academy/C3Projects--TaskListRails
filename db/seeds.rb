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
  {name: "Run away from Zombie", description: "Because they think your brains are food.", completed_date: random_time},
  {name: "Go to Brunch", description: "Where do you want to go to brunch? Not too crowded."},
  {name: "Go to Lunch", description: "Pho is delicious for lunch", completed_date: random_time},
  {name: "Go to Second Lunch", description: "Maybe you would like spring rolls for second lunch"},
  {name: "Play Video Games", description: "Throwback to classic MarioCart", completed_date: random_time},
  {name: "High Five Somebody You Don't Know", description: "Do you know how weird people think you are if you do this?", completed_date: random_time},
  {name: "Plant Flowers", description: "Probably some daisies and california poppies", completed_date: random_time},
  {name: "Call Dad", description: "It is almost Father's Day"},
  {name: "Call your Zombie Friend", description: "He only wants to eat your eyes"},
  {name: "Nap.", description: "But only if it won't make you drowsy", completed_date: random_time}
]

people = [
  {name: "Brenna"},
  {name: "Jeremy"},
  {name: "Elia"},
  {name: "Kari"}
]

people.each do |person|
  Person.create person
end

tasks.each do |task|
  Task.create task
end
