require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    session["item"] = params["item"]
    @session = session
    erb :index
  end

  post '/checkout' do

    binding.pry

    erb :checkout
  end
end
