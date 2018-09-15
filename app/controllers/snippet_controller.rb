class SnippetController < ApplicationController

  get '/snippets' do
    erb :'/snippets/index'
  end

end
