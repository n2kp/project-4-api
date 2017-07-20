[User].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

User.create!([
  { username: "mickyginger", firstname: "Mike", lastname: "Hayden" },
  { username: "eisacke", firstname: "Emily", lastname: "Isacke" },
  { username: "markyjangles", firstname: "Marc", lastname: "De Vois" }
])
