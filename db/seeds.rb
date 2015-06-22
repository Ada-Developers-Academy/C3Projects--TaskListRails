def random_time
  Time.at(rand * Time.now.to_i)
end

people = [
  {name: "Sally", description: "An awesome person!"},
  {name: "marleigh!", description: "A Wonderful Person"},
  {name: "Carly", description: "An OK person"}
]

tasks = [
  { name: "The First Task", description: "", completed_at: random_time, person_id: 1 },
  { name: "Go to Brunch", description: "", person_id: 2 },
  { name: "Go to Lunch", description: "", completed_at: random_time, person_id: 1 },
  { name: "Go to Second Lunch", description: "", person_id: 3 },
  { name: "Play Video Games", description: "", completed_at: random_time, person_id: 2 },
  { name: "High Five Somebody You Don't Know", description: "", completed_at: random_time, person_id: 3 },
  { name: "Plant Flowers", description: "", completed_at: random_time, person_id: 3 },
  { name: "Call Mom", description: "", person_id: 2 },
  { name: "She worries, you know.", description: "", person_id: 1 },
  { name: "Nap.", description: "", completed_at: random_time, person_id: 2 }
]

tasks.each do |task|
  Task.create task
end


people.each do |person|
  Person.create person
end
