class Category < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods

  has_many :snippets
  has_many :users, :through => :snippets
end
