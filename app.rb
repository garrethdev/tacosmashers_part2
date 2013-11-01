require 'sinatra'
require 'active_record'
require_relative './app/models/member'
require_relative './app/models/post'
require_relative './app/sessions.rb'
require  'bcrypt'

enable :sessions

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'time_fuck')

get '/' do
  redirect '/users/new'
end

get '/users/new' do
  erb :sign_up
end

post '/sessions' do
  authenticate_user
end

get '/sessions' do
 #how do we save the user session
end

get '/users' do
  erb :sign_in
end

post '/users' do
  add_users
end