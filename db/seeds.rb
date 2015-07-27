

tasks = [
  {name: "The First Task", description: "Hello", date_completed: ""},
  {name: "Go to Brunch", description: "Yum!"},
  {name: "Go to Lunch", description: "I'm hungry", date_completed: ""},
  {name: "Go to Second Lunch", description: ""},
  {name: "Play Video Games", description: "", date_completed: ""},
  {name: "High Five Somebody You Don't Know", description: "", date_completed: ""},
  {name: "Plant Flowers", description: "Oooo...pretty!", date_completed: ""},
  {name: "Call Mom", description: ""},
  {name: "She worries, you know.", description: ""},
  {name: "Nap.", description: "", date_completed: ""}
]

tasks.each do |task|
  Task.create task
end

people = [
  {name: "Corinne"},
  {name: "Ashley"},
  {name: "Katie"},
  {name: "Brittney"}
]

people.each do |person|
  Person.create person
end





