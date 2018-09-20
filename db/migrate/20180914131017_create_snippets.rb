class CreateSnippets < ActiveRecord::Migration
  def change
    create_table    :snippets do |t|
       t.string     :snippet_category
       t.string     :snippet_name
       t.text       :snippet_text
       t.belongs_to :user
       t.timestamps null: false
    end
  end
end
