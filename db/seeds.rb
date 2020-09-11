# Comments are always great to have in seed files as it makes it easier to debug if something goes wrong
# And it looks nice 🤠
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
