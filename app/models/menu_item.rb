class MenuItem < ApplicationRecord
    has_many :order_items
    has_many :orders, through: :order_items


    validates :name, presence: true
    validates :name, uniqueness: true




    #We want to menu to keep track of how many menu items get added. This method will be repsonsible for that.

    def self.menu_count
        MenuItem.count.all
    end
end
