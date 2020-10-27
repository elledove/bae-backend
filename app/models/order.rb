class Order < ApplicationRecord
    belongs_to :user
    has_many :order_items
    has_many :menu_items, through: :order_items


    validates :name_for_order, presence: true
    #this validation will make sure that the order has the menu_item_id attached to each order.
    validates :menu_item_ids, presence: true

   #This method will keep track of how may orders come through the system.
    def self.order_count
        Order.all.count
    end

     #This method will give us the total from our menu_items 
    def total
        total = 0
        self.menu_items.each do |item|
          total += item.price
        end
        "$#{total}"
      end



      # This method will be repsonible for updating the items if the order.
    def update_order_item
        
        end

        
    end


end
