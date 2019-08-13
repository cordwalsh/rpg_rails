class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.integer :hit_points
      t.integer :attack
      t.integer :defense

      t.timestamps
    end
  end
end
