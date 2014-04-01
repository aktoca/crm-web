require 'sinatra'

@contacts = []

get "/" do
  @crm_app_name = "the new CRM"
  erb :index
end 

get "/contacts" do
  "here are your contacts (hard code)"
end
