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
  { name: "The First Task", description: "sdfsdf", completed_at: random_time },
  { name: "Go to Brunch", description: "12312123" },
  { name: "Go to Lunch", description: "123123", completed_at: random_time },
  { name: "Go to Second Lunch", description: "123123" },
  { name: "Play Video Games", description: "12312312", completed_at: random_time },
  { name: "High Five Somebody You Don't Know", description: "1231232", completed_at: random_time },
  { name: "Plant Flowers", description: "123123", completed_at: random_time },
  { name: "Call Mom", description: "sdfdsfsd" },
  { name: "She worries, you know.", description: "mixx it up" },
  { name: "Nap.", description: "sdfsdfdsf", completed_at: random_time }
]

tasks.each do |task|
  Task.create task
end

people = [
  { name: "Will" },
  { name: "Carlton" },
  { name: "Hilary" }
]

people.each do |person|
  Person.create person
end

Task.all.each do | task |
  if task.id % 3 == 0
    person = Person.where(name: "Will")[0]
    task.person_id = person.id
  elsif task.id % 2 == 0
    person = Person.where(name: "Carlton")[0]
    task.person_id = person.id
  else
    person = Person.where(name: "Hilary")[0]
    task.person_id = person.id
  end
  task.save
end


#only here when run it, gone after creation
