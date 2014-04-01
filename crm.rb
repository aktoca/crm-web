require 'sinatra'

@contacts = []

get "/" do
  erb :index
end 
