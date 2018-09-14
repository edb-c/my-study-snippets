# Inherits from ApplicationController
class UserController < ApplicationController

  get '/login' do
    erb :'users/login'
  end

# Register form action - Creates new user
# Instantiate new user based on signup form values

#  get '/register' do
#    user = User.new(params[:user])
#    user.save
#  end


end  #/end class
