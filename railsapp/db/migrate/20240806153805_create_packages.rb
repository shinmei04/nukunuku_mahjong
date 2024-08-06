class CreatePackages < ActiveRecord::Migration[7.1]
  def change
    create_table :packages do |t|
      t.string :item_name, :null => false
      t.string :handling, limit: 15, :null => false
      t.date :shipping_date, :null => false
      t.date :desired_delivery_date, :null => false
      t.string :desired_delivery_time, :null => false
      t.integer :number_of_items, :null => false

      t.timestamps
    end
  end
end
