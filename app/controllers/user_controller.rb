# Inherits from ApplicationController
class UserController < ApplicationController

#Login the User
  get '/login' do
    flash[:message] = "Welcome!"
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
     flash[:message] = "Thank you for registering!"
     redirect "/"
  else
    #redirect 'users/loginregister'
    flash.now[:message] = "Invalid Entries. Please try again."
    erb :'users/loginregister'
  end
end

post '/logout' do
  session.clear
  redirect '/login'
end

end  #/end class
