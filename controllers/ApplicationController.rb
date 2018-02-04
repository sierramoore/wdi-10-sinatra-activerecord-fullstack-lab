class ApplicationController < Sinatra::Base
  require 'bundler'
  Bundler.require

  # ActiveRecord::Base.establish_connection(
  #     # :adapter => 'postgresql',
  #     # :database => ''
  # )
  #
  set :views, File.expand_path('../../views', __FILE__)
  set :public_dir, File.expand_path('../../public', __FILE__)


  get '/' do
    erb :index
  end

  not_found do
    halt 404
  end

end
