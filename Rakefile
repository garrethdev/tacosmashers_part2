require 'sinatra/activerecord/rake'
require 'sinatra'
require './app/app'

namespace :db do
  desc "create a postgres database"
  task :create do
    `createdb elephant_db`
  end
end