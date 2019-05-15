class ItemsController < ApplicationController

  before_action :find_item, only: [:show, :edit, :update, :destroy]
  before_action :check_if_admin, only: [:edit, :update, :new, :create, :destroy]

  def index
    @items = Item.all
    #render plain: "OK"
  end

  #/items/1 GET
  def show
    unless @item 
      render plain: "Page not found", status: 404
    end  
  end
  
  #/items/new GET
  def new
    @item = Item.new
  end
  
  #/items/1/edit GET
  def edit
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
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :new
    end
  end
  
  #/items/1 DELETE
  def destroy 
    @item.destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :weight, :real, :description)
  end  

  def find_item
    @item = Item.find(params[:id])
  end 

  def check_if_admin
    render text: "Acces denied", status: 403 unless params[:admin]    
  end

end
