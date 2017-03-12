class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.boolean :wheelchair
      t.integer :house_number
      t.string :street_name
      t.string :city
      t.string :postal_code
      t.string :email

      t.timestamps
    end
  end
end
