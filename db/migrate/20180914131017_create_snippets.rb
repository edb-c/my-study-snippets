#Created migration to include join logic
#Based on documentation:
# https://guides.rubyonrails.org
# /association_basics.html#the-has-many-through-association

class CreateSnippets < ActiveRecord::Migration
  def change
    create_table    :snippets do |t|
       t.string     :snippet_name
       t.text       :snippit
       t.belongs_to  :users
       t.belongs_to :categories
      t.timestamps null: false
    end
  end
end
