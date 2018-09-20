#For Testing
User.delete_all(conditions = nil)
Snippet.delete_all(conditions = nil)

#=begin
User.create(
  username:   'username1',
  first_name: 'firstname1',
  last_name:  'lastname1',
  password:   'password1'
)

User.create(
  username:   'username2',
  first_name: 'firstname2',
  last_name:  'lastname2',
  password:   'password2'
)
User.create(
  username:   'username3',
  first_name: 'firstname3',
  last_name:  'lastname3',
  password:   'password3'
)

#=begin

Snippet.create(
   snippet_category: 'snippetcategory1',
   snippet_name:     'snippetname1',
   snippet_text:     'snippettext1',
   user_id:           1
)
Snippet.create(
   snippet_category: 'snippetcategory2',
   snippet_name:     'snippetname2',
   snippet_text:     'snippettext2',
   user_id:           2
)
Snippet.create(
  snippet_category: 'snippetcategory3',
  snippet_name:     'snippetname3',
  snippet_text:     'snippettext3',
  user_id:           3
)

Snippet.create(
  snippet_category: 'snippetcategory4',
  snippet_name:     'snippetname4',
  snippet_text:     'snippettext4',
  user_id:           1
)
Snippet.create(
  snippet_category: 'snippetcategory5',
  snippet_name:     'snippetname5',
  snippet_text:     'snippettext5',
  user_id:           2
)
Snippet.create(
  snippet_category: 'snippetcategory6',
  snippet_name:     'snippetname6',
  snippet_text:     'snippettext6',
  user_id:           3
)

# My References
#http://www.xyzpub.com/en/ruby-on-rails/3.2/seed_rb.html
#https://stackoverflow.com/
#questions/31026248/encrypt-users-password-in-seed-file
