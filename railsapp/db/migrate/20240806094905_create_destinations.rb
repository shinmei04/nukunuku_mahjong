class CreateDestinations < ActiveRecord::Migration[7.1]
  def change
    create_table :destinations do |t|
      t.string :postal_code, limit: 8, :null => false
      t.string :phone_number, limit: 13, :null => false
      t.string :prefecture, :null => false
      t.string :city, :null => false
      t.string :address, :null => false
      t.string :building, :null => false
      t.string :company_name, :null => false
      t.string :department_name, :null => false
      t.string :last_name, :null => false
      t.string :first_name, :null => false  
      t.references :sender, null: false, foreign_key: true

      t.timestamps
    end
  end
end
