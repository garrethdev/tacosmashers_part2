class SinatraApp < Sinatra::Base
  require 'sinatra'
  require 'active_record'

  ActiveRecord::Base.establish_connection(adapter: 'postgresql')

  get '/' do
    "Hello World!"
  end
end
