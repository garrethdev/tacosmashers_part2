require 'sinatra/activerecord/rake'
require './app'

namespace :db do
  desc "create the postgres database"
  task :create do
    `createdb time_fuck`
  end

  desc "drop the postgres database"
  task :drop do
    `dropdb time_fuck`
  end
end

# desc 'Start IRB with application environment loaded'
# task "console" do
#   exec "irb -r./config/environment"
# end
