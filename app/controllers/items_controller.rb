class ItemsController < ApplicationController

  def index
    @items = Item.all
    render plain: "OK"
  end

end
