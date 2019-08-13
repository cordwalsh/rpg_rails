class AddEquippedToItemsUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :items_users do |t|
      t.boolean :equipped, default: false
    end
  end
end
