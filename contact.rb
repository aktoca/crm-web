class Contact
  @@id_counter = 1000

  attr_accessor :first_name, :last_name, :email, :notes, :id

  def initialize(first_name, last_name, email, notes)
    @id = Contact.get_id
    @first_name = first_name
    @last_name = last_name
    @email = email
    @notes = notes
  end

  def to_s
    puts "ID: #{@id}\nName: #{@first_name} #{@last_name}\nEmail: #{email}\nNotes: #{@notes}"
  end

  def self.get_id
    @@id_counter += 1
    @@id_counter
  end

end