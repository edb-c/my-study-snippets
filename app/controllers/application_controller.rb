require './config/environment'

# Inherits from Sinatra::Base
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'

# Required for logins and flash messages
    enable :sessions
    set :session_secret, "password_security"
    register Sinatra::Flash
  end

  get "/" do
    if logged_in?
      redirect "/snippets/show"
    else
      erb :index
    end
  end

  helpers do
    def current_user
      User.find(session[:user_id])
    end

    def logged_in?
      !!session[:user_id]
    end
  end
end
