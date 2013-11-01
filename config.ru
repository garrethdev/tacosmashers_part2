require './app.rb'
run Sinatra::Application
set :session_secret, "My session secret"
