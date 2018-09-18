# Inherits from ApplicationController
class UserController < ApplicationController

get '/login' do
    if logged_in?
      redirect "/snippets/#{current_user.id}"
    else
      #flash[:message] = "Welcome, please sign in or register!"
      erb :'users/loginregister'
    end
end

#Login user
#Find user by inputted username
#Authenticate user -valid username and password
#Set new session and redirect user to their own snippet page
post '/login' do
  @user = User.find_by(username: params[:username])
  flash[:message] = "#{@user.username}"
    if @user &&
      @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/snippets/#{@user.id}"
    else
      redirect '/login'
    end
end

# Register form action - Creates new user
# Instantiate new user based on form values
# if user is saved, entries are not empty

post '/register' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect "/snippets/#{@user.id}"
  else
    flash.now[:message] = "Invalid Entries. Please try again."
    erb :'users/loginregister'
  end
end


#Logout route

get '/logout' do
  session.clear
  redirect '/'
end

end  #/end class
