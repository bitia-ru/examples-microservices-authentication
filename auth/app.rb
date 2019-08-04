require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'sinatra'
end

set :port, 80
set :bind, '0.0.0.0'
set :run, true

get '/auth' do
  puts JSON.dump(request.body)
  puts JSON.dump(request.env)

  if request.env['HTTP_X_ORIGINAL_URI'] == '/'
    headers['X_USER'] = 'fooo'
    status 200
  elsif request.env['HTTP_X_ORIGINAL_URI'] == '/forbidden_content'
    status 403
  else
    status 401
  end
end

