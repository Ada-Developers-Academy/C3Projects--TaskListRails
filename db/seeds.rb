def random_time
  Time.at(rand * Time.now.to_i)
end

people = [
  { name: "Michelle"},
  { name: "Lindsey"},
  { name: "Kari"},
  ]

tasks = [
  { name: "The First Task", description: "Something needed to fill out this field", completed_at: random_time, completed: "True",  person_id: "1"},
  { name: "Go to Brunch", description: "Gather round the table with some favorite people and drink Mimosas", completed: "False", person_id: "2"},
  { name: "Go to Lunch", description: "Everyone loves lunch. Go to your favorite restaurant", completed_at: random_time, completed: "True", person_id: "3" },
  { name: "Go to Second Lunch", description: "Pretend that you haven't had lunch and go to lunch with a friend" , completed: "False", person_id: "3"},
  { name: "Play Video Games", description: "But only puzzle ones like Tetris so that you can say it's really about math", completed_at: random_time , completed: "True", person_id: "1" },
  { name: "High Five Somebody You Don't Know", description: "Every stranger might need a high 5 so you go out there and be that stranger", completed_at: random_time , completed: "True", person_id: "2" },
  { name: "Plant Flowers", description: "Green thumbs rejoice with physcial activity", completed_at: random_time , completed: "True", person_id: "1" },
  { name: "Call Mom", description: "She worries, you know and if you don't do it you know she will just call you every 5 minutes from now until the end of time." , completed: "False", person_id: "2" },
  { name: "Attempt Wallsit", description: "Just so you can tell everyone yesterday was leg day", completed: "False", person_id: "2" },
  { name: "Nap", description: "Today was rough, go lay down", completed_at: random_time, completed: "True", person_id: "3" }
]

tasks.each do |task|
  Task.create task
end

people.each do |person|
  Person.create person
end
