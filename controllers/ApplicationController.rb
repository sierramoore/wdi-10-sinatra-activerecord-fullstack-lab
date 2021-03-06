class ApplicationController < Sinatra::Base
  require 'bundler'
  Bundler.require

  ActiveRecord::Base.establish_connection(
      :adapter => 'postgresql',
      :database => 'item'
  )

  set :views, File.expand_path('../views', File.dirname(__FILE__))
  set :public_dir, File.expand_path('../public', File.dirname(__FILE__))


  get '/' do
    @page = "hello"
    erb :hello
  end

  not_found do
    halt 404
  end

end
