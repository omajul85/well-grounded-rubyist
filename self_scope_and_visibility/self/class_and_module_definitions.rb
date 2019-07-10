class C
  puts "Just started class C"
  puts self

  module M
    puts "Nested module C::M"
    puts self
  end

  puts "Back in the outer level of C"
  puts self
end

puts
puts "-------------------"
puts

# self in instance-method definitions
class D
  def x
    puts "Class D, method x"
    puts self
  end
end
d = D.new
d.x
puts "That was a call to x by #{d}"

puts
puts "-------------------"
puts

# self in singleton-method and class-method definitions
obj = Object.new
def obj.show_me
  puts "Inside singleton method show_me of #{self}"
end
obj.show_me
puts "Back from call to show_me by #{obj}"


puts
puts "-------------------"
puts

# self and inheritance
class A
  def self.x
    puts "Class method of class A"
    puts "self: #{self}"
  end
end

class B < A
end
B.x
