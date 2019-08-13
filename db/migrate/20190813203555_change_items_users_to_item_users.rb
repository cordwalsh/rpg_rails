class ChangeItemsUsersToItemUsers < ActiveRecord::Migration[5.2]
  def change
    rename_table :items_users, :item_users
  end
end
