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
