def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "Bastion", description: "AMAZING", completed_at: random_time },
  { name: "Mass Effect", description: "A scifi RPG-shooter series." },
  { name: "Monster Hunter 4 Ultimate", description: "You cannot complete this game....", completed_at: random_time },
  { name: "Don't Starve", description: "" },
  { name: "Awesomenauts", description: "", completed_at: random_time },
  { name: "Portal 2", description: "", completed_at: random_time },
  { name: "Rogue Legacy", description: "", completed_at: random_time },
  { name: "Trine 2", description: "Very pretty multiplayer platform game. Started, did not finish." },
  { name: "Transistor", description: "" },
  { name: "Dwarfs?!", description: "", completed_at: random_time }
]

tasks.each do |task|
  Task.create task
end
