class SnippetController < ApplicationController


# Get Route to Create New Snippet

    get '/snippets/new' do
      if logged_in?
        erb :'snippets/new'
      else
        redirect "users/loginregister"
      end
    end

# Post Route to Create New Snippet
    post '/snippets/new' do

      if logged_in? && current_user
      @new_snippet = Snippet.create(
      snippet_category: params[:snippet_category],
      snippet_name:     params[:snippet_name],
      snippet_text:     params[:snippet_text],
      user_id:          current_user.id
      )
      @new_snippet.save
      redirect "/snippets/#{current_user.id}"
    else
      flash[:message] = "Invalid entries, please try again."
      redirect '/snippets/new'
    end
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
