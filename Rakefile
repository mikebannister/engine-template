#!/usr/bin/env rake

begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require File.expand_path('../test/dummy/config/application', __FILE__)

Dummy::Application.load_tasks

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "MODULENAME"
  gem.summary = %Q{Project summary}
  gem.description = %Q{Project description}
  gem.email = "mike@webpossibilities.net"
  gem.homepage = "http://github.com/mikebannister/MODULENAME"
  gem.authors = ["Mike Bannister"]
end

require 'rake/rdoctask'

Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'MODULENAME'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

APP_RAKEFILE = File.expand_path("../test/dummy/Rakefile", __FILE__)

require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

require 'rspec/core'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec
