# map always returns an array
ary = [1,2,3,4,5]
squares = ary.map{ |e| e * e }

p squares

puts
puts "An using callable object, numbers.map(&:upcase)"
numbers = %w{one two three four five}
p numbers.map(&:upcase)