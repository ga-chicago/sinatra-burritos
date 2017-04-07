class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require

  ActiveRecord::Base.establish_connection(
    :adapter => postgres://swavvsfoekkzex:b51c122e4763bdfd9c1eb0a77f27a73f98d7a57ff6cbed2cbe5721783dd38efa@ec2-23-21-246-11.compute-1.amazonaws.com:5432/d9d6k1ulpdfq2u
  )

  set :views, File.expand_path('../../views', __FILE__)
  set :public_dir, File.expand_path('../../public', __FILE__)

  not_found do
    erb :not_found
  end
end
