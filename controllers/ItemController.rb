class ItemController < ApplicationController

  get '/' do
    "this is a get route in ItemController"

  end


  get '/add' do
    @page = "Add Item"
    @action = "/items/add"
    @method = "POST"
    @placeholder = "Enter your item!"
    @value = ""
    @buttontext = "Add Item"
    erb :add_item
  end

end
