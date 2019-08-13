class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :items_users do |t|
      t.belongs_to :item, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
    end
  end
end
