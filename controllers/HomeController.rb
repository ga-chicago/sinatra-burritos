require 'bcrypt'

class HomeController < ApplicationController

  # get route to /home/login
  get '/login' do
    erb :login
  end

  # post route to /home/login
  post '/login' do
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      redirect '/burrito'
    else
      redirect '/home/login'
    end
  end

  # get route to /home/register
  get '/register' do
    erb :register
  end

  # post route to /home/register
  post '/register' do
    @user = User.new

    @user.username = params[:username]
    @user.password = params[:password]

    @user.save

    redirect '/home/login'
  end
end
