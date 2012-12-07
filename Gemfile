source 'https://rubygems.org'

gem 'rails', '3.2.8'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem "less-rails", ">= 2.2.6"
  gem "twitter-bootstrap-rails", "~> 2.1"
  gem "therubyracer", ">= 0.10.2", :platform => :ruby
end

gem 'jquery-rails'
gem "thin", ">= 1.5.0", :group => [:development, :test]
gem "mongoid", "~> 3.0.0"
gem "haml", ">= 3.1.7"
gem "formtastic"
gem 'formtastic-bootstrap'
gem 'bootstrap-datepicker-rails'
gem 'inherited_resources'

gem 'devise'
gem 'omniauth-openid'
gem 'omniauth-google-apps'

group :staging, :development do
  gem 'phrase'
end

group :development do
  gem "factory_girl_rails", ">= 4.1.0"
  gem "hub", ">= 1.10.2", :require => nil
  gem "haml-rails", ">= 0.3.5"
  gem "hpricot", ">= 0.8.6"
  gem "ruby_parser", ">= 3.0.1"
  gem "quiet_assets", ">= 1.0.1"
  gem "capybara", ">= 1.1.3"
  gem "minitest-spec-rails", ">= 3.0.7"
  gem "minitest-wscolor", ">= 0.0.3"
end
