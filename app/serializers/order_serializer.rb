class OrderSerializer < ActiveModel::Serializer
  attributes :id, :total, :name_for_order, :menu_items
end
