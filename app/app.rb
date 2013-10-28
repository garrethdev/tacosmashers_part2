class SinatraApp < Sinatra::Base
  require 'sinatra'

  get '/' do
    "Hello World!"
  end
end