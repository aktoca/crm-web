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
  erb :contacts
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
  new_contact = [params[:first_name],params[:last_name],params[:email],params[:notes]]
  @@rolodex.add_contact(new_contact)
  redirect to('/contacts')
end