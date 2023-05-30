# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

10.times do
  Space.create(
    place_name: Faker::Books::Dune.city,
    address: Faker::Address.street_address,
    description: Faker::GreekPhilosophers.quote,
    max_capacity: rand(1000..5000),
    price_per_booking: rand(50..100)
  )
end

# create_table "spaces", force: :cascade do |t|
#   t.string "place_name"
#   t.string "address"
#   t.string "category"
#   t.text "description"
#   t.integer "max_capacity"
#   t.integer "price_per_booking"
#   t.bigint "user_id", null: false
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["user_id"], name: "index_spaces_on_user_id"
# end
