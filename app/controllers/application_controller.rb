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

#Steps to login user
#Find user by inputted username
#Authenticate user -valid username and password
#Set new session and redirect user to their own snippet page

  post '/login' do
    @user = User.find_by(username: params[:username])
    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/snippets/show"
    else
      flash[:message] = "Username and/or password invalid, please try again."
      redirect '/login'
    end
  end

  get "/" do
    if logged_in?
      redirect "/snippets/show"
    else
      erb :index
    end
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
