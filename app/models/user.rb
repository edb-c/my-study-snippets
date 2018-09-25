class User < ActiveRecord::Base

  has_many :snippets
  validates_associated :snippets

#From bcrypt gem - the method password, password= wraps password_digest
#from table

  has_secure_password

#ActiveRecord performs validation - rollback method, will not execute the
#SQL, this occurs at the .save method

  validates :username,  presence: { message: "Username must be provided." },
                      uniqueness: { message: "Username is already in use. Please select another." }
  #validates :password, :password_confirmation, presence: { message: "Password must be provided." }
  validates_confirmation_of :password, :message=> "Password & Confirmation Entries must match."

end
