# require File.dirname(__FILE__) + "/lib/main"
# set :app_file, File.expand_path(File.dirname(__FILE__) + '/app.rb')
# set :public,   File.expand_path(File.dirname(__FILE__) + '/lib/public')
# set :views,    File.expand_path(File.dirname(__FILE__) + '/lib/views')
# set :env,      :production
# disable :run, :reload
# run Sinatra::Application

require 'bundler'
Bundler.setup :default
require 'sinatra/base'
require 'sprockets'
require './app'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path "app/assets/javascripts"
  environment.append_path "app/assets/stylesheets"
  run environment
end

map '/' do
  run Sinatra::Application
end
