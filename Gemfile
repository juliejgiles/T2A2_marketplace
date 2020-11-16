source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.0.rc1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

######CUSTOM GEMS #######
#adds cancan gem for additional security and to create roles for admin, buyer, seller - https://github.com/ryanb/cancan
gem 'cancan'

#adds simple form gem - https://github.com/heartcombo/simple_form 
gem 'simple_form'

#adds devise gem - https://github.com/heartcombo/devise 
gem 'devise'

#adds the SassC gem - https://github.com/sass/sassc-ruby#readme
gem 'sassc'

#adds the better errors gem - https://github.com/BetterErrors/better_errors 
group :development do
  gem "better_errors"
  gem "binding_of_caller"
end

#adds the Bulma gem to provide a CSS framework based on Flexbos - https://github.com/joshuajansen/bulma-rails 
gem "bulma-rails", "~> 0.9.0"

#adds the Carrierwave gem which lets users (sellers) upload images to the app easily - https://github.com/carrierwaveuploader/carrierwave
gem 'carrierwave', '~> 2.0'

#adds the MiniMagick gem which lets users transform images that they're uploading - https://github.com/minimagick/minimagick
gem "mini_magick"

#adds font-awesome, which is used for the heart icons on each sticker 
gem 'font-awesome-sass', '~> 5.15.1'

#adds the Coffeescript gem for compiling javascript 
gem 'coffee-script-source'