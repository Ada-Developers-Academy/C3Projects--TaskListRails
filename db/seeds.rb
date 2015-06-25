people = [
  { name: "Brenna"},
  { name: "Bojangles"},
  { name: "J.C."},
]

people.each do |person|
  Person.create person
end
