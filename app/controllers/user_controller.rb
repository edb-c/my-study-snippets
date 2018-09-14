# Inherits from ApplicationController
class UserController < ApplicationController

  get '/login' do
    erb :'users/login'
  end

end  #/end class
