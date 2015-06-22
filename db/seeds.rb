# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


checklist = [
  {taskname: "Ready Player One", description: "By Ernest Cline, dystopian future with many 80s references", datecomp: nil, comp_status: "unread", person_id: 1},
  {taskname: "All the Harry Potters	", description: "JK Rowling because reasons! go hogwarts!	", datecomp: nil, comp_status: "unread", person_id: 2 },
  {taskname: "The Martian	", description: "Mars is rad", datecomp: nil, comp_status: "unread"},
  {taskname: "The Demolished Man", description: "Alfred Bester", datecomp: nil, comp_status: "unread", person_id: 3 },
  {taskname: "The fountainhead", description: "Ayn Rand", datecomp: nil, comp_status: "unread"},
  {taskname: "The blind watchman", description: "", datecomp: nil, comp_status: "unread"},
  {taskname: "Infinite Jest", description: "", datecomp: nil, comp_status: "unread"},
  {taskname: "The Powerful Mind", description: "", datecomp: nil, comp_status: "unread"},
  {taskname: "The Lovely Bones", description: "", datecomp: nil, comp_status: "unread"},
  {taskname: "Martin Eden", description: "Jack London", datecomp: nil, comp_status: "unread"},
  {taskname: "Wolf Hall", description: "Henry VIII is such a douche", datecomp: nil, comp_status: "unread"},
  {taskname: "Bossypants", description: "Tina Fey", datecomp: nil, comp_status: "unread"},
  {taskname: "Americanah", description: "Chimamanda Ngozi Adichie", datecomp: nil, comp_status: "unread"},
  {taskname: "Boys in the Boat", description: "Daniel James Brown, lots of cool Seattle history", datecomp: nil, comp_status: "unread"},
  {taskname: "The Good Earth", description: "Pearl S. Buck", datecomp: nil, comp_status: "unread"},
  {taskname: "The Painted Bird", description: "Jerzy Kozinski", datecomp: nil, comp_status: "unread"},
  {taskname: "Our Mathematical Universe", description: "everything is math!	", datecomp: nil, comp_status: "unread"},
  {taskname: "Sabriel", description: "Garth Nix	", datecomp: nil, comp_status: "unread"},
  {taskname: "Girl of Fire and Thorns", description: "Rae Carson", datecomp: nil, comp_status: "unread"},
  {taskname: "Freakonomics", description: "Correlation !!= Causation	", datecomp: nil, comp_status: "unread"},
  {taskname: "Gunnerkrigg Court", description: "totally not a book", datecomp: nil, comp_status: "unread"},

]
checklist.each do |task|
  Task.create(task)
end

peeps = [
  {name: "Brenna"},
  {name: "Michelle"},
  {name: "Alice"},
]
peeps.each do |peep|
  Person.create(peep)
end
