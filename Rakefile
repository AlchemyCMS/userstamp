#!/usr/bin/env rake

require 'rake/testtask'

begin
  require 'rdoc/task'
rescue LoadError
  require 'rdoc/rdoc'
  require 'rake/rdoctask'
  RDoc::Task = Rake::RDocTask
end

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the userstamp plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the userstamp plugin.'
RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Userstamp'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('Readme.rdoc', 'CHANGELOG', 'LICENSE')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
