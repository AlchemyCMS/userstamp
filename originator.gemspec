# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "originator"
  s.version = File.read(File.join(File.dirname(__FILE__), "VERSION")).strip

  s.authors = ["DeLynn Berry", "Thomas von Deyen"]
  s.homepage = "https://github.com/AlchemyCMS/originator"
  s.email = ["thomas@vondeyen.com"]
  s.summary = "Adds originator attributes to your ActiveRecord models."
  s.description = "This gem extends ActiveRecord::Base to add automatic updating of created_by and updated_by attributes of your models in much the same way that the ActiveRecord::Timestamp module updates created_(at/on) and updated_(at/on) attributes."
  s.licenses = ["MIT"]
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=

  s.extra_rdoc_files = [
    "LICENSE",
  ]
  s.files = [
    "CHANGELOG",
    "Gemfile",
    "LICENSE",
    "Rakefile",
    "Readme.rdoc",
    "VERSION",
    "lib/migration_helper.rb",
    "lib/stampable.rb",
    "lib/stamper.rb",
    "lib/userstamp.rb",
    "originator.gemspec",
    "test/compatibility_stamping_test.rb",
    "test/controllers/posts_controller.rb",
    "test/controllers/users_controller.rb",
    "test/controllers/userstamp_controller.rb",
    "test/helper.rb",
    "test/models/comment.rb",
    "test/models/foo.rb",
    "test/models/person.rb",
    "test/models/post.rb",
    "test/models/user.rb",
    "test/schema.rb",
    "test/stamping_test.rb",
    "test/userstamp_controller_test.rb",
    "test/userstamp_test.rb",
  ]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"

  s.add_runtime_dependency "actionpack", ">= 4.0"
  s.add_runtime_dependency "activerecord", ">= 4.0"
  s.add_runtime_dependency "activesupport", ">= 4.0"

  if s.respond_to? :specification_version
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new("1.2.0")
    else
    end
  else
  end
end
