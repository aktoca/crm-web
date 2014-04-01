require 'sinatra'

@contacts = []

get "/" do
  @crm_app_name = "the new CRM"
  erb :index
end 

get "/contacts" do
  "here are your contacts (hard code)"
end


get "/add_contact" do
  "Make a contact"
end

get "/modify_contact" do
  "Modify existing contact"
end

get "/one_contact" do
  "View one contact"
end
get "/contacts_by_attribute" do
get "/delete_contact" do
get "/exit" do
