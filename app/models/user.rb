class User < ActiveRecord::Base
  has_many :snippets
  has_many :categories, :through => :snippets

#From bcrypt gem - the method password, password= wraps password_digest
#from table

  has_secure_password

#ActiveRecord performs validation - rollback method, will not execute the
#SQL, this occurs at the .save method

  validates :username, presence: true, uniqueness: true

end
