def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "Bastion", description: "AMAZING", completed_at: random_time, person_id: 1 },
  { name: "Mass Effect", description: "A scifi RPG-shooter series.", person_id: 27 },
  { name: "Monster Hunter 4 Ultimate", description: "You cannot complete this game....", completed_at: random_time, person_id: 1 },
  { name: "Don't Starve", description: "", person_id: 27 },
  { name: "Awesomenauts", description: "", completed_at: random_time, person_id: 1 },
  { name: "Portal 2", description: "", completed_at: random_time, person_id: 1 },
  { name: "Rogue Legacy", description: "", completed_at: random_time, person_id: 1 },
  { name: "Trine 2", description: "Very pretty multiplayer platform game. Started, did not finish.", person_id: 1 },
  { name: "Transistor", description: "", person_id: 1 },
  { name: "Dwarfs?!", description: "", completed_at: random_time, person_id: 1 },
  { name: "Battleblock Theater", description: "Blage blahg ergj sdfglkjsdfg IT'S A SECRET", person_id: 13 }
]

tasks.each do |task|
  Task.create task
end

people = [
  { name: "Brandi", fav_genre: "Multiplayer" },
  { name: "Alice", fav_genre: "N/A" },
  { name: "Amira", fav_genre: "N/A" },
  { name: "Anita", fav_genre: "N/A" },
  { name: "Ashley", fav_genre: "N/A" },
  { name: "Brenna", fav_genre: "N/A" },
  { name: "Brittney", fav_genre: "N/A" },
  { name: "Carly", fav_genre: "N/A" },
  { name: "Corrine", fav_genre: "N/A" },
  { name: "Elia", fav_genre: "N/A" },
  { name: "Elsa", fav_genre: "N/A" },
  { name: "Jeremy", fav_genre: "N/A" },
  { name: "Jeri", fav_genre: "N/A" },
  { name: "Kari B.", fav_genre: "N/A" },
  { name: "Kari L.", fav_genre: "N/A" },
  { name: "Katie", fav_genre: "N/A" },
  { name: "Kyna", fav_genre: "N/A" },
  { name: "Lila", fav_genre: "N/A" },
  { name: "Lindsey", fav_genre: "N/A" },
  { name: "Loraine", fav_genre: "N/A" },
  { name: "Marleigh", fav_genre: "N/A" },
  { name: "Michelle", fav_genre: "N/A" },
  { name: "Sally", fav_genre: "N/A" },
  { name: "Shanna", fav_genre: "N/A" },
  { name: "Victoria", fav_genre: "N/A" },
  { name: "Wang", fav_genre: "N/A" },
  { name: "Brandi's Non-Ada Friend Persons", fav_genre: "Various Genres" }
]

people.each do |person|
  Person.create person
end
