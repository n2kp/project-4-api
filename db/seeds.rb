[User, Project].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

simon = User.create!(username: "simona",  firstname:"Simon", lastname:"Amor", email: "simon@justo.com", password_digest: "password", image:"simon.jpeg", is_dev: true, tech_stack:"HTML, CSS, JS, Angular")

tim = User.create!(username: "timr",  firstname:"Tim", lastname:"Rooke", email: "tim@justo.com", password_digest: "password", image:"tim.jpeg", is_dev:true, tech_stack:"HTML, CSS, JS, Angular")

nimesh = User.create!(username: "nimeshp",  firstname:"Nimesh", lastname:"Patel", email: "nimesh@justo.com", password_digest: "password", image:"nimesh.jpeg", is_dev:false)

james = User.create!(username: "jamesc",  firstname:"James", lastname:"Clarke", email: "james@justo.com", password_digest: "password", image:"james.jpeg", is_dev:false)

website = Project.create!(

  title:"Floral Ecommerce website needed ASAP",
  description:"I need a responsive commerce website to be build asap. I have some flowers and stuff that I really need to sell online because people need an online based flower experience to rival that of apple, uber and airB&B. Please help me!",
  project_deadline: Date.new(2017, 4, 28),
  bid_deadline: Date.new(2017, 3, 28),
  tech_stack: "HTML, CSS, JS",
  budget: 1000,
  is_active:true,
  is_priority:false,
  user_id: 3)
