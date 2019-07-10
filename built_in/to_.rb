class Person
  attr_accessor :name, :age, :email

  def to_str
    name
  end

  def to_ary
    [name, age, email]
  end
end

n = Person.new
n.name = "Lolo"
n.age = 21
n.email = "foo@bar.com"

puts "Hola " + n
array = []
array.concat(n)

p array
