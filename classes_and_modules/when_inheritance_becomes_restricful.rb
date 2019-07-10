class Person < Struct.new(:first_name, :last_name)
  include Comparable

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  attr_reader :first_name, :last_name

  def <=>(other)
    [last_name, first_name] <=> [other.last_name, other.first_name]
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

omar = Person.new('Omar', 'Alvarez')
laura = Person.new('Laura', 'Snowise')

puts "omar > laura: ", omar > laura
puts "omar == laura: ", omar == laura
puts "omar < laura: ", omar < laura
