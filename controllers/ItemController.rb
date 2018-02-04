class ItemController < ApplicationController

  get '/' do
    "this is a get route in ItemController"
  end

  get '/add' do
    erb :add_item
  end

end