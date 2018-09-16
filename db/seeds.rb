#For Testing
#User.delete_all(conditions = nil)
#Snippet.delete_all(conditions = nil)
#Category.delete_all(conditions = nil)

#=begin
User.create(
  username:   'username1',
  first_name: 'firstname1',
  last_name:  'lastname1',
  password_digest: BCrypt::Password.create('deus_tecum')
)

User.create(
  username:   'username2',
  first_name: 'firstname2',
  last_name:  'lastname2',
  password_digest: BCrypt::Password.create('deus_tecum')
)
User.create(
  username:   'username3',
  first_name: 'firstname3',
  last_name:  'lastname3',
  password_digest: BCrypt::Password.create('deus_tecum')
)



Category.create(
   category_name:   'category1'
)

Category.create(
   category_name:   'category2'
)
Category.create(
   category_name:   'category3'
)

Snippet.create(
   snippet_name:  'snippitname1',
   snippit:       'snippit1',
   users_id:      1,
   category_id:   1
)
Snippet.create(
   snippet_name:  'snippitname2',
   snippit:       'snippit2',
   users_id:      2,
   category_id:   2
)
Snippet.create(
   snippet_name:  'snippitname3',
   snippit:       'snippit3',
   users_id:      3,
   category_id:   3
)

Snippet.create(
   snippet_name:  'snippitname4',
   snippit:       'snippit4',
   users_id:      1,
   category_id:   1
)
Snippet.create(
   snippet_name:  'snippitname5',
   snippit:       'snippit5',
   users_id:      2,
   category_id:   2
)
Snippet.create(
   snippet_name:  'snippitname6',
   snippit:       'snippit6',
   users_id:      3,
   category_id:   3
)
#=end
# My References
#http://www.xyzpub.com/en/ruby-on-rails/3.2/seed_rb.html
#https://stackoverflow.com/
#questions/31026248/encrypt-users-password-in-seed-file
