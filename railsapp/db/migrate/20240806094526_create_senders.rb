class CreateSenders < ActiveRecord::Migration[7.1]
  def change
    create_table :senders do |t|
      t.string :postal_code, limit: 8, :null => false
      t.string :phone_number, limit: 13, :null => false
      t.string :prefecture, :null => false
      t.string :city, :null => false
      t.string :address, :null => false
      t.string :building
      t.string :company_name
      t.string :department_name
      t.string :last_name, :null => false
      t.string :first_name, :null => false 

      t.timestamps
    end
  end
end
