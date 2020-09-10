puts 'Creating teachers...'

Teacher.create!({
  name: "Sy Rashid",
  campus: "Istanbul"
})
Teacher.create!({
  name: "Nico",
  campus: "Barcelona"
})
Teacher.create!({
  name: "Sheila",
  campus: "Melbourne"
})

puts 'Finished!'
