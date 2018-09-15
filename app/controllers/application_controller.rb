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
    erb :index
  end

end
