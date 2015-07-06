def random_time
  Time.at(rand * Time.now.to_i)
end

# seed info for tasks
tasks = [
  { task_name: "The First Task", description: "", date_completed: random_time, person_id: 1 },
  { task_name: "Go to Brunch", description: "", person_id: 1  },
  { task_name: "Go to Lunch", description: "", date_completed: random_time, person_id: 1  },
  { task_name: "Go to Second Lunch", description: "", person_id: 2  },
  { task_name: "Play Video Games", description: "", date_completed: random_time, person_id: 2  },
  { task_name: "High Five Somebody You Don't Know", description: "", date_completed: random_time, person_id: 2  },
  { task_name: "Plant Flowers", description: "", date_completed: random_time, person_id: 3  },
  { task_name: "Call Mom", description: "", person_id: 1 },
  { task_name: "She worries, you know.", description: "", person_id: 3  },
  { task_name: "Nap.", description: "", date_completed: random_time, person_id: 3  }
]

tasks.each do |task|
  Task.create task
end

# seed info for people
people = [
  { name: "Carly" },
  { name: "marleigh" },
  { name: "Muttsuru"  }
]

people.each do |person|
  Person.create person
end
