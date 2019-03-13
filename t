[1mdiff --git a/app/controllers/items_controller.rb b/app/controllers/items_controller.rb[m
[1mindex ee70cac..53ee03d 100644[m
[1m--- a/app/controllers/items_controller.rb[m
[1m+++ b/app/controllers/items_controller.rb[m
[36m@@ -30,15 +30,10 @@[m [mclass ItemsController < ApplicationController[m
   def destroy[m
   end[m
 [m
[31m-  def[m
   private[m
 [m
   def item_params[m
     params.require(:item).permit(:name, :price, :weight, :real)[m
[31m-    #p params[m
[31m-    #@item = Item.create(name: params[:name], description: params[:description], price: params[:price], real: params[:real], weight: params[:weight])[m
[31m-    #puts "ITEM: #{@item.valid?}, #{@item.errors.full_messages}"[m
[31m-    #render plain: "#{@item.id}: #{@item.name} (#{!@item.new_record?})"[m
   end  [m
 [m
 end[m
[1mdiff --git a/app/views/items/oncreate.html.erb b/app/views/items/oncreate.html.erb[m
[1mdeleted file mode 100644[m
[1mindex 6cfab2a..0000000[m
[1m--- a/app/views/items/oncreate.html.erb[m
[1m+++ /dev/null[m
[36m@@ -1 +0,0 @@[m
[31m-<p>oncreate</p>[m
[1mdiff --git a/config/routes.rb b/config/routes.rb[m
[1mindex f157339..737a68b 100644[m
[1m--- a/config/routes.rb[m
[1m+++ b/config/routes.rb[m
[36m@@ -1,6 +1,3 @@[m
 Rails.application.routes.draw do[m
[31m-  #For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html[m
[31m-  resources :items#, only: [:index] do[m
[31m-    #get :oncreate, on: :collection[m
[31m- #end[m
[32m+[m[32m  resources :items[m
 end[m
