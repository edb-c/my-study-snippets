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
# Create a New Spinnet

  get '/snippets/new' do
    if logged_in?
      erb :'snippets/new'
    else
      redirect "users/loginregister"
    end
  end



=begin
  get '/snippets/new' do
    if logged_in?
      erb :'snippet/new'
    else
      redirect to '/login'
    end
  end

  post '/snippets' do
    if logged_in?
      if params[:snippet] == ""
        redirect to "/snippets/new"
      else
        @snippet = current_user.snippets.build(snippet: params[:snippet])
        if @snippets.save
          redirect to "/snippets/#{@snippets.id}"
        else
          redirect to "/snippets/new"
        end
      end
    else
      redirect to '/login'
    end
  end



  get '/snippets/:id/edit' do
    if logged_in?
      @snippet = Snippet.find_by_id(params[:id])
      if @snippet && @snippet.user == current_user
        erb :'snippets/edit'
      else
        redirect to '/snippets'
      end
    else
      redirect to '/login'
    end
  end

  patch '/snippets/:id' do
    if logged_in?
      if params[:snippet] == ""
        redirect to "/snippets/#{params[:id]}/edit"
      else
        @snippet = Snippet.find_by_id(params[:id])
        if @snippet && @snippet.user == current_user
          if @snippet.update(snippet: params[:snippet])
            redirect to "/snippets/#{@snippet.id}"
          else
            redirect to "/snippets/#{@snippet.id}/edit"
          end
        else
          redirect to '/snippets'
        end
      end
    else
      redirect to '/login'
    end
  end

  delete '/snippets/:id/delete' do
    if logged_in?
      @snippet = Snippet.find_by_id(params[:id])
      if @snippet && @snippet.user == current_user
        @snippet.delete
      end
      redirect to '/snippets'
    else
      redirect to '/login'
    end
  end
=end
end #end Class
