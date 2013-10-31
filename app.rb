require 'sinatra'
require 'active_record'
require_relative './app/models/member'
require_relative './app/models/post'
require  'bcrypt'


ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'time_fuck')

get '/' do
  redirect '/users/new'
end

get '/users/new' do
  erb :sign_in
end

post '/users' do
  m = Member.new
  m.username = params[:user]
  m.password=(params[:password])
  m.save!
end