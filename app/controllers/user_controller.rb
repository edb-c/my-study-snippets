# Inherits from ApplicationController
class UserController < ApplicationController

#Login the User
  get '/login' do
    erb :'users/loginregister'
  end

# Register form action - Creates new user
# Instantiate new user based on form values
# if user is saved, entries are not empty

post '/register' do
  user = User.new(params[:user])
  if user.save
  #  session[:user_id] = user.id
#    redirect "/users/#{user.slug}"
     redirect "/"
  else
    redirect 'users/loginregister'
  end
end

end  #/end class
