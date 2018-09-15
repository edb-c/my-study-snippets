require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

# Using PATCH, PUT and DELETE
#requests with Rack::MethodOverride Middleware
#The MethodOverride middleware will intercept
#every request sent and received by our application.
#If it finds a request with name="_method",
#it will set the request type based
#on what is set in the value attribute
use Rack::MethodOverride

# Run the ApplicationController
run ApplicationController

# Use the following controllers
use UserController
#use CategoryController
use SnippetController
