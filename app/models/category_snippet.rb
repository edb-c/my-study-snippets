class CategorySnippet < ActiveRecord::Base

# join table for many-to-many relationship
#between category and snippets

  belongs_to :category
  belongs_to :snippet

end
