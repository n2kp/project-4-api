[User, Project, Tender].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

 User.create!(username: "simona",  firstname:"Simon", lastname:"Amor", email: "simon@justo.com", password: "password", password_confirmation: "password", image:"simon.jpeg", is_dev: true, tech_stack:"HTML, CSS, JS, Angular")

 User.create!(username: "timr",  firstname:"Tim", lastname:"Rooke", email: "tim@justo.com", password: "password",password_confirmation: "password", image:"tim.jpeg", is_dev:true, tech_stack:"HTML, CSS, JS, Angular")

 User.create!(username: "nimeshp",  firstname:"Nimesh", lastname:"Patel", email: "nimesh@justo.com", password: "password",password_confirmation: "password", image:"nimesh.jpeg", is_dev:false)

 User.create!(username: "jamesc",  firstname:"James", lastname:"Clarke", email: "james@justo.com", password: "password",password_confirmation: "password", image:"james.jpeg", is_dev:false)

projo1 = Project.create!(
  title:"Floral Ecommerce website needed ASAP",
  description:"I need a responsive commerce website to be build asap. I have some flowers and stuff that I really need to sell online because people need an online based flower experience to rival that of apple, uber and airB&B. Please help me!",
  project_deadline: Date.new(2017, 4, 28),
  bid_deadline: Date.new(2017, 3, 28),
  tech_stack: "HTML, CSS, JS",
  budget: 1000,
  is_active:true,
  is_priority:false,
  user_id: 3)

projo2 = Project.create!(
  title:"Sweetshop app needed ASAP",
  description:"Please, someone, I need help. I want to ruin the teeth of all the childern in the area and need an app to help me distribute my sugary sweets",
  project_deadline: Date.new(2018, 1, 1),
  bid_deadline: Date.new(2017, 9, 9),
  tech_stack: "JS",
  budget: 19000,
  is_active:true,
  is_priority:true,
  user_id: 4)


# timbid = Tender.create!(
#   bid: 1000,
#   pitch:"I will make you website and I will do it to an alright standard if thats what you want",
#   status: "pending",
#   is_active: true,
#   user_id: 4,
#   project_id: 1)
#
# simbid = Tender.create!(
#   bid: 2000,
#   pitch:"I am too good to pass up",
#   status: "pending",
#   is_active: true,
#   user_id: 2,
#   project_id: 1)
#
# tim2bid = Tender.create!(
#   bid: 10000,
#   pitch:"I will knock this website up for you within a few hours with rails",
#   status: "pending",
#   is_active: true,
#   user_id: 1,
#   project_id: 2)

review1 = Review.create!(
  body: "Worked with this guy previously, great work ethic",
  rating: 8,
  creator_id: 3,
  receiver_id: 1)

review1 = Review.create!(
  body: "My best friend, he is a code ninja",
  rating: 9,
  creator_id: 4,
  receiver_id: 2)

review1 = Review.create!(
  body: "Hate this guy, he has such an attitude",
  rating: 3,
  creator_id: 4,
  receiver_id: 1)
