class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :total
      t.string :name_for_order

      t.timestamps
    end
  end
end
