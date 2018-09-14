class CreateMyStudySnippets < ActiveRecord::Migration
  def change
    create_table :my_study_snippets do |t|

      t.timestamps null: false
    end
  end
end
