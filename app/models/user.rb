class User < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods

  has_many :snippets
  has_many :categories, :through => :snippets
  has_secure_password

  validates :username, presence: true, uniqueness: true
end
