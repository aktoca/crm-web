require 'sinatra'
require 'data_mapper'


DataMapper.setup(:default, "sqlite3:database.sqlite3")

class Contact
  include DataMapper::Resource

  property :id, Serial
  property :first_name, String
  property :last_name, String
  property :email, String
  property :notes, String
end

DataMapper.finalize
DataMapper.auto_upgrade!


get "/" do
  @crm_app_name = "The new sad CRM"
  erb :index
end 


get "/contacts" do
  @contacts = Contact.all
  erb :contacts
end

get "/contacts/new" do
  erb :new_contact
end

get "/contacts/:id/edit" do
  @contact = Contact.get(params[:id])
  erb :edit
end

get "/contacts/:id" do
  @contact = Contact.get(params[:id].to_i)
  if @contact
    erb :show
  else
    raise Sinatra::NotFound
  end
end

get "/contacts/attribute" do
  "View all contacts by one attribute"
end

get "/contacts/:id/delete" do
  @contacts = Contact.get(params[:id])
  erb :delete
end



get "/exit" do
  "Do I even need this?"
end

post "/contacts" do
  contact = Contact.create(
    :first_name => params[:first_name],
    :last_name => params[:last_name],
    :email => params[:email],
    :notes => params[:notes]
  )
  redirect to('/contacts')
end

put "/contacts/:id" do
  @contact = Contact.get(params[:id].to_i)
  if @contact
    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.email = params[:email]
    @contact.notes = params[:notes]

    @contact.save
    redirect to('/contacts')
  else
    raise Sinatra::NotFound
  end

end

delete '/contacts/:id' do
  @contact = Contact.get(:id)
  @contact.destroy
  redirect to('/contacts')
end
