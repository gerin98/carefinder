class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :purpose
      t.time :time
      t.date :date
      t.float :money
      t.string :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :services, [:user_id, :created_at]
  end
end
