class User < ApplicationRecord
  has_many :item_users
  has_many :items, through: :item_users

  def save_to_inventory
    @user = User.find(params[:id])
    @item = Item.find(1)
    @user.items.push(@item)
  end

  def equip
    @user = User.find(params[:id])
    @item = Item.find(params[:id])
    item = ItemUsers.where(user_id: @user.id, item_id: @item.id)
    item.equipped = true
  end
end
