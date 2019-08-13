class ItemsController < ApplicationController

  def heal
    @user = User.find(params[:user_id])
    @item = Item.find(params[:id])
    max_health = @user.hit_points
    #assuming we are searching through the items table
    item = where(id: @item.id)
    @user.hit_points + item.hit_points > @user.max_health ? @user.hit_points = max_health : @user.hit_points += item.hit_points
    used_item = where(user_id: @user.id and item_id: @item.id.last)
    used_item.delete
  end
end
