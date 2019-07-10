class Person
  attr_accessor :name

  def self.to_proc
    Proc.new { |person| person.name }
  end
end

o = Person.new
o.name = 'Omar'

l = Person.new
l.name = 'Laura'

# now, any method that takes a block could use &Person
p [o,l].map(&Person)

# Using Symbol#to_proc for conciseness

p %w{ david black }.map(&:capitalize)

# The symbol :capitalize is interpreted as a message to be sent to each element of the
# array in turn. The previous code is thus equivalent to:

p %w{ david black }.map{ |s| s.capitalize }