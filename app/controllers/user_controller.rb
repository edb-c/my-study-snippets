# Inherits from ApplicationController
class UserController < ApplicationController

  get '/login' do
    flash[:message] = "Welcome!"

    if logged_in?
      redirect "/snippets/show"
    else
      erb :'users/loginregister'
    end
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

# Register form action - Creates new user
# Instantiate new user based on form values
# if user is saved, entries are not empty

post '/register' do
  user = User.new(params[:user])
  if user.save
#  session[:user_id] = user.id
#    redirect "/users/#{user.slug}"
     flash[:message] = "Thank you for registering!"
     redirect "/snippets"
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
