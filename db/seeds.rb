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
    image: "https://scontent-lht6-1.xx.fbcdn.net/v/t1.0-9/10609487_10152259133751701_530836782283067901_n.jpg?oh=13d1ca3867da6ea95f14fe7e8db0bb72&oe=59EE085E",
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
    title: "Russian Ecommerce Site",
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

Tender.create!([
  {
    bid: 8500,
    pitch: "I made the Interflora website so i know what I am doing and I know how quickly I can get it done in. This is why I charge more.",
    is_active: true,
    user_id: 1,
    project_id: 1,
    status: "pending"
  }, {
    bid: 7000,
    pitch: "I have always wanted to make a site like this bu t have never had the opportunity so I would love to have a go and build this for you. I am willing to charge less then your budget becasue I would like the experience.",
    is_active: true,
    user_id: 2,
    project_id: 1,
    status: "pending"
  }, {
    bid: 5000,
    pitch: "This should be very easy to implement and I can not forsee any major issues, however I would need to see your cuurent code to make sure I can work with it. The tack stack is one I use often so am very proficent in.",
    is_active: true,
    user_id: 5,
    project_id: 2,
    status: "pending"
  }, {
    bid: 4500,
    pitch: "I am willing to do you a discount because I am opening my own resturant and would like to pick your brain about a few things. You scratch my back, I will return the favour.",
    is_active: true,
    user_id: 6,
    project_id: 2,
    status: "pending"
  }, {
    bid: 3000,
    pitch: "Never done what you need or worked with the tech stack, but how hard can it really be, right?",
    is_active: true,
    user_id: 7,
    project_id: 2,
    status: "pending"
  }, {
    bid: 2200,
    pitch: "I'm bored and this seems like a project I can get done with quickly, hence the offer. I will however never use this site on my portfolio becasue I do not need people thinking I work with rubbish.",
    is_active: true,
    user_id: 8,
    project_id: 3,
    status: "pending"
  }, {
    bid: 135000,
    pitch: "I voted Brexit so I'm happy to contribute to anything that will get us out of the EU quicker. My work is excellent so I am not cheap, but realistically, can you afford to mess this up more than you already have?",
    is_active: true,
    user_id: 1,
    project_id: 4,
    status: "pending"
  }, {
    bid: 120000,
    pitch: "Hate that we are leave the European Community but as long as I am getting something out of it, who cares. Can negotiate on rate if you can secure me a meeting with the Vlad.",
    is_active: true,
    user_id: 2,
    project_id: 4,
    status: "pending"
  }, {
    bid: 100000,
    pitch: "I am all about the undercut. I can save you £20000 on your budget, but write you a bill for the full budget, meaning you polititians can take a handsome cut under the table. Win-Win!",
    is_active: true,
    user_id: 5,
    project_id: 4,
    status: "pending"
  }, {
    bid: 25000,
    pitch: "Hate that you want to ruin kids teeth, but I am the best developer you will meet, so even though I do not agree with what your are doing, doesn't mean I do not want to get paid. But in the same sense, does not mean I can not rip you off as well.",
    is_active: true,
    user_id: 6,
    project_id: 5,
    status: "pending"
  }, {
    bid: 16000,
    pitch: "Hate kids, love your plan! Discount price offered. Simple!",
    is_active: true,
    user_id: 7,
    project_id: 5,
    status: "pending"
  }, {
    bid: 18000,
    pitch: "Sounds exciting. Great buisness plan. Love JavaScript. I am definiatly your man!",
    is_active: true,
    user_id: 8,
    project_id: 5,
    status: "pending"
  }, {
    bid: 22000,
    pitch: "This sounds a lot more complicated than I think you are making out. I am happy to take on the work but my price reflects the fact that I think this will take longer to build than you beileve.",
    is_active: true,
    user_id: 1,
    project_id: 5,
    status: "pending"
  }, {
    bid: 30000,
    pitch: "Love dentists, would not have my prefect smile without them, so would be my pleasure to help you out in creating your site. Master at React as I used to work at Facebook for may years.",
    is_active: true,
    user_id: 2,
    project_id: 6,
    status: "pending"
  }, {
    bid: 29900,
    pitch: "Just wanted to bid slightly less than your budget so hopefully you choose me. I got all the technical skills you need and have a great design background too!",
    is_active: true,
    user_id: 5,
    project_id: 6,
    status: "pending"
  }, {
    bid: 74000,
    pitch: "I am Russian and anything to help my beloved country, I will do. Happy to lower my bid if you can prove someone can do it cheaper that me, just personal message me with the proof and I will rebid.",
    is_active: true,
    user_id: 6,
    project_id: 7,
    status: "pending"
  }, {
    bid: 75000,
    pitch: "Would love to take on this job because I too have been tangoed but after scoping it out, this is my best price. I will work night and day to make the site as googd as possible.",
    is_active: true,
    user_id: 7,
    project_id: 7,
    status: "pending"
  }, {
    bid: 35000,
    pitch: "No way anyone can do that amount of work for the budget you set. I am sure of it. However if someone bids cheaper than me, then they are soem cowboy who just wants the money, not the challenge and glory that code gives me. Ball is in your court bud.",
    is_active: true,
    user_id: 8,
    project_id: 8,
    status: "pending"
  }])


review1 = Review.create!(
  body: "Worked with this guy previously, great work ethic",
  rating: 8,
  creator_id: 3,
  receiver_id: 1)

review2 = Review.create!(
  body: "My best friend, he is a code ninja",
  rating: 9,
  creator_id: 4,
  receiver_id: 2)

review3 = Review.create!(
  body: "Hate this guy, he has such an attitude",
  rating: 3,
  creator_id: 4,
  receiver_id: 1)


conversation1 = Conversation.create!(
  sender_id: 1,
  receiver_id: 2)

conversation1 = Conversation.create!(
  sender_id: 2,
  receiver_id: 3)


conversation1 = Conversation.create!(
  sender_id: 2,
  receiver_id: 4)

conversation1 = Conversation.create!(
  sender_id: 1,
  receiver_id: 3)
