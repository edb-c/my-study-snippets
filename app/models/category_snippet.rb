class CategorySnippet < ActiveRecord::Base

# join table for many-to-many relationship
#between restaurants and diet_prefs

  belongs_to :category
  belongs_to :snippet

end
