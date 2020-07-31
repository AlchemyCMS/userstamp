require 'rubygems'

$LOAD_PATH.unshift('lib')

# load normal stuff
require 'active_support'
require 'active_record'
require 'action_controller'
require 'originator'

# connect to db
ActiveRecord::Base.establish_connection({
  :adapter => "sqlite3",
  :database => ":memory:",
})
require_relative 'schema'

# load test framework
require 'test/unit'
require 'active_support/test_case'
require 'action_controller/test_case'
require 'rails/controller/testing/test_process'
require 'rails/controller/testing/integration'

# load test models/controllers
require_relative 'controllers/userstamp_controller'
require_relative 'controllers/users_controller'
require_relative 'controllers/posts_controller'
require_relative 'models/user'
require_relative 'models/person'
require_relative 'models/post'
require_relative 'models/foo'

def reset_to_defaults
  Ddb::Userstamp.compatibility_mode = false
  create_test_models
end

def create_test_models
  User.delete_all
  Person.delete_all
  Post.delete_all

  @zeus = User.create!(:name => 'Zeus')
  @hera = User.create!(:name => 'Hera')
  User.stamper = @zeus.id

  @delynn = Person.create!(:name => 'Delynn')
  @nicole = Person.create!(:name => 'Nicole')
  Person.stamper = @delynn.id

  @first_post = Post.create!(:title => 'a title')
end
