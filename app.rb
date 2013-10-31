require 'sinatra'
require 'active_record'
require_relative './app/models/member'
require_relative './app/models/post'

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'time_fuck')

get '/' do
  erb :index
end

get '/member' do
  erb :member
end

post '/posts' do
  p params
  Post.create(params)
  redirect '/member/feed'
end

get '/member/feed' do
  @posts = Post.all
  erb :feed
end

post '/search' do
  p Member.find_by first_name: params[:search_entry]
  redirect '/member'
end

post '/new_member' do
  Member.create(params)
  redirect '/member/feed'
end
