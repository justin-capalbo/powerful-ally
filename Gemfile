source 'https://rubygems.org'

gem 'bundler', '>= 1.8.4'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

#Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
#Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
#Use Puma as the app server
gem 'puma', '~> 3.7'
#Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
#Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
#Devise for auth
gem 'devise'
gem 'wdm', '>= 0.1.0' if Gem.win_platform?

#Front end sources
source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap', '3.3.5'
  gem 'rails-assets-jquery'
  gem 'rails-assets-jquery-ui', '1.11.4'
  gem 'rails-assets-themify-icons'
end

group :development, :test do
  #debugger
  gem 'pry'
  gem 'pry-byebug'
  #ruby style guide
  gem 'rubocop', require: false
  #required for hot reloading
  gem 'listen'
  #rspec
  gem 'rspec-rails'
  #database cleaner
  gem 'database_cleaner'
  #shoulda-matchers
  gem 'shoulda-matchers'
  #factorybot
  gem 'factory_bot_rails'
  #faker
  gem 'faker'
end

group :development do
  #web console on errors
  gem 'web-console'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
