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