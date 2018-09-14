require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

# Middleware for Rack
#use Rack::MethodOverride

# Run the ApplicationController
run ApplicationController

# Use the following controllers
use UserController
#use CategoryController
#use SnippetController
