require_relative 'contact'
require_relative 'rolodex'
require 'sinatra'

@contacts = []
@@rolodex = Rolodex.new

get "/" do
  @crm_app_name = "The new sad CRM"
  erb :index
end 

get "/contacts" do
  erb :contacts
end

get "/contacts/new" do
  erb :new_contact
end


get "/contacts/:id/edit" do
  "Modify existing contact"
end

get "/contacts/:id/view" do
  "View one contact"
end

get "/contacts/attribute" do
  "View all contacts by one attribute"
end

get "/contacts/:id/delete" do
  erb :delete
end



get "/exit" do
  "Do I even need this?"
end

post '/contacts' do
  new_contact = [params[:first_name],params[:last_name],params[:email],params[:notes]]
  @@rolodex.add_contact(new_contact)
  redirect to('/contacts')
end

delete '/contacts/:id' do
  info_type = '0'
  who = params[:id]
  @@rolodex.delete_contact(info_type, who) 
  redirect to('/contacts')
end
