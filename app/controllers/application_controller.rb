require './config/environment'
require 'rack-flash'
# Inherits from Sinatra::Base
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'

#Enable and set an encryption key that will be used to
#create a session_id
    enable :sessions
    set :session_secret, "deus_tecum"

# Required flash messages

    use Rack::Flash, :sweep => true
  end

# Route for Homepage
  get '/' do
    erb :index
  end

# Route for categories
  get '/categories' do
    erb :categories
  end

#Conventional coding pattern- create helper methods to be used
  helpers do

    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
      !!current_user
    end

  end
end #end Class
