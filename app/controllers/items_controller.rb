class ItemsController < ApplicationController

  def index
    @items = Item.all
    #render plain: "OK"
  end

  #/items/1 GET
  def show
    unless @item = Item.where(id: params[:id]).first
      #render "items/show"
    #else
      render plain: "Page not found", status: 404
    end  
  end
  
  #/items/new GET
  def new
    @item = Item.new
  end
  
  #/items/1/edit GET
  def edit
    @item = Item.find(params[:id])
  end
  
  #/items POST
  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end
  
  #/items/1 PUT
  def update
     @item = Item.find(params[:id])
     @item.update(item_params)
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end
  
  #/items/1 DELETE
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to action: "index"
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :weight, :real, :description)
  end  

end
