require 'sinatra/base'
require 'sinatra/activerecord'
# require every controller file
require './controllers/ApplicationController'
require './controllers/ItemController'

map('/'){ run ApplicationController }
map('/items'){ run ItemController }