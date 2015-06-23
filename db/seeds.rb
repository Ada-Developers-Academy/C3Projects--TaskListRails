# def random_time
#   Time.at(rand * Time.now.to_i)
# end

# new_tasks = [
#   { name: "The First Task", description: "do something cool", date_completed: random_time },
#   { name: "Go to Brunch", description: "eat Eggs Benedict" } ,
#   { name: "Go to Lunch", description: "eat a sandwich", date_completed: random_time },
#   { name: "Go to Second Lunch", description: "eat some tacos" },
#   { name: "Play Video Games", description: "Zelda all the way", date_completed: random_time} ,
#   { name: "High Five Somebody You Don't Know", description: "like, a stranger", date_completed: random_time },
#   { name: "Plant Flowers", description: "", date_completed: random_time },
#   { name: "Call Mom", description: "on the telephone" },
#   { name: "She worries, you know.", description: "you know she does" },
#   { name: "Nap.", description: "super hard", date_completed: random_time}
# ]

# new_tasks.each do |task|
#   Task.create task
# end

new_people = [
  { name: "Jack" },
  { name: "Samantha" },
  { name: "Daniel" },
  { name: "Teal'c" }
]

new_people.each do |person|
  Person.create person
end