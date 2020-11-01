Fabricator(:order) do
    name_for_order { Faker::Name.name }
    total{(Random.new.rand * 10).round}
    #menu_items_ids {}
    
    
  end