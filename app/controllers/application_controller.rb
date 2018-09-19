require './config/environment'

# Inherits from Sinatra::Base
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'

#Enable and set an encryption key that will be used to
#create a session_id
    enable :sessions
    set :session_secret, "deus_tecum"

# Required for logins and flash messages
    register Sinatra::Flash
  end

# Route for Homepage
  get '/' do
        erb :index
  end

#Conventional coding pattern- create helper methods to be used
  helpers do

    def current_user
      #  User.find(session[:user_id])
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
      !!session[:user_id]
    end

  end
end #end Class
