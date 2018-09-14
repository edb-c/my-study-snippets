class MyStudySnippetsController < ApplicationController

  # GET: /my_study_snippets
  get "/my_study_snippets" do
    erb :"/my_study_snippets/index.html"
  end

  # GET: /my_study_snippets/new
  get "/my_study_snippets/new" do
    erb :"/my_study_snippets/new.html"
  end

  # POST: /my_study_snippets
  post "/my_study_snippets" do
    redirect "/my_study_snippets"
  end

  # GET: /my_study_snippets/5
  get "/my_study_snippets/:id" do
    erb :"/my_study_snippets/show.html"
  end

  # GET: /my_study_snippets/5/edit
  get "/my_study_snippets/:id/edit" do
    erb :"/my_study_snippets/edit.html"
  end

  # PATCH: /my_study_snippets/5
  patch "/my_study_snippets/:id" do
    redirect "/my_study_snippets/:id"
  end

  # DELETE: /my_study_snippets/5/delete
  delete "/my_study_snippets/:id/delete" do
    redirect "/my_study_snippets"
  end
end
