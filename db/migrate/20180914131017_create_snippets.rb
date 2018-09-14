class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :name
      t.text :snippit

      t.timestamps null: false
    end
  end
end
