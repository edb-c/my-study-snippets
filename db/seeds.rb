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
User.create(
  username:   'nina123',
  first_name: 'Nina',
  last_name:  'C',
  password:   'password'
)
#=begin

Snippet.create(
   snippet_category: 'Object-Oriented Programming',
   snippet_name:     'Single Responsibility Principle',
   snippet_text:     'The single responsibility principle is a computer programming principle that states that every module or class should have responsibility over a single part of the functionality provided by the software, and that responsibility should be entirely encapsulated by the class. All its services should be narrowly aligned with that responsibility. Robert C. Martin expresses the principle as -A class should have only one reason to change.',
   user_id:           1
)
Snippet.create(
   snippet_category: 'Web',
   snippet_name:     'Representational State Transfer-REST',
   snippet_text:     'Representational State Transfer (REST) is an architectural style that defines a set of constraints to be used for creating web services. Web services that conform to the REST architectural style, or RESTful web services, provide interoperability between computer systems on the Internet. REST-compliant web services allow the requesting systems to access and manipulate textual representations of web resources by using a uniform and predefined set of stateless operations.',
   user_id:           2
)
Snippet.create(
  snippet_category: 'Embedding Ruby',
  snippet_name:     'Embedding Ruby',
  snippet_text:     'ERB and other templating engines allow us to modify the content and structure of our HTML code. With ERB, we do this using two different types of tags: the substitution tag (<%=) and the scripting tag (<%).',
  user_id:           3
)

Snippet.create(
  snippet_category: 'Rake',
  snippet_name:     'What is Rake?',
  snippet_text:     'Rake is a tool that is available to us in Ruby that allows us to automate certain jobs––anything from execute SQL to puts-ing out a friendly message to the terminal.',
  user_id:           1
)
Snippet.create(
  snippet_category: 'Sessions',
  snippet_name:     'What is a Session?',
  snippet_text:     'A session is an object, like a hash, that stores data describing a clients interactions with a website at a given point in time. The session hash lives on the server. Your application can access it via any of your controllers at any point in time.',
  user_id:           2
)
Snippet.create(
  snippet_category: 'Sinatra',
  snippet_name:     'What is Sinatra?',
  snippet_text:     'Sinatra is what is known as a Domain Specific Language, or DSL. A DSL is a specialized, situation-specific language. Sinatra was built expressly for the purpose of creating web applications with Ruby.',
  user_id:           3
)
Snippet.create(
  snippet_category: 'Code-Snippet',
  snippet_name:     'def current_user?',
  snippet_text:     '@current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  Finds the user by session user_id which was set during login.  It assigns it to instance variable @current_user, if it not assigned yet.
  ',
  user_id:           4
)
Snippet.create(
  snippet_category: 'Code-Snippet',
  snippet_name:     'def logged_in?',
  snippet_text:     '!!current_user - is Booleanizing the current_user method, so that this method can return true if user is logged in or false if not.',
  user_id:           4
)
Snippet.create(
  snippet_category: 'Sinatra - BCrypt',
  snippet_name:     'What is BCrypt?',
  snippet_text:     'An open-source gem that works to encrypt passwords. BCrypt will store a salted, hashed version of user password in the database in a column called password_digest. It works with ActiveRecord has_secure_password method that is defined in the User model. This will validate the password match using the authenticate method.',
  user_id:           4
)
Snippet.create(
  snippet_category: 'Active Record',
  snippet_name:     'Shovel',
  snippet_text:     'NOTE: When using the shovel operator, Active Record instantly fires update SQL without waiting for the save or update call on the parent object, unless the parent object is a new record.',
  user_id:           4
)
Snippet.create(
  snippet_category: 'MVC Paradigm',
  snippet_name:     'What is the Model-View-Controller paradigm?',
  snippet_text:     'The Model-View-Controller paradigm is a popular way of building frameworks for web applications - it provides a separation of concerns where groups of files have specific jobs and interact with each other in very defined ways. In a nutshell:

* Models: The logic of a web application. This is where data is manipulated and/or saved.
* Views: The front-end, user-facing part of a web application - this is the only part of the app that the user interacts with directly. Views generally consist of HTML, CSS, and Javascript.
* Controllers: The go-between for models and views. The controller relays data from the browser to the application, and from the application to the browser.

In Sinatra, controllers are written in Ruby and consist of routes that take requests sent from the browser ("GET this data", "POST that data"), run code based on those requests by using models, and then render the .erb (view) files for the user to see.',
  user_id:           4
)
Snippet.create(
  snippet_category: 'Active Record ORM',
  snippet_name:     'What is Active Record ORM?',
  snippet_text:     'Active Record is a Ruby gem, meaning we get an entire library of code just by running gem install activerecord or by including it in our Gemfile. As a result, we can get an enormous amount of functionality simply by following a few conventions.',
  user_id:           1
)
# My References
#http://www.xyzpub.com/en/ruby-on-rails/3.2/seed_rb.html
#https://stackoverflow.com/
#questions/31026248/encrypt-users-password-in-seed-file
