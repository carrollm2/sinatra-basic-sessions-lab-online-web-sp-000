require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    session["item"] = params["item_purchased"]
    @session = session

    binding.pry
    erb :index
  end

  post '/checkout' do

    @item_purchased = params[:session][:item]
    erb :checkout
  end
end
