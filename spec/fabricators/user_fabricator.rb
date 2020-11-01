Fabricator(:user) do
    name { Faker::Name.name }
    email {Faker::Internet.email}
    password{Faker::Dessert.flavor}
    orders(count: 3)
    
  end