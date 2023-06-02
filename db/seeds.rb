require "open-uri"
puts "Cleaning database..."

Review.destroy_all
Booking.destroy_all
Space.destroy_all
User.destroy_all

puts "Creating users..."

user1 = User.create(first_name: 'Dmitry', last_name: 'Filimonov', email: 'user1@test.com', password: '123456')
user2 = User.create(first_name: 'Bob', last_name: 'Bobsky', email: 'user2@test.com', password: '123456')
user3 = User.create(first_name: 'John', last_name: 'Johnsky', email: 'user3@test.com', password: '123456')
user4 = User.create(first_name: 'Alex', last_name: 'Alexsky', email: 'user4@test.com', password: '123456')
user5 = User.create(first_name: 'Ben', last_name: 'Bensky', email: 'user5@test.com', password: '123456')

puts "Finished creatings users!"

# [user1, user2, user3, user4, user5].each do |attributes|
#   user = User.create!(attributes)
#   puts "Created #{user.first_name}"
# end

# space2 = Space.new(
#   place_name: 'STK London',
#   address: '336-337 The Strand, WC2R 1HA',
#   category: 'Party',
#   description: "Unwind and feel the energy at STK, London's top USDA prime steak house, brought to you from New York operators The ONE Group. With a sophisticated, trendy vibe, STK London is more than just steak, it's an entire experience. For group bookings of 10+ please contact our reservation team on 020 395 3450 or london_reservations@togrp.com.",
#   max_capacity: 70,
#   price_per_booking: 4000,
#   user: user1
# )


# space5 = Space.new(
#   place_name: 'Gaucho City',
#   address: '1 Bell Inn Yard, EC3V 0BL',
#   category: 'Party',
#   description: "Gaucho City is one of the hidden gems. The restaurant is set in the historic gold vaults of the Old Bank of England, right in the heart of the Square Mile across from the historic Leadenhall Market.",
#   max_capacity: 130,
#   price_per_booking: 9900,
#   user: user3
# )

# space1 = Space.new(
#   place_name: 'Ham Yard Restaurant',
#   address: '1 Ham Yard, W1D 7DT',
#   category: 'Party',
#   description: "Ham Yard restaurant has a frequently changing menu revolving around the freshest, seasonal ingredients and the best of British produce. Dishes range from house-glazed Ham Yard ham and hand rolled pasta to chilli beans on toast and ice cream sandwiches and not forgetting the ever popular Champagne afternoon teas. Our discerning guests will be tempted back time and again to sample our selection of small bar dishes, including truffled mascarpone and ham melts, pulled pork sliders with chipotle and parsley and cured sea trout with beet and horseradish.",
#   max_capacity: 50,
#   price_per_booking: 3000,
#   user: user1
# )

# file = URI.open("https://www.firmdalehotels.com/media/446862/hyh-bar-to-courtyard-mr.jpg?a=1&anchor=center&mode=crop&width=1596&height=892&bgcolor=fff&sig=2491ab2ab237c0021a1dadf66ff4295e")
# space1.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
# space1.save

# puts "Space created!"


# space3 = Space.new(
#   place_name: 'Flesh & Buns',
#   address: '32 Berners Street, W1T 3LR',
#   category: 'Party',
#   description: "Flesh & Buns was the first restaurant in London dedicated to steamed bao and Japanese drinking food. Expect fluffy steamed buns with gutsy fillings, plus loads more plates to share. This is unusual, yet addictive, Japanese-inspired food served in a Izakaya setting.",
#   max_capacity: 90,
#   price_per_booking: 6300,
#   user: user2
# )

# space4 = Space.new(
#   place_name: 'Riding House',
#   address: '43-51 Great Titchfield Street, W1W 7PQ',
#   category: 'Party',
#   description: "The Riding House Café is an all-day, fun and informal neighbourhood brasserie situated amidst Fitzrovia's creative and media community, split across a variety of areas to eat, drink, meet and socialise. A bustling canteen, more formal dining room and a relaxed lounge are all joined together by the large dining bar and open kitchen. The predominantly Modern European menu features a range of small and large plates to suit any time of day. Dishes are wholesome, with an emphasis on fresh, light ingredients.",
#   max_capacity: 110,
#   price_per_booking: 7200,
#   user: user2
# )

# space9 = Space.new(
#   place_name: 'Darwin Brasserie',
#   address: '20 Fenchurch Street, EC3M 3BY',
#   category: 'Birthday',
#   description: "Overlooking the Thames on Level 36 of the Sky Garden is Darwin, a lively all-day brasserie, inspired by the very best of British. With a laid-back yet spirited atmosphere, the space is inspired by the surrounding gardens and nature.",
#   max_capacity: 100,
#   price_per_booking: 9900,
#   user: user5
# )

# space6 = Space.new(
#   place_name: 'Scarlett Green',
#   address: '4 Noel Street, W1F 8GB',
#   category: 'Party',
#   description: "Quintessential heart of Soho, Scarlett Green has been the proud title holder of Number One brunch Spot in the World on TripAdvisor.",
#   max_capacity: 70,
#   price_per_booking: 5370,
#   user: user3
# )

# space7 = Space.new(
#   place_name: 'Sky Pod Bar',
#   address: '1 Sky Garden Walk, EC3M 8AF',
#   category: 'Birthday',
#   description: "My Place is an all-day coffee and dining spot in the heart of Soho frequented by the locals and loved by lifestyle bloggers and travellers.",
#   max_capacity: 35,
#   price_per_booking: 2800,
#   user: user3
# )

# space8 = Space.new(
#   place_name: 'The Seafood Bar',
#   address: '77 Dean Street, W1D 3SH',
#   category: 'Corporate',
#   description: "We have opened our first overseas restaurant; The Seafood Bar in Soho, London. A dream come true and we are very excited share our love for seafood with our guests.",
#   max_capacity: 45,
#   price_per_booking: 7000,
#   user: user4
# )


# space10 = Space.new(
#   place_name: 'Kazu',
#   address: '64 Charlotte Street, W1T 4QD',
#   category: 'Party',
#   description: "Upmarket, contemporary Japanese izakaya restaurant serving a wide range of high quality sushi, sashimi and modern Japanese dishes with a notable wine and sake list.",
#   max_capacity: 60,
#   price_per_booking: 7450,
#   user: user5
# )
