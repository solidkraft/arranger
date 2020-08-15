source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.1"

gem "bootsnap", ">= 1.4.2", require: false
gem "jsonapi-serializer", "~> 2.0.0"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "rack-cors", "~> 1.1.1"
gem "rails", "~> 6.0.3", ">= 6.0.3.2"

group :development, :test do
  gem "byebug", platforms: :mri
  gem "rspec-rails", "~> 4.0.1"
end

group :development do
  gem "listen", "~> 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end
