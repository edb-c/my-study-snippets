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

# My References
#http://www.xyzpub.com/en/ruby-on-rails/3.2/seed_rb.html
#https://stackoverflow.com/
#questions/31026248/encrypt-users-password-in-seed-file
