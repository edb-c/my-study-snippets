class SnippetController < ApplicationController


# Create a New Spinnet

    get '/snippets/new' do
      if logged_in?
        erb :'snippets/new'
      else
        redirect "users/loginregister"
      end
    end

    post '/snippets/new' do
      flash[:message] = "Posted"

    end


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

  if logged_in? && current_user == @snippet.user
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

# Delete Route to Delete Snippet

  delete '/snippets/:id/delete' do

  @snippet = Snippet.find_by(id: params[:id])

    if logged_in? && current_user == @snippet.user
      @snippet.delete
      redirect "/snippets/#{@snippet.user_id}"
    else
      redirect '/login'
    end
  end

end #end Class
