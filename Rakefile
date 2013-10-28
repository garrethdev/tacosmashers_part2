require 'sinatra/activerecord/rake'
require 'sinatra'
require './app/app'

namespace :db do
  desc "create the postgres database"
  task :create do
    `createdb elephant_db`
  end

  desc "drop the postgres database"
  task :drop do
    `dropdb elephant_db`
  end
end
