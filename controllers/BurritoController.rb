class BurritoController < ApplicationController

  # get route to /burrito/
  get '/' do
    @burritos = Burrito.all
    erb :burrito
  end

  # get route to /burrito/json
  get '/json' do
    response['Access-Control-Allow-Origin'] = '*'
    @burritos = Burrito.all
    @burritos.to_json
  end

  # post route to /burrito/
  post '/' do
    puts params
    @my_burrito = Burrito.new

    @my_burrito.name = params[:name]
    @my_burrito.protein = params[:protein]
    @my_burrito.wrapped = params[:wrapped]
    @my_burrito.spicy_level = params[:spicy_level]
    @my_burrito.price = params[:price]

    @my_burrito.save

    redirect '/burrito'
  end

  patch '/:id' do
    /burrito/; DROP TABLES
    id = params[:id]

    @my_burrito = Burrito.find_by(id: id)

    @my_burrito.name = params[:name]
    @my_burrito.protein = params[:protein]
    @my_burrito.wrapped = params[:wrapped]
    @my_burrito.spicy_level = params[:spicy_level]
    @my_burrito.price = params[:price]

    @my_burrito.save

    "Success"

  end

  # delete route to /burrito/
  delete '/:id' do
    id = params[:id]
    Burrito.destroy(id)
    "Success"
  end
end
