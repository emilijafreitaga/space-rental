require "open-uri"
puts "Cleaning database..."

Space.destroy_all
User.destroy_all

puts "Creating users..."

user1 = { first_name: 'Name1', last_name: 'Surname1', email: 'user1@test.com', password: '123456' }
user2 = { first_name: 'Name2', last_name: 'Surname2', email: 'user2@test.com', password: '123456' }
user3 = { first_name: 'Name3', last_name: 'Surname3', email: 'user3@test.com', password: '123456' }

[user1, user2, user3].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.first_name}"
end
puts "Finished creatings users!"

# space1 = Space.new(
#   place_name: 'Ham Yard Bar Restaurant',
#   address: '25 London Road London W9 1DT',
#   category: 'Party',
#   description: "Ham Yard restaurant has a frequently changing menu revolving around the freshest, seasonal ingredients and the best of British produce. Dishes range from house-glazed Ham Yard ham and hand rolled pasta to chilli beans on toast and ice cream sandwiches and not forgetting the ever popular Champagne afternoon teas. Our discerning guests will be tempted back time and again to sample our selection of small bar dishes, including truffled mascarpone and ham melts, pulled pork sliders with chipotle and parsley and cured sea trout with beet and horseradish.",
#   max_capacity: 50,
#   price_per_booking: 3000,
#   user: user1
# )

# file = URI.open("https://res.cloudinary.com/dk2kdhgwy/image/upload/v1685539374/nyutmw64lqnugghmfccd.jpg")
# space1.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
# space1.save

# puts "Space created!"

# space2 = Space.new(
#   place_name: 'STK Steakhouse London',
#   address: 'STK London, ME London Hotel, 336-337 The Strand, London, WC2R 1HA',
#   category: 'Party',
#   description: "Unwind and feel the energy at STK, London's top USDA prime steak house, brought to you from New York operators The ONE Group. With a sophisticated, trendy vibe, STK London is more than just steak, it's an entire experience. For group bookings of 10+ please contact our reservation team on 020 395 3450 or london_reservations@togrp.com.",
#   max_capacity: 70,
#   price_per_booking: 4000,
#   user: user1
# )

# space3 = Space.new(
#   place_name: 'Flesh & Buns',
#   address: '32 Berners Street, London, W1T 3LR',
#   category: 'Party',
#   description: "Flesh & Buns was the first restaurant in London dedicated to steamed bao and Japanese drinking food. Expect fluffy steamed buns with gutsy fillings, plus loads more plates to share. This is unusual, yet addictive, Japanese-inspired food served in a Izakaya setting.",
#   max_capacity: 90,
#   price_per_booking: 6000,
#   user: user2
# )

# space4 = Space.new(
#   place_name: 'Riding House',
#   address: '43-51 Great Titchfield Street, London, Greater London W1W 7PQ',
#   category: 'Party',
#   description: "The Riding House Café is an all-day, fun and informal neighbourhood brasserie situated amidst Fitzrovia's creative and media community, split across a variety of areas to eat, drink, meet and socialise. A bustling canteen, more formal dining room and a relaxed lounge are all joined together by the large dining bar and open kitchen. The predominantly Modern European menu features a range of small and large plates to suit any time of day. Dishes are wholesome, with an emphasis on fresh, light ingredients.",
#   max_capacity: 110,
#   price_per_booking: 7000,
#   user: user2
# )

# space5 = Space.new(
#   place_name: 'Bricco e Bacco',
#   address: '11-13 Charlotte Street, London, W1T 1RH',
#   category: 'Party',
#   description: "Welcome to Bricco e Bacco, we look forward to seeing you soon",
#   max_capacity: 130,
#   price_per_booking: 9000,
#   user: user2
# )
