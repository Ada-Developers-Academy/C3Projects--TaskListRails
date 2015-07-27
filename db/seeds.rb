def random_time
  Time.at(rand * Time.now.to_i)
end

new_people = [
  { name: "Jack" },
  { name: "Samantha" },
  { name: "Daniel" },
  { name: "Teal'c" }
]

new_people.each do |person|
  Person.create person
end

new_tasks = [
  { name: "The First Task", description: "do something cool", date_completed: random_time, person_id: 2 },
  { name: "Go to Brunch", description: "eat Eggs Benedict", person_id: 3 } ,
  { name: "Go to Lunch", description: "eat a sandwich", date_completed: random_time, person_id: 1 },
  { name: "Go to Second Lunch", description: "eat some tacos", person_id: 4 },
  { name: "Play Video Games", description: "Zelda all the way", date_completed: random_time, person_id: 1} ,
  { name: "High Five Somebody You Don't Know", description: "like, a stranger", date_completed: random_time, person_id: 2 },
  { name: "Plant Flowers", description: "", date_completed: random_time, person_id: 3 },
  { name: "Call Mom", description: "on the telephone", person_id: 4 },
  { name: "She worries, you know.", description: "you know she does", person_id: 1 },
  { name: "Nap.", description: "super hard", date_completed: random_time, person_id: 2}
]

new_tasks.each do |task|
  Task.create task
end
