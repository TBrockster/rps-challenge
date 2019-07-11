require 'sinatra/base'
require 'shotgun'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, "RPS"

  get '/' do
    erb(:index)
  end

  post '/battlefield' do
    session['name'] = params['name']
    @name = session['name']
    erb(:battlefield)
  end
end
