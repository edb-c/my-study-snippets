class CreateCategorySnippets < ActiveRecord::Migration
  def change
    create_table :categorysnippets do |t|
      t.string :snippet_id
      t.string :integer
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
