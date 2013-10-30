require 'sinatra'
require 'active_record'
require_relative './app/models/member'
require_relative './app/models/post'


ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'time_fuck')

get '/' do
  "Welcome to Time Fuck!"
end
