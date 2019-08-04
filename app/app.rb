require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'sinatra'
end

set :port, 80
set :bind, '0.0.0.0'
set :run, true

get '/' do
  content_type 'application/json'
  JSON.dump(request.env)
end

