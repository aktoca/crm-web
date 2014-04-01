require_relative 'contact'
require_relative 'rolodex'
require 'sinatra'

@@rolodex = Rolodex.new
@contacts = []

get "/" do
  @crm_app_name = "the new CRM"
  erb :index
end 

get "/contacts" do

end

get "/contacts/new" do
  erb :new_contact
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

get "/contacts/delete" do
  "Delete a contact"
end

get "/exit" do
  "Do I even need this?"
end

post '/contacts' do
  puts params
end