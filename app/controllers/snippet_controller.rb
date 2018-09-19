class SnippetController < ApplicationController


#Show all Snippets

  get '/snippets/:id' do
    if logged_in?
      erb :'users/show'
    else
      erb :'snippets'
    end
  end

  get '/snippets' do
    if logged_in?
      erb :'users/show'
    else
      erb :'snippets/show'
    end
  end

# Get Route to Edit Snippet

  get '/snippets/edit/' do
    if logged_in? && current_user
      @snippet = Snippet.find_by(users_id: "#{current_user.id}")
      flash[:message] = "#{@snippet.users_id}"
     erb :'/snippets/edit'
    else
      redirect "/login"
    end
  end

# Patch Route to Edit Snippet

  patch '/snippets/edit/:id' do

    if logged_in? && current_user
      @snippet = Snippet.find_by(users_id: "#{current_user.id}")

      if params[:snippet_name] != ""
        @snippet.update(snippet_name: params[:snippet_name])
      end

      if params[:snippet_text] != ""
        @snippet.update(snippet_text: params[:snippet_text])
      end

      if params[:snippet_name] != ""
        @snippet.update(snippet_name: params[:snippet_name])
      end

      redirect "/snippets/#{current_user.id}"

  else
    redirect '/login'
  end
end

# Create a New Spinnet

  get '/snippets/new' do
    if logged_in?
      erb :'snippets/new'
    else
      redirect "users/loginregister"
    end
  end


end #end Class
