class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :snippet_name
      t.text :snippit
       t.integer :user_id

      t.timestamps null: false
    end
  end
end
