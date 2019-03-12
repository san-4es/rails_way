class ItemsController < ApplicationController

  def index
    @items = Item.all
    render plain: "OK"
  end

  #/items/1 GET
  def show
  end
  
  #/items/new GET
  def new
  end
  
  #/items/1/edit GET
  def edit
  end
  
  #/items POST
  def create
    @item = Item.create(item_params)
  end  
  
  #/items/1 PUT
  def update
  end
  
  #/items/1 DELETE
  def destroy
  end

  def
  private

  def item_params
    params.require(:item).permit(:name, :price, :weight, :real)
    #p params
    #@item = Item.create(name: params[:name], description: params[:description], price: params[:price], real: params[:real], weight: params[:weight])
    #puts "ITEM: #{@item.valid?}, #{@item.errors.full_messages}"
    #render plain: "#{@item.id}: #{@item.name} (#{!@item.new_record?})"
  end  

end
