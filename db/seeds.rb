[User, Project, Tender, Conversation].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

User.create!([
  {
    username: "simona",
    firstname: "Simon",
    lastname: "Amor",
    email: "simon@justo.com",
    password: "password",
    password_confirmation: "password",
    image:"simon.jpeg",
    is_dev: true,
    tech_stack:"HTML, CSS, JS, Angular"
  }, {
    username: "timr",
    firstname:"Tim",
    lastname:"Rooke",
    email: "tim@justo.com",
    password: "password",
    password_confirmation: "password",
    image: "tim.jpeg",
    is_dev: true,
    tech_stack: "HTML, CSS, JS, Angular"
  }, {
    username: "nimeshp",
    firstname:"Nimesh",
    lastname:"Patel",
    email: "nimesh@justo.com",
    password: "password",
    password_confirmation: "password",
    image: "http://images.naldzgraphics.net/2012/01/14-floral.jpg",
    is_dev: false
  }, {
    username: "jamesc",
    firstname:"James",
    lastname:"Clarke",
    email: "james@justo.com",
    password: "password",
    password_confirmation: "password",
    image: "https://cms-assets.tutsplus.com/uploads/users/30/posts/22683/preview_image/prev.png",
    is_dev: false
  }, {
    username: "mickyginger",
    firstname:"Mick",
    lastname:"Hyden",
    email: "mhyden@ga.co",
    password: "password",
    password_confirmation: "password",
    image: "https://avatars0.githubusercontent.com/u/3531085?v=4&s=400",
    is_dev: true,
    tech_stack: "HTML, CSS, JS, Angular, Ruby, React, Node"
  }, {
    username: "eisacke",
    firstname:"Emily",
    lastname:"Isacke",
    email: "eisacke@ga.co",
    password: "password",
    password_confirmation: "password",
    image: "https://avatars0.githubusercontent.com/u/12997768?v=4&s=400",
    is_dev: true,
    tech_stack: "HTML, CSS, JS, Bootstrap, Ruby"
  }, {
    username: "markjangles",
    firstname:"Mark",
    lastname:"Davis",
    email: "mdavis@ga.co",
    password: "password",
    password_confirmation: "password",
    image: "https://www.linkedin.com/in/markjdvs/photo/",
    is_dev: true,
    tech_stack: "HTML, CSS, JS, Angular"
  }, {
    username: "seniordev",
    firstname:"Sam",
    lastname:"Domesjö",
    email: "sdomesjo@ga.com",
    password: "password",
    password_confirmation: "password",
    image: "https://www.linkedin.com/in/sam-domesjo/photo/",
    is_dev: true,
    tech_stack: "HTML, CSS, JS, Angular"
  }, {
    username: "thedonald",
    firstname:"Donald",
    lastname:"Trump",
    email: "dtrump@whitehouse.com",
    password: "password",
    password_confirmation: "password",
    image: "http://www.japantimes.co.jp/wp-content/uploads/2015/09/f-BRI-trump-a-20150905-200x200.jpg",
    is_dev: false
  }, {
    username: "msmay",
    firstname:"Teresa",
    lastname:"May",
    email: "teresam@number10.com",
    password: "password",
    password_confirmation: "password",
    image: "http://www.westernspring.co.uk/wp-content/uploads/2017/05/Theresa-May-Not-200x200.png",
    is_dev: false
  }])

Project.create!([
  {
    title: "Floral Ecommerce website needed ASAP",
    description: "I need a responsive commerce website to be build asap. I have some flowers and stuff that I really need to sell online because people need an online based flower experience to rival that of apple, uber and airB&B. Please help me!",
    project_deadline: Date.new(2017, 10, 1),
    bid_deadline: Date.new(2017, 8, 30),
    tech_stack: "HTML, CSS, JS",
    budget: 8000,
    is_active: true,
    is_priority: true,
    user_id: 3
  }, {
    title: "Resturant booking system needed",
    description: "I already have a website but I want to add a booking system to the site so my diners can come to the site and see the available tables for a 4 week period. I need it to be built with the technologies I have in place currently.",
    project_deadline: Date.new(2017, 11, 1),
    bid_deadline: Date.new(2017, 8, 4),
    tech_stack: "MongoDB, Express, Angular, Node",
    budget: 5000,
    is_active: true,
    is_priority: false,
    user_id: 4
  }, {
    title: "Waste company requiring new waste app",
    description: "I currently run a waste disposal service which I beileve would gain great advantage id it had an assosiated app that users can book collection slots for us to come and collect their waste",
    project_deadline: Date.new(2018, 02, 16),
    bid_deadline: Date.new(2017, 10, 13),
    tech_stack: "Unknown",
    budget: 2500,
    is_active: true,
    is_priority: false,
    user_id: 9
  }, {
    title: "European Exit website needed",
    description: "After a shock election within my company, my infulence has flagged so I want a new site where my peers can go and read about all the fantastic things we can do without our long runnig neibours who are holding us back for decades",
    project_deadline: Date.new(2019, 3, 31),
    bid_deadline: Date.new(2017, 11, 28),
    tech_stack: "Unknown",
    budget: 120000,
    is_active: true,
    is_priority: true,
    user_id: 10
  }, {
    title:"Sweetshop app needed ASAP",
    description:"Please, someone, I need help. I want to ruin the teeth of all the childern in the area so they need to go to the dentist clinic my friends owns and need an app to help me distribute my sugary sweets",
    project_deadline: Date.new(2018, 1, 1),
    bid_deadline: Date.new(2017, 9, 9),
    tech_stack: "JS",
    budget: 18500,
    is_active: true,
    is_priority: false,
    user_id: 3
  }, {
    title: "Dentist requires new website aimed at kids and parents",
    description: "Needs to be colourful and have lots of cartoon characters. Foresee a lot of childeren coming to see me about their rotten teeth and what the need to do next. The site has to be visually stunning and have features such as filter searches, facebook login and an api to the national society of teeth",
    project_deadline: Date.new(2018, 1, 1),
    bid_deadline: Date.new(2017, 10, 10),
    tech_stack: "React, PostgeSQL",
    budget: 30000,
    is_active: true,
    is_priority: true,
    user_id: 4
  }, {
    title: "Russian Ecommerce Sitw",
    description: "After they recently helped me with some work buisness elections, I want to set up a secure app that is available on iOS and Andriod and on a desktop, so that I can repay them by pumping unnessary about money in their economy.",
    project_deadline: Date.new(2017, 9, 25),
    bid_deadline: Date.new(2017, 11, 13),
    tech_stack: "Django, Python, VIM",
    budget: 80000,
    is_active: true,
    is_priority: false,
    user_id: 9
  }, {
    title: "Sporting company needs developers to create website database",
    description: "Sporting manufacturer needs a full stack developer to create and manage a large database software and suggestion on products related to their previous purchases",
    project_deadline: Date.new(2017, 9, 30),
    bid_deadline: Date.new(2017, 12, 25),
    tech_stack: ".Net",
    budget: 25000,
    is_active: true,
    is_priority: false,
    user_id: 10
  }])


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


conversation1 = Conversation.create!(
  sender_id: 1,
  receiver_id: 2)

# conversation1 = Conversation.create!(
#   sender_id: 2,
#   receiver_id: 3)
#
#
# conversation1 = Conversation.create!(
#   sender_id: 2,
#   receiver_id: 4)
#
# conversation1 = Conversation.create!(
#   sender_id: 1,
#   receiver_id: 3)
