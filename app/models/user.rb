class User < ActiveRecord::Base

  has_many :snippets
  validates_associated :snippets

#From bcrypt gem - the method password, password= wraps password_digest
#from table

  has_secure_password

#ActiveRecord performs validation - rollback method, will not execute the
#SQL, this occurs at the .save method

  valid_username_regex = /\A[A-Za-z0-9_-]+\z/  # Regex - alphanumberic, underscore, and dashes allowed

  validates :username,  presence: { message: "Username must be provided." }, length: { in: 6..10,
                                    too_long: "Username too long, should be maximum 10 alphanumber characters",
                                    too_short: "Username too short, should be minimum 6 alphanumber characters"},
                        uniqueness: { message: "Username is already in use. Please select another.",
                                      case_sensitive: false},
                        format: { with: valid_username_regex, message: "Username should be alphanumeric characters underscores and dashes only." }

  validates_confirmation_of :password, :message=> "Password & Confirmation Entries must match."

end
