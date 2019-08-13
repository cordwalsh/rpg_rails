class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :attack
      t.integer :defense
      t.integer :hit_points

      t.timestamps
    end
  end
end
