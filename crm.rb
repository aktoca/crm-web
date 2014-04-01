require 'sinatra'

@contacts = []

get "/" do
  @crm_app_name = "the new CRM"
  erb :index
end 
