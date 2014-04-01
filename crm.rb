require 'sinatra'

@contacts = []

get "/" do
  @crm_app_name = "the new CRM"
  erb :index
end 

get "/contacts" do
  "here are your contacts (hard code)"
end

get "/contacts/new" do
  "Make a contact"
end

get "/contacts/edit" do
  "Modify existing contact"
end

get "/contacts/view" do
  "View one contact"
end

get "/contacts/attribute" do
  "View all contacts by one attribute"
end

git "/contacts/delete" do
  "Delete a contact"
end

git "/exit" do
  "Do I even need this?"
end

