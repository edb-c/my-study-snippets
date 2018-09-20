class SnippetController < ApplicationController


#Show all Snippets

  get '/snippets/:id' do
    if logged_in?
      erb :'snippets/show'
    else
      erb :'snippets/index'
    end
  end

  get '/snippets' do
    if logged_in?
      erb :'snippets/show'
    else
      erb :'snippets/index'
    end
  end

# Get Route to Edit Snippet

  get '/snippets/:id/edit' do
    @snippet = Snippet.find_by(id: params[:id])
    if logged_in? && current_user == @snippet.user
#For testing
#flash[:message] = "#{@snippet.user.id}"
      erb :'/snippets/edit'
    else
      redirect "/login"
    end
  end

# Patch Route to Edit Snippet

  patch '/snippets/:id' do

    @snippet = Snippet.find_by(id: params[:id])

  if logged_in? && current_user
    if params[:snippet_category] != ""
        @snippet.update(snippet_category: params[:snippet_category])
      end

      if params[:snippet_name] != ""
        @snippet.update(snippet_name: params[:snippet_name])
      end

      if params[:snippet_text] != ""
        @snippet.update(snippet_text: params[:snippet_text])
      end

      redirect "/snippets/#{@snippet.user_id}"
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
