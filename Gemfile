source 'https://rubygems.org'
# ruby '2.0.0'
gem 'rails', '4.2.0'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring', '= 1.3.6'
  gem 'rspec-rails', '~> 3.0'
  gem 'faker'
  gem 'factory_girl_rails'
end

group :test do
  gem 'capybara'
  gem 'guard-rspec'
  gem 'launchy'
  gem 'shoulda-matchers'
end

#Defaults
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'

#Added
gem 'devise'
gem 'pundit'
gem 'rack-cors', :require=>'rack/cors'
gem 'simple_form'
gem 'has_secure_token'
gem 'active_model_serializers'
gem 'public_activity'

group :doc do
  gem 'sdoc', '~> 0.4.0', group: :doc
end
