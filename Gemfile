source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }


ruby '3.0.2'

gem 'sass-rails'
gem 'rails', '~> 6.1.4'
gem 'dotenv-rails'
gem 'enumerize'
gem 'seed-fu', '~> 2.3'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'webpacker', '~> 5.0'
gem 'active_interaction', '~> 4.0'
gem 'active_model_serializers'
gem 'bcrypt', '~> 3.1.7'

# DB

group :mysql do
end

group :doc do
  gem 'yard'
end

group :development do
  gem 'annotate'
  gem 'bullet'
  gem 'listen', '~> 3.3'
  gem 'rails-erd'
  gem 'web-console', '>= 4.1.0'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'kaminari'
  gem 'jquery-rails', '~>4.4.0'
  gem 'devise-i18n'
  gem 'rails-i18n', '~> 6.0'
  # static code analysis
  gem 'brakeman'
  gem 'rubocop', '~> 0.74', require: false
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'devise'

end

group :test do
  gem 'database_rewinder'
  gem 'faker'
  gem 'fuubar'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'spring-commands-rspec'
  gem 'timecop'
end

group :development, :test do
  gem 'awesome_print'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
  gem 'spring'
  gem 'spring-watcher-listen'

  # pry
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'pry-stack_explorer'
end

group :production, :staging do
  gem 'puma'
  gem 'unicorn', '6.0.0'
end
