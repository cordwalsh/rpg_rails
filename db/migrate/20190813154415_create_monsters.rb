class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :hit_points
      t.integer :attack
      t.integer :defense

      t.timestamps
    end
  end
end
