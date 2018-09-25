class Snippet < ActiveRecord::Base

  belongs_to :user

#ActiveRecord performs validation - rollback method, will not execute the
#SQL, this occurs at the .save method
#https://guides.rubyonrails.org/active_record_validations.html

    validates :snippet_category,  presence: { message: "Snippet_category must be provided." }
    validates :snippet_name,      presence: { message: "Snippet_name must be provided." }
    validates :snippet_text,      presence: { message: "snippet_text must be provided." }





end
