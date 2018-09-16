class Snippet < ActiveRecord::Base
#  include Slugifiable::InstanceMethods
#  extend Slugifiable::ClassMethods

  belongs_to :user
  belongs_to :categories
end
