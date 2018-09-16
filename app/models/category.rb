class Category < ActiveRecord::Base
  has_many :snippets
  has_many :users, :through => :snippets
end
