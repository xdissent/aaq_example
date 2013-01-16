# -*- coding: utf-8 -*-
source :rubygems

gem "rails", "2.3.15"

group :test do
  gem 'shoulda', '~> 2.10.3'
  # Shoulda doesn't work nice on 1.9.3 and seems to need test-unit explicitely…
  gem 'test-unit', :platforms => [:mri_19]
  gem 'edavis10-object_daddy', :require => 'object_daddy'
  gem 'mocha', '0.12.1'
  # capybara 2 drops ruby 1.8.7 compatibility
  gem 'capybara', '< 2.0.0'
  gem 'pry'
end

group :sqlite do
  gem "sqlite3"
end

# Load a "local" Gemfile
gemfile_local = File.join(File.dirname(__FILE__), "Gemfile.local")
if File.readable?(gemfile_local)
  puts "Loading #{gemfile_local} ..." if $DEBUG
  instance_eval(File.read(gemfile_local))
end

# Load plugins' Gemfiles
["plugins", "chiliproject_plugins"].each do |plugin_path|
  Dir.glob File.expand_path("../vendor/#{plugin_path}/*/Gemfile", __FILE__) do |file|
    puts "Loading #{file} ..." if $DEBUG # `ruby -d` or `bundle -v`
    instance_eval File.read(file)
  end
end
