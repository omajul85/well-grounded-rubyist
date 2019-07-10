class Person
  attr_accessor :first_name, :middle_name, :last_name
  def full_name
    [first_name, middle_name, last_name].compact.join(" ")
  end
end

david = Person.new
puts "David's full name after initialization: #{david.full_name}"
david.first_name = "David"
puts "David's full name: #{david.full_name}"
david.middle_name = "Julien"
puts "David's full name: #{david.full_name}"
david.last_name = "Gomez"
puts "David's full name: #{david.full_name}"
