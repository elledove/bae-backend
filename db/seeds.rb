# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Test user
User.create!(name:"Boss", email: "youbettawerk@gmail.com", password:"password")


#Test menu meals
m1 = MenuItem.create(name: "Salmon Platter", description:"Glazed Salmon w/ asparagus and a side salad", price:13.50, quantity: 10)
m1 =MenuItem.create(name:"Bangin'Lasagna" ,description: "Homemade Lasagna with garlic bread and a side ceasar side salad", price: 15.00, quantity: 10 )
d1 =MenuItem.create(name: "banna pudding", description: "Heavenly banana pudding with whip creme to finish", price:5.00, quantity: 10)
b1 = MenuItem.create(name:"strawberry lemonade", description:"homemade and homegrown ingredients, no extra sugar added", price:3.75, quantity: 10)

# Test orders

order1 = Order.create!(user_id:1, total: 20, name_for_order: Faker::Name.first_name, menu_item_ids:[Faker::Number.within(range: 1..4), Faker::Number.within(range: 1..4)] )
order1 = Order.create!(user_id:1, total: 20, name_for_order: Faker::Name.first_name, menu_item_ids:[Faker::Number.within(range: 1..4), Faker::Number.within(range: 1..4)] )

puts "seed completed"