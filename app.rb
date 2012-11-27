require 'sinatra'

get "/", :provides => "html" do
  haml :home
end
