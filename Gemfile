# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.6.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'coffee-rails'
gem 'graphql'
gem 'postgresql'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.2.0'
gem 'sass-rails'
gem 'uglifier'
gem 'bcrypt', '~> 3.1.7' # Encrypt password
gem 'dotenv-rails'
gem 'graphql-autotest'
gem 'jwt' # JWT Token authentication
gem 'pundit' # Authorization
gem 'rack-cors'
gem 'ransack'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
end

group :development do
  gem 'graphiql-rails'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
