puts 'Creating teachers...'

Teacher.create!({
  name: "Sy Rashid",
  campus: "Cape Town"
})
Teacher.create!({
  name: "George Kettle",
  campus: "Melbourne"
})
Teacher.create!({
  name: "Cassie Calescu",
  campus: "Porto"
})

puts "Finished seeding #{Teacher.count} teachers!"
