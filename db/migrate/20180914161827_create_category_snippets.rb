class CreateCategorySnippets < ActiveRecord::Migration
  def change
    create_table :categorysnippets do |t|
      t.integer :snippet_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
