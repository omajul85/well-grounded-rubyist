require_relative './stacklike.rb'

class Stack
  include Stacklike
end

class Suitcase
end

class CargoHold
  include Stacklike
  def load_and_report(obj)
    puts "Loading object #{obj.object_id}"
    add_to_stack(obj)
  end
  def unload
    take_from_stack
  end
end

s = Stack.new
s.add_to_stack "item one"
s.add_to_stack "item two"
s.add_to_stack "item three"
puts "Objects currently on the stack:"
p s.stack
o = s.take_from_stack
puts "Object '#{o}' taken from stack. New stack: "
p s.stack

puts "---------"

ch = CargoHold.new
s1 = Suitcase.new
s2 = Suitcase.new
s3 = Suitcase.new

ch.load_and_report(s1)
ch.load_and_report(s2)
ch.load_and_report(s3)

first_unloaded = ch.unload
puts "The first suitcase off the plane is #{first_unloaded.object_id}"
