def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "The First Task", description: "", completed_at: random_time, person_id: 1 },
  { name: "Go to Brunch", description: "", person_id: 3 },
  { name: "Go to Lunch", description: "", completed_at: random_time, person_id: 2 },
  { name: "Go to Second Lunch", description: "", person_id: 2 },
  { name: "Play Video Games", description: "", completed_at: random_time, person_id: 3 },
  { name: "High Five Somebody You Don't Know", description: "", completed_at: random_time, person_id: 3 },
  { name: "Plant Flowers", description: "", completed_at: random_time, person_id: 1 },
  { name: "Call Mom", description: "", person_id: 3 },
  { name: "She worries, you know.", description: "", person_id: 1 },
  { name: "Nap.", description: "", completed_at: random_time, person_id: 2 }
]

tasks.each do |task|
  Task.create task
end

people = [
  { name: "Bob", birthday: "", age: 5  },
  { name: "Spot", birthday: "", age: 31 },
  { name: "Tyrone", birthday: "", age: 28 }
]

people.each do |person|
  Person.create person
end
